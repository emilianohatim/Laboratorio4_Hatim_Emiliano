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

#ifndef RELOJ_H_
#define RELOJ_H_

/** @file reloj.h
 ** @brief Declaración de la biblioteca para gestión del reloj
 **/

/* === Headers files inclusions ==================================================================================== */

#include <stdbool.h>
#include <stdint.h>

/* === Header for C++ compatibility ================================================================================ */

#ifdef __cplusplus
extern "C" {
#endif

/* === Public macros definitions =================================================================================== */

/* === Public data type declarations =============================================================================== */

/**
 * @brief Puntero a la estructura interna del reloj
 *
 */
typedef struct clock_s * clock_t;

/**
 * @brief Arreglo para almacenar la hora en formato BCD
 *
 */
typedef uint8_t hora_t[6];

/**
 * @brief Puntero a función de callback para el evento de la alarma
 * @param estado true si la alarma debe activarse o false en caso contrario
 */
typedef void (*clock_event_t)(bool estado);

/* === Public variable declarations ================================================================================ */

/* === Public function declarations ================================================================================ */

/**
 * @brief Crea o inicializa una instancia del reloj
 *
 * @param ticks_per_second Cantidad de ticks físicos que equivalen a un segundo de reloj
 * @param alarm_handler Puntero a la funcion que se ejecutará cuando la alarma deba sonar
 * @return clock_t Puntero a la instancia del reloj creado
 */
clock_t ClockCreate(unsigned int ticks_per_second, clock_event_t alarm_handler);

/**
 * @brief Obtiene la hora actual del reloj
 *
 * @param reloj Puntero a la instancia del reloj
 * @param current_time Arreglo donde se guardará la hora actual en formato BCD
 * @return true Si la hora devuelta es válida
 * @return false Si el reloj se encuentra desconfigurado
 */
bool ClockGetCurrentTime(clock_t reloj, hora_t current_time);

/**
 * @brief Configura la hora actual del reloj
 *
 * @param reloj Puntero a la instancia del reloj
 * @param current_time Arreglo con la hora a configurar en formato BCD
 * @return true Si la hora proporcionada es válida y se configura correctamente
 * @return false Si la hora proporcionada tiene un formato inválido
 */
bool ClockSetupCurrentTime(clock_t reloj, const hora_t current_time);

/**
 * @brief Incrementa el contador interno de ticks del reloj
 * se llama periódicamente
 *
 * @param reloj Puntero a la instancia del reloj
 */
void ClockNewTick(clock_t reloj);

/**
 * @brief Configura la hora de la alarma
 *
 * @param self Puntero a la instancia del reloj
 * @param alarm_time Arreglo con la hora de la alarma en formato BCD
 * @return true Si la hora proporcionada es válida y se guardo correctamente
 * @return false Si la hora proporcionada tiene un formato inválido
 */
bool ClockSetupAlarm(clock_t self, const hora_t alarm_time);

/**
 * @brief Obtiene la hora configurada actualmente para la alarma
 *
 * @param self Puntero a la instancia del reloj
 * @param alarm_time Arreglo con la hora de la alarma en formato BCD
 */
void ClockGetAlarm(clock_t self, hora_t alarm_time);

/**
 * @brief Conmuta el estado de la alarma
 * si esta deshabilitada, la habilita y viceversa
 *
 * @param self Puntero a la instancia del reloj
 */
void ClockToggleAlarm(clock_t self);

/**
 * @brief Consulta el estado actual de la alarma
 *
 * @param self Puntero a la instancia del reloj
 * @return true Si la alarma esta habilitada
 * @return false Si la alarma esta deshabilitada
 */
bool ClockGetAlarmEnabled(clock_t self);

/**
 * @brief Pospone la alarma una cantidad determinada de minutos
 *
 * @param self Puntero a la instancia del reloj
 * @param minutos Cantidad de minutos a posponer la alarma a partir de la hora actual
 */
void ClockPostponeAlarm(clock_t self, uint8_t minutos);

/**
 * @brief Omite la alarma para el día actual
 * 
 * @param self Puntero a la instancia del reloj
 */
void ClockSkipTodayAlarm(clock_t self);

/* === End of conditional blocks =================================================================================== */

#ifdef __cplusplus
}
#endif

#endif /* RELOJ_H_ */
