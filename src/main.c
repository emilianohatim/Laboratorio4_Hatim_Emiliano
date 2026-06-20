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

#include "digital.h"
#include "bsp.h"
#include <stdio.h>

/* === Macros definitions ====================================================================== */

/* === Private data type declarations ========================================================== */

/* === Private variable declarations =========================================================== */

/* === Private function declarations =========================================================== */

/* === Public variable definitions ============================================================= */

/* === Private variable definitions ============================================================ */

/**
 * @brief Puntero global a la estructura de la placa
 *
 */
static board_t board;

/* === Private function implementation ========================================================= */

/* === Public function implementation ========================================================== */

/**
 * @brief Función principal del programa
 *
 * Incializa el hardware de la placa y establece el valor inicial
 * 4, 3, 2 y 1 en el display, entra a un bucle infinito donde corrobora el estado
 * de las entradas digitales (teclas)
 * Tecla aceptar: alterna la frecuencia de parpadeo de todos los digitos
 * Tecla cancelar: Conmuta el encendido y apagado de los puntos decimales
 * Teclas F1 a F4: Incrementan individualmente el valor del dígito correspondiente
 *
 * Finalmente, se ejecuta un bucle de retardo por software junto con una función
 * de refresco del display para mantener el multiplexado
 *
 */
int main(void) {
    uint8_t entrada[4] = {4, 3, 2, 1};
    uint16_t frecuencia = 0;

    board = BoardCreate();

    DisplayWriteBCD(board->display, entrada, sizeof(entrada));
    while (true) {
        if (DigitalInputHasActivated(board->aceptar)) {
            if (frecuencia == 0) {
                frecuencia = 100;
            } else if (frecuencia == 100) {
                frecuencia = 250;
            } else {
                frecuencia = 0;
            }
            DisplayFlashDigits(board->display, 0, 3, frecuencia);
        }
        if (DigitalInputHasActivated(board->cancelar)) {
            DisplayToggleDots(board->display, 0, 3);
        }
        if (DigitalInputHasActivated(board->f1)) {
            entrada[3] = (entrada[3] + 1) % 10;
            DisplayWriteBCD(board->display, entrada, sizeof(entrada));
        }
        if (DigitalInputHasActivated(board->f2)) {
            entrada[2] = (entrada[2] + 1) % 10;
            DisplayWriteBCD(board->display, entrada, sizeof(entrada));
        }
        if (DigitalInputHasActivated(board->f3)) {
            entrada[1] = (entrada[1] + 1) % 10;
            DisplayWriteBCD(board->display, entrada, sizeof(entrada));
        }
        if (DigitalInputHasActivated(board->f4)) {
            entrada[0] = (entrada[0] + 1) % 10;
            DisplayWriteBCD(board->display, entrada, sizeof(entrada));
        }

        for (int index = 0; index < 50; index++) {
            for (int delay = 0; delay < 1000; delay++) {
                __asm__("NOP");
            }
            DisplayRefresh(board->display);
        }
    }

    return 0;
}

/* === End of documentation ==================================================================== */
