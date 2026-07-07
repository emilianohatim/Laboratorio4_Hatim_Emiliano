/*********************************************************************************************************************
Copyright 2016-2026, Laboratorio de Microprocesadores
Facultad de Ciencias Exactas y Tecnologia
Universidad Nacional de Tucuman
http://www.microprocesadores.unt.edu.ar/

Copyright 2016-2026, Emiliano Hatim <emilianohatim01@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

SPDX-License-Identifier: MIT
*************************************************************************************************/

/** \brief EDU-CIAA-NXP board sample application
 **
 ** \addtogroup samples Samples
 ** \brief Samples applications with MUJU Framwork
 ** @{ */

/* === Headers files inclusions =============================================================== */

#ifndef EDU_CIAA_NXP
#error "This program can only be compiled for the EDU-CIAA-NXP board"
#endif

#include "bsp.h"
#include "reloj.h"
#include <stdio.h>
#include <stdbool.h>

/* === Macros definitions ====================================================================== */

#define TICK_RATE_HZ 1000 /**< frecuencia del systick */
#define TICKS_3_SEG  3000
#define TICKS_30_SEG 30000

/* === Private data type declarations ========================================================== */

typedef enum {
    RELOJ_SIN_CONFIGURAR,     /**< Parpadea esperando el ajuste */
    MOSTRANDO_HORA,           /**< Muestra la hora y el segundo digito parpadea */
    AJUSTANDO_MINUTOS_RELOJ,  /**< F1 presionado, parpadean minutos */
    AJUSTANDO_HORAS_RELOJ,    /**< parpadean horas */
    AJUSTANDO_MINUTOS_ALARMA, /**< F2 presionado, puntos encendidos de todos los digitos */
    AJUSTANDO_HORAS_ALARMA,   /**< parpadean horas */
    ALARMA_SONANDO            /**< Suena el buzzer esperando aceptar o cancelar */
} modo_reloj_t;

/* === Private variable declarations =========================================================== */

/* === Private function declarations =========================================================== */

/* === Public variable definitions ============================================================= */

board_t placa;
clock_t reloj;
modo_reloj_t modo_actual = RELOJ_SIN_CONFIGURAR;

uint32_t contador_inactividad = 0; /**< Descarta cambios a los 30 seg */
uint32_t contador_tecla_f1 = 0;    /**< Mide 3 seg de la tecla f1 presionada */
uint32_t contador_tecla_f2 = 0;    /**< MIde 3 seg de la tecla f2 presionada */
uint32_t divisor_segundos = 0;     /**< */
int frecuencia = 500;

hora_t hora_temporal = {0, 0, 0, 0, 0, 0};

/* === Private variable definitions ============================================================ */

/* === Private function implementation ========================================================= */

void SysTick_Handler(void) {
    DisplayRefresh(placa->display);

    ClockNewTick(reloj);

    divisor_segundos++;
    if (divisor_segundos >= (TICK_RATE_HZ / 2)) {
        divisor_segundos = 0;
        if (modo_actual == MOSTRANDO_HORA) {
            DisplayToggleDots(placa->display, 1, 1);
        }
    }

    if (DigitalInputGetState(placa->f1)) {
        contador_tecla_f1++;
    } else {
        contador_tecla_f1 = 0;
    }

    if (DigitalInputGetState(placa->f2)) {
        contador_tecla_f2++;
    } else {
        contador_tecla_f2 = 0;
    }
    contador_inactividad++;
}

void ManejadorAlarma(bool estado) {
    if (estado) {
        modo_actual = ALARMA_SONANDO;
        DigitalOutputActivate(placa->buzzer);
    } else {
        DigitalOutputDeactivate(placa->buzzer);
    }
}

void IncrementarMinutos(hora_t hora) {
    hora[3]++;
    if (hora[3] > 9) {
        hora[2]++;
        hora[3] = 0;
        if (hora[2] > 5) {
            hora[2] = 0;
        }
    }
}

void DecrementarMinutos(hora_t hora) {
    if (hora[3] == 0) {
        hora[3] = 9;
        if (hora[2] == 0) {
            hora[2] = 5;
        } else {
            hora[2]--;
        }
    } else {
        hora[3]--;
    }
}

void IncrementarHoras(hora_t hora) {
    hora[1]++;
    if (hora[0] == 2 && hora[1] > 3) {
        hora[0] = 0;
        hora[1] = 0;
    } else if (hora[1] > 9) {
        hora[1] = 0;
        hora[0]++;
    }
}

void DecrementarHoras(hora_t hora) {
    if (hora[1] == 0) {
        if (hora[0] == 0) {
            hora[0] = 2;
            hora[1] = 3;
        } else {
            hora[1] = 9;
            hora[0]--;
        }
    } else {
        hora[1]--;
    }
}

/* === Public function implementation ========================================================== */

int main(void) {

    placa = BoardCreate();

    reloj = ClockCreate(TICK_RATE_HZ, ManejadorAlarma);

    BoardSysTickInit(TICK_RATE_HZ);
    hora_t hora_mostrar;
    uint8_t digitos_display[4] = {0, 0, 0, 0};

    DisplayWriteBCD(placa->display, digitos_display, sizeof(digitos_display));
    DisplayFlashDigits(placa->display, 0, 3, 250);

    while (1) {
        // Gestion inicial de la pantalla
        if (modo_actual == MOSTRANDO_HORA) {
            if (ClockGetCurrentTime(reloj, hora_mostrar)) {
                digitos_display[0] = hora_mostrar[0];
                digitos_display[1] = hora_mostrar[1];
                digitos_display[2] = hora_mostrar[2];
                digitos_display[3] = hora_mostrar[3];
                DisplayWriteBCD(placa->display, digitos_display, sizeof(digitos_display));
            }
        } else if (modo_actual == AJUSTANDO_MINUTOS_RELOJ || modo_actual == AJUSTANDO_HORAS_RELOJ) {
            digitos_display[0] = hora_temporal[0];
            digitos_display[1] = hora_temporal[1];
            digitos_display[2] = hora_temporal[2];
            digitos_display[3] = hora_temporal[3];
            DisplayWriteBCD(placa->display, digitos_display, sizeof(digitos_display));
        }
        // Maquina de estados finitos
        switch (modo_actual) {
        case RELOJ_SIN_CONFIGURAR: {
            if (contador_tecla_f1 >= TICKS_3_SEG) {
                modo_actual = AJUSTANDO_MINUTOS_RELOJ;
                contador_tecla_f1 = 0;
                contador_inactividad = 0;
                ClockGetCurrentTime(reloj, hora_temporal);
                DisplayFlashDigits(placa->display, 2, 3, frecuencia);
            }
            break;
        }
        case MOSTRANDO_HORA: {
            if (contador_tecla_f1 >= TICKS_3_SEG) {
                modo_actual = AJUSTANDO_MINUTOS_RELOJ;
                contador_tecla_f1 = 0;
                contador_inactividad = 0;
                ClockGetCurrentTime(reloj, hora_temporal);
                DisplayFlashDigits(placa->display, 2, 3, frecuencia);
            }
            break;
        }
        case AJUSTANDO_MINUTOS_RELOJ: {
            if (DigitalInputHasActivated(placa->f4)) {
                IncrementarMinutos(hora_temporal);
                contador_inactividad = 0;
            }
            if (DigitalInputHasActivated(placa->f3)) {
                DecrementarMinutos(hora_temporal);
                contador_inactividad = 0;
            }
            if (DigitalInputHasActivated(placa->aceptar)) {
                modo_actual = AJUSTANDO_HORAS_RELOJ;
                contador_inactividad = 0;
                DisplayFlashDigits(placa->display, 0, 1, frecuencia);
            }
            if (contador_inactividad >= TICKS_30_SEG || DigitalInputHasActivated(placa->cancelar)) {
                DisplayFlashDigits(placa->display, 0, 0, 0);
                if (ClockGetCurrentTime(reloj, hora_mostrar)) {
                    modo_actual = MOSTRANDO_HORA;
                } else {
                    modo_actual = RELOJ_SIN_CONFIGURAR;
                    DisplayFlashDigits(placa->display, 0, 3, frecuencia);
                }
            }
            break;
        }
        case AJUSTANDO_HORAS_RELOJ: {
            if (DigitalInputHasActivated(placa->f4)) {
                IncrementarHoras(hora_temporal);
                contador_inactividad = 0;
            }
            if (DigitalInputHasActivated(placa->f3)) {
                DecrementarHoras(hora_temporal);
                contador_inactividad = 0;
            }
            if (DigitalInputHasActivated(placa->aceptar)) {
                ClockGetCurrentTime(reloj, hora_temporal);
                modo_actual = MOSTRANDO_HORA;
                DisplayFlashDigits(placa->display, 0, 0, 0);
            }
            if (contador_inactividad >= TICKS_30_SEG || DigitalInputHasActivated(placa->cancelar)) {
                DisplayFlashDigits(placa->display, 0, 0, 0);
                if (ClockGetCurrentTime(reloj, hora_mostrar)) {
                    modo_actual = MOSTRANDO_HORA;
                } else {
                    modo_actual = RELOJ_SIN_CONFIGURAR;
                    DisplayFlashDigits(placa->display, 0, 3, frecuencia);
                }
            }
            break;
        }
        case AJUSTANDO_MINUTOS_ALARMA: {
            break;
        }
        case AJUSTANDO_HORAS_ALARMA: {
            break;
        }
        case ALARMA_SONANDO: {
            break;
        }
        }
    }
    return 0;
}

/* === End of documentation ==================================================================== */
