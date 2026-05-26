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

#ifndef DIGITAL_H_
#define DIGITAL_H_

/** @file digital.h
 ** @author Emiliano Hatim (emilianohatim01@gmail.com)
 ** @brief Declaraciones de la biblioteca para gestion de entradas y salidas digitales
 ** @version 1.0
 * @date 2026-05
 * @copyright Copyright (c) 2026
 **/

/* === Headers files inclusions ==================================================================================== */

#include <stdint.h>
#include <stdbool.h>

/* === Header for C++ compatibility ================================================================================ */

#ifdef __cplusplus
extern "C" {
#endif

/* === Public macros definitions =================================================================================== */

/* === Public data type declarations =============================================================================== */

/**
 * @brief Estructura para representar a las salidas digitales
 *
 */

typedef struct digital_output_s * digital_output_t;

/**
 * @brief Estructura para representar las entradas digitales
 *
 */
typedef struct digital_input_s * digital_input_t;

/* === Public variable declarations ================================================================================ */

/* === Public function declarations ================================================================================ */

/**
 * @brief Funcion para crear entradas digitales
 *
 * @param gpio Puerto
 * @param bit Pin del puerto
 * @param inverted true si la tecla trabaja con lógica invertida (activo en bajo / PULL-UP),
 * false si trabaja con lógica directa (activo en alto / PULL-DOWN).
 * @return digital_input_t Puntero al objeto de la entrada digital creada
 */
digital_input_t DigitalInputCreate(uint32_t gpio, uint8_t bit, bool inverted);

/**
 * @brief Funcion para obtener el estado de la entrada digital
 *
 * @param entrada Puntero a la entrada digital
 * @return true
 * @return false
 */
bool DigitalInputGetState(digital_input_t entrada);

/**
 * @brief Funcion para conocer si la entrada digital cambio de estado
 *
 * @param entrada Puntero a la entrada digital
 * @return int
 */
int DigitalInputHasChanged(digital_input_t entrada);

/**
 * @brief Funcion para conocer si la entrada digital fue activada
 *
 * @param entrada Puntero a la entrada digital
 * @return true
 * @return false
 */
bool DigitalInputHasActivated(digital_input_t entrada);

/**
 * @brief Funcion para conocer si la entrada digital fue desactivada
 *
 * @param entrada Puntero a la entrada digital
 * @return true
 * @return false
 */
bool DigitalInputHasDeactivated(digital_input_t entrada);

/**
 * @brief Funcion para crear una salida digital
 *
 * @param gpio Puerto
 * @param bit Pin del puerto
 * @param inverted true si la carga trabaja con lógica invertida (activa en bajo),
 * false si trabaja con lógica directa (activa en alto).
 * @return digital_output_t Puntero al objeto de la salida digital creada
 */
digital_output_t DigitalOutputCreate(uint32_t gpio, uint8_t bit, bool inverted);

/**
 * @brief Funcion para activar la salida digital
 *
 * @param salida Puntero a la salida digital
 */
void DigitalOutputActivate(digital_output_t salida);

/**
 * @brief Funcion para desactivar la salida digital
 *
 * @param salida Puntero a la salida digital
 */
void DigitalOutputDeactivate(digital_output_t salida);

/**
 * @brief Invierte el estado actual de la salida digital
 *
 * @param salida Puntero a la salida digital
 */
void DigitalOutputToggle(digital_output_t salida);

/* === End of conditional blocks =================================================================================== */

#ifdef __cplusplus
}
#endif

#endif /* DIGITAL_H_ */