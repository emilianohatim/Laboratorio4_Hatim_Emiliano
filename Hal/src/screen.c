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

/** @file screen.c
 ** @brief Implementación de la abstracción de pantalla multiplexada de siete segmentos
 */
/* === Headers files inclusions ================================================================ */

#include "chip.h"
#include <string.h>
#include "screen.h"

/* === Macros definitions ====================================================================== */

#ifndef DISPLAY_MAX_DIGITS
#define DISPLAY_MAX_DIGITS 8
#endif

/* === Private data type declarations ========================================================== */

/**
 * @brief Estructura interna para gestionar el display
 *
 * Contiene el estado actual del barrido, los segmentos activos por cada digito,
 * los parámetros para gestionar el efecto de parpadeo y los punteros a los callbacks
 *
 */
struct display_s {
    uint8_t digits;
    uint8_t active_digit;
    uint8_t flashing_fron;
    uint8_t flashing_to;
    uint16_t flashing_frecuency;
    uint16_t flashing_count;
    uint8_t display_memory[DISPLAY_MAX_DIGITS];
    struct display_driver_s driver[1];
};

/* === Private function declarations =========================================================== */

static display_t DisplayAllocate(void);

/* === Private variable definitions ============================================================ */

/**
 * @brief Tabla de conversión de BCD a 7 segmentos
 *
 * Arreglo constante que mapea los números del 0 al 9 con la combinación exacta de bits
 *
 */
static const uint8_t IMAGES[] = {
    SEGMENT_A | SEGMENT_B | SEGMENT_C | SEGMENT_D | SEGMENT_E | SEGMENT_F,
    SEGMENT_B | SEGMENT_C,
    SEGMENT_A | SEGMENT_B | SEGMENT_D | SEGMENT_E | SEGMENT_G,
    SEGMENT_A | SEGMENT_B | SEGMENT_C | SEGMENT_D | SEGMENT_G,
    SEGMENT_B | SEGMENT_C | SEGMENT_F | SEGMENT_G,
    SEGMENT_A | SEGMENT_C | SEGMENT_D | SEGMENT_F | SEGMENT_G,
    SEGMENT_A | SEGMENT_C | SEGMENT_D | SEGMENT_E | SEGMENT_F | SEGMENT_G,
    SEGMENT_A | SEGMENT_B | SEGMENT_C,
    SEGMENT_A | SEGMENT_B | SEGMENT_C | SEGMENT_D | SEGMENT_E | SEGMENT_F | SEGMENT_G,
    SEGMENT_A | SEGMENT_B | SEGMENT_C | SEGMENT_F | SEGMENT_G,
};

/* === Public variable definition  ============================================================= */

/* === Private function definitions ============================================================ */

/**
 * @brief Reserva de memoria para la instancia del display
 *
 * @return display_t Puntero a la instancai asignada
 */
static display_t DisplayAllocate(void) {
    static struct display_s instances[1] = {0};

    return &instances[0];
}

/* === Private function definitions ================================================================================ */

/* === Public function implementation ========================================================== */

/**
 * @brief Implementación de la incialización del display
 *
 * @param digits Cantidad física de dígitos que tiene el display
 * @param driver Puntero a la estructura que contiene los callbacks para el control del hardware
 * @return display_t Puntero a la instancia del display configrado, devuelve NULL si no hay memoria disponible
 */
display_t DisplayCreate(uint8_t digits, display_driver_t driver) {
    display_t display = DisplayAllocate();

    if (display) {
        display->digits = digits;
        display->active_digit = digits - 1;
        display->flashing_count = 0;
        display->flashing_fron = 0;
        display->flashing_to = 0;
        display->flashing_frecuency = 0;
        memcpy(display->driver, driver, sizeof(display->driver));
        memset(display->display_memory, 0, sizeof(display->display_memory));
        display->driver->UpdateSegments(0x00);
    }
    return display;
}

/**
 * @brief Carga los números BCD en los segmentos activos
 *
 * @param display Puntero al objeto del display
 * @param number Puntero al arreglo de bytes que contiene los números BCD
 * @param size Cantidad de dígitos que contiene el arreglo number
 */
void DisplayWriteBCD(display_t display, uint8_t * number, uint8_t size) {
    for (int index = 0; index < size; index++) {
        uint8_t punto_actual = display->display_memory[index] & SEGMENT_P;
        if (index < size) {
            display->display_memory[index] = IMAGES[number[index]] | punto_actual;
        } else {
            display->display_memory[index] = 0 | punto_actual;
        }
    }
}

/**
 * @brief Rutina al multiplexado
 *
 * @param display Puntero al objeto del display que se debe actualizar
 */
void DisplayRefresh(display_t display) {
    uint8_t segments;

    display->driver->UpdateSegments(0x00);
    display->active_digit = (display->active_digit + 1) % display->digits;

    if (display->active_digit == 0) {
        display->flashing_count++;
        if (display->flashing_count >= display->flashing_frecuency) {
            display->flashing_count = 0;
        }
    }
    segments = display->display_memory[display->active_digit];
    if (display->flashing_frecuency > 0) {
        if (display->flashing_count >= display->flashing_frecuency / 2) {
            if ((display->active_digit >= display->flashing_fron) && (display->active_digit <= display->flashing_to)) {
                segments = 0;
            }
        }
    }
    display->driver->UpdateDigits(display->active_digit);
    display->driver->UpdateSegments(segments);
}

/**
 * @brief Configura los parámetros de parapadeo
 *
 * @param display Puntero al objeto del display
 * @param from índice del primer dígito donde comienza el efecto de parpadeo
 * @param to índice del último dígito donde termina el efecto de parpadeo
 * @param frecuency Cantidad de ciclos para conmutar el estado
 */
void DisplayFlashDigits(display_t display, uint8_t from, uint8_t to, uint16_t frecuency) {
    display->flashing_count = 0;
    display->flashing_fron = from;
    display->flashing_to = to;
    display->flashing_frecuency = frecuency;
}

/**
 * @brief Conmuta el estado de los puntos decimales
 *
 * @param display Puntero al objeto del display
 * @param from índice del primer dígito cuyo punto decimal conmuta
 * @param to índice del último dígito cuyo punto decimal conmuta
 */
void DisplayToggleDots(display_t display, uint8_t from, uint8_t to) {
    for (int index = from; index <= to; index++) {
        display->display_memory[index] ^= SEGMENT_P;
    }
}

/* === End of documentation ==================================================================== */