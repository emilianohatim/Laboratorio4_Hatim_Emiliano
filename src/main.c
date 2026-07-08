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
#include <string.h>

/* === Macros definitions ====================================================================== */

#define TICK_RATE_HZ    1000 /**< frecuencia del systick */
#define TIEMPO_F1_LARGO 3000
#define TIEMPO_F2_LARGO 3000
#define TIEMPO_TIMEOUT  30000

/* === Private data type declarations ========================================================== */

typedef enum {
    RELOJ_SIN_CONFIGURAR,     /**< Parpadea esperando el ajuste */
    MOSTRANDO_HORA,           /**< Muestra la hora y el segundo digito parpadea */
    AJUSTANDO_MINUTOS_RELOJ,  /**< F1 presionado, parpadean minutos */
    AJUSTANDO_HORAS_RELOJ,    /**< parpadean horas */
    AJUSTANDO_MINUTOS_ALARMA, /**< F2 presionado, puntos encendidos de todos los digitos */
    AJUSTANDO_HORAS_ALARMA,   /**< parpadean horas */
    ALARMA                    /**< Suena el buzzer esperando aceptar o cancelar */
} estado_t;

typedef enum { NINGUNO, F1_LARGA, F2_LARGA, F3, F4, ACEPTAR, CANCELAR } evento_t;

/* === Private variable declarations =========================================================== */

/* === Private function declarations =========================================================== */

void ActualizarDisplay(void);

void ActualizarFSM(void);

void MostrarHora(void);

void EstadoSinConfigurar(void);

void EstadoMostrarHora(void);

void EstadoAjustarMinutos(void);

void EstadoAjustarHoras(void);

void EstadoAjustarMinutosAlarma(void);

void EstadoAjustarHorasAlarma(void);

void EstadoAlarma(void);

void CambiarEstado(estado_t nuevo_estado);

evento_t ObtenerEvento(void);

void CopiarHoraActual(void);

void IncrementarMinutos(hora_t hora);

void DecrementarMinutos(hora_t hora);

void IncrementarHoras(hora_t hora);

void DecrementarHoras(hora_t hora);

void ManejadorAlarma(bool estado);

void SetPunto(uint8_t digito, bool encendido);

/* === Public variable definitions ============================================================= */

board_t placa;
clock_t reloj;
estado_t estado_actual = RELOJ_SIN_CONFIGURAR;
evento_t evento_actual = NINGUNO;

uint32_t contador_f1 = 0;
uint32_t contador_f2 = 0;
uint32_t contador_inactividad = 0;
uint16_t contador_parpadeo = 0;
uint8_t display[4];

bool estado_puntos[4] = {false, false, false, false};
bool alarma_cancelada = false;
bool alarma_sonando = false;

hora_t hora_actual;
hora_t hora_temporal = {0, 0, 0, 0, 0, 0};
hora_t hora_alarma;

/* === Private variable definitions ============================================================ */

/* === Private function implementation ========================================================= */

void SysTick_Handler(void) {
    DisplayRefresh(placa->display);
    ClockNewTick(reloj);

    if (DigitalInputGetState(placa->f1)) {
        if (contador_f1 < TIEMPO_F1_LARGO) {
            contador_f1++;
        }
        if (contador_f1 == TIEMPO_F1_LARGO) {
            evento_actual = F1_LARGA;
            contador_f1++;
        }
    } else {
        contador_f1 = 0;
    }

    if (DigitalInputGetState(placa->f2)) {
        if (contador_f2 < TIEMPO_F2_LARGO) {
            contador_f2++;
        }
        if (contador_f2 == TIEMPO_F2_LARGO) {
            evento_actual = F2_LARGA;
            contador_f2++;
        }
    } else {
        contador_f2 = 0;
    }

    contador_parpadeo++;
    if (contador_parpadeo >= 500) {
        contador_parpadeo = 0;
        if (estado_actual == MOSTRANDO_HORA) {
            SetPunto(1, !estado_puntos[1]);
        }
    }

    contador_inactividad++;
}

void ActualizarDisplay(void) {
    switch (estado_actual) {
    case RELOJ_SIN_CONFIGURAR: {
        display[0] = 0;
        display[1] = 0;
        display[2] = 0;
        display[3] = 0;
        DisplayWriteBCD(placa->display, display, sizeof(display));
        break;
    }
    case MOSTRANDO_HORA: {
        MostrarHora();
        break;
    }
    case AJUSTANDO_MINUTOS_RELOJ:
    case AJUSTANDO_HORAS_RELOJ:
    case AJUSTANDO_MINUTOS_ALARMA:
    case AJUSTANDO_HORAS_ALARMA: {
        display[0] = hora_temporal[0];
        display[1] = hora_temporal[1];
        display[2] = hora_temporal[2];
        display[3] = hora_temporal[3];
        DisplayWriteBCD(placa->display, display, sizeof(display));
        break;
    }
    default: {
        break;
    }
    }
}

void ActualizarFSM(void) {
    switch (estado_actual) {
    case RELOJ_SIN_CONFIGURAR: {
        EstadoSinConfigurar();
        break;
    }
    case MOSTRANDO_HORA: {
        EstadoMostrarHora();
        break;
    }
    case AJUSTANDO_MINUTOS_RELOJ: {
        EstadoAjustarMinutos();
        break;
    }
    case AJUSTANDO_HORAS_RELOJ: {
        EstadoAjustarHoras();
        break;
    }
    case AJUSTANDO_MINUTOS_ALARMA: {
        EstadoAjustarMinutosAlarma();
        break;
    }
    case AJUSTANDO_HORAS_ALARMA: {
        EstadoAjustarHorasAlarma();
        break;
    }
    case ALARMA: {
        EstadoAlarma();
        break;
    }
    default: {
        break;
    }
    }
}

void MostrarHora(void) {
    if (ClockGetCurrentTime(reloj, hora_actual)) {
        display[0] = hora_actual[0];
        display[1] = hora_actual[1];
        display[2] = hora_actual[2];
        display[3] = hora_actual[3];
        DisplayWriteBCD(placa->display, display, sizeof(display));
    }
    if (hora_actual[0] == 0 && hora_actual[1] == 0 && hora_actual[2] == 0 && hora_actual[3] == 0 &&
        hora_actual[4] == 0 && hora_actual[5] == 0) {
        alarma_cancelada = false;
    }
}

void EstadoSinConfigurar(void) {
    if (ObtenerEvento() == F1_LARGA) {
        memset(hora_temporal, 0, sizeof(hora_temporal));
        CambiarEstado(AJUSTANDO_MINUTOS_RELOJ);
    }
}

void EstadoMostrarHora(void) {
    if (alarma_sonando) {
        alarma_sonando = false;
        CambiarEstado(ALARMA);
        return;
    }
    switch (ObtenerEvento()) {
    case F1_LARGA: {
        CopiarHoraActual();
        CambiarEstado(AJUSTANDO_MINUTOS_RELOJ);
        break;
    }
    case F2_LARGA: {
        ClockGetAlarm(reloj, hora_temporal);
        CambiarEstado(AJUSTANDO_MINUTOS_ALARMA);
        break;
    }
    case ACEPTAR: {
        if (!ClockGetAlarmEnabled(reloj)) {
            ClockToggleAlarm(reloj);
        }
        SetPunto(3, true);
        break;
    }
    case CANCELAR: {
        if (ClockGetAlarmEnabled(reloj)) {
            ClockToggleAlarm(reloj);
        }
        SetPunto(3, false);
        break;
    }
    default: {
        break;
    }
    }
}

void EstadoAjustarMinutos(void) {
    switch (ObtenerEvento()) {
    case F3: {
        DecrementarMinutos(hora_temporal);
        contador_inactividad = 0;
        break;
    }
    case F4: {
        IncrementarMinutos(hora_temporal);
        contador_inactividad = 0;
        break;
    }
    case ACEPTAR: {
        CambiarEstado(AJUSTANDO_HORAS_RELOJ);
        break;
    }
    case CANCELAR: {
        if (ClockGetCurrentTime(reloj, hora_actual)) {
            CambiarEstado(MOSTRANDO_HORA);
        } else {
            CambiarEstado(RELOJ_SIN_CONFIGURAR);
        }
        break;
    }
    default: {
        break;
    }
    }
    if (contador_inactividad >= TIEMPO_TIMEOUT) {
        if (ClockGetCurrentTime(reloj, hora_actual)) {
            CambiarEstado(MOSTRANDO_HORA);
        } else {
            CambiarEstado(RELOJ_SIN_CONFIGURAR);
        }
    }
}

void EstadoAjustarHoras(void) {
    switch (ObtenerEvento()) {
    case F3: {
        DecrementarHoras(hora_temporal);
        contador_inactividad = 0;
        break;
    }
    case F4: {
        IncrementarHoras(hora_temporal);
        contador_inactividad = 0;
        break;
    }
    case ACEPTAR: {
        ClockSetupCurrentTime(reloj, hora_temporal);
        CambiarEstado(MOSTRANDO_HORA);
        break;
    }
    case CANCELAR: {
        if (ClockGetCurrentTime(reloj, hora_actual)) {
            CambiarEstado(MOSTRANDO_HORA);
        } else {
            CambiarEstado(RELOJ_SIN_CONFIGURAR);
        }
        break;
    }
    default: {
        break;
    }
    }
    if (contador_inactividad >= TIEMPO_TIMEOUT) {
        if (ClockGetCurrentTime(reloj, hora_actual)) {
            CambiarEstado(MOSTRANDO_HORA);
        } else {
            CambiarEstado(RELOJ_SIN_CONFIGURAR);
        }
    }
}

void EstadoAjustarMinutosAlarma(void) {
    switch (ObtenerEvento()) {
    case F3: {
        DecrementarMinutos(hora_temporal);
        contador_inactividad = 0;
        break;
    }
    case F4: {
        IncrementarMinutos(hora_temporal);
        contador_inactividad = 0;
        break;
    }
    case ACEPTAR: {
        CambiarEstado(AJUSTANDO_HORAS_ALARMA);
        break;
    }
    case CANCELAR: {
        CambiarEstado(MOSTRANDO_HORA);
        break;
    }
    default: {
        break;
    }
    }
    if (contador_inactividad >= TIEMPO_TIMEOUT) {
        CambiarEstado(MOSTRANDO_HORA);
    }
}

void EstadoAjustarHorasAlarma(void) {
    switch (ObtenerEvento()) {
    case F3: {
        DecrementarHoras(hora_temporal);
        contador_inactividad = 0;
        break;
    }
    case F4: {
        IncrementarHoras(hora_temporal);
        contador_inactividad = 0;
        break;
    }
    case ACEPTAR: {
        ClockSetupAlarm(reloj, hora_temporal);
        CambiarEstado(MOSTRANDO_HORA);
        break;
    }
    case CANCELAR: {
        CambiarEstado(MOSTRANDO_HORA);
        break;
    }
    default: {
        break;
    }
    }
    if (contador_inactividad >= TIEMPO_TIMEOUT) {
        CambiarEstado(MOSTRANDO_HORA);
    }
}

void EstadoAlarma(void) {
    switch (ObtenerEvento()) {
    case ACEPTAR: {
        ClockPostponeAlarm(reloj, 5);
        CambiarEstado(MOSTRANDO_HORA);
        break;
    }
    case CANCELAR: {
        alarma_cancelada = true;
        CambiarEstado(MOSTRANDO_HORA);
        break;
    }
    default: {
        break;
    }
    }
    if (contador_inactividad >= 60000) {
        CambiarEstado(MOSTRANDO_HORA);
    }
}

void CambiarEstado(estado_t nuevo_estado) {
    if (estado_actual == nuevo_estado) {
        return;
    }

    DigitalOutputDeactivate(placa->buzzer);
    DisplayFlashDigits(placa->display, 0, 0, 0);

    SetPunto(0, false);
    SetPunto(1, false);
    SetPunto(2, false);
    SetPunto(3, false);

    if (nuevo_estado == MOSTRANDO_HORA && ClockGetAlarmEnabled(reloj)) {
        SetPunto(3, true);
    }

    estado_actual = nuevo_estado;
    contador_inactividad = 0;

    switch (nuevo_estado) {
    case RELOJ_SIN_CONFIGURAR:
        SetPunto(0, true);
        SetPunto(1, true);
        SetPunto(2, true);
        SetPunto(3, true);
        DisplayFlashDigits(placa->display, 0, 3, 250);
        break;
    case MOSTRANDO_HORA:
        DisplayFlashDigits(placa->display, 0, 0, 0);
        break;
    case AJUSTANDO_MINUTOS_RELOJ:
        DisplayFlashDigits(placa->display, 2, 3, 250);
        break;
    case AJUSTANDO_HORAS_RELOJ:
        DisplayFlashDigits(placa->display, 0, 1, 250);
        break;
    case AJUSTANDO_MINUTOS_ALARMA:
    case AJUSTANDO_HORAS_ALARMA:
        SetPunto(0, true);
        SetPunto(1, true);
        SetPunto(2, true);
        SetPunto(3, true);
        if (nuevo_estado == AJUSTANDO_MINUTOS_ALARMA) {
            DisplayFlashDigits(placa->display, 2, 3, 250);
        } else {
            DisplayFlashDigits(placa->display, 0, 1, 250);
        }
        break;
    case ALARMA:
        DigitalOutputActivate(placa->buzzer);
        DisplayFlashDigits(placa->display, 0, 3, 100);
        break;
    }
}

evento_t ObtenerEvento(void) {
    evento_t evento;
    evento = evento_actual;
    evento_actual = NINGUNO;
    if (evento == NINGUNO) {
        if (DigitalInputHasActivated(placa->f3)) {
            return F3;
        }
        if (DigitalInputHasActivated(placa->f4)) {
            return F4;
        }
        if (DigitalInputHasActivated(placa->aceptar)) {
            return ACEPTAR;
        }
        if (DigitalInputHasActivated(placa->cancelar)) {
            return CANCELAR;
        }
    }
    return evento;
}

void CopiarHoraActual(void) {
    ClockGetCurrentTime(reloj, hora_temporal);
    hora_temporal[4] = 0;
    hora_temporal[5] = 0;
}

void IncrementarMinutos(hora_t hora) {
    hora[3]++;
    if (hora[3] > 9) {
        hora[3] = 0;
        hora[2]++;
    }
    if (hora[2] > 5) {
        hora[2] = 0;
        IncrementarHoras(hora);
    }
}

void DecrementarMinutos(hora_t hora) {
    if (hora[3] == 0) {
        hora[3] = 9;
        if (hora[2] == 0) {
            hora[2] = 5;
            DecrementarHoras(hora);
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

void ManejadorAlarma(bool estado) {
    if (estado && !alarma_cancelada) {
        alarma_sonando = true;
    }
}

void SetPunto(uint8_t digito, bool encendido) {
    if (estado_puntos[digito] != encendido) {
        DisplayToggleDots(placa->display, digito, digito);
        estado_puntos[digito] = encendido;
    }
}

/* === Public function implementation ========================================================== */

int main(void) {
    placa = BoardCreate();
    reloj = ClockCreate(TICK_RATE_HZ, ManejadorAlarma);
    BoardSysTickInit(TICK_RATE_HZ);
    DisplayWriteBCD(placa->display, display, 4);
    SetPunto(0, true);
    SetPunto(1, true);
    SetPunto(2, true);
    SetPunto(3, true);
    DisplayFlashDigits(placa->display, 0, 3, 250);
    while (1) {
        ActualizarFSM();
        ActualizarDisplay();
    }
    return 0;
}

/* === End of documentation ==================================================================== */
