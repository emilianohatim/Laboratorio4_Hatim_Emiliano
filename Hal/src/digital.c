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

/** @file digital.c
 ** @brief implementacion de la biblioteca para gestion de entradas y salidas digitales
 **/

/* === Headers files inclusions ================================================================ */

#include "digital.h"
#include "chip.h"
#include <stdlib.h>
#define INSTANCIAS_MAX   10
#define NO_EVENT         0
#define ACTIVATE_EVENT   1
#define DEACTIVATE_EVENT 2

/* === Macros definitions ====================================================================== */

/* === Private data type declarations ========================================================== */

/**
 * @brief Estructura para representar una salida digital
 * @param gpio Puerto
 * @param bit Pin del Puerto
 * @param inverted
 *
 */
struct digital_output_s {
    uint32_t gpio;
    uint8_t bit;
    bool inverted;
};

/**
 * @brief Estructura para representar una entrada digital
 * @param gpio Puerto
 * @param bit Pin del Puerto
 * @param inverted
 * @param last_state variable para almacenar el ultimo estado de la entrada digital
 *
 */
struct digital_input_s {
    uint32_t gpio;
    uint8_t bit;
    bool inverted;
    bool last_state;
};

/* === Private function declarations =========================================================== */

/* === Private variable definitions ============================================================ */

/**
 * @brief Arreglo estatico para almacenar las estructuras de las salidas digitales creadas
 *
 */
static struct digital_output_s salidas_instancias[INSTANCIAS_MAX];
/**
 * @brief Arreglo estatico para almacenar las estructuras de las entradas digitales creadas
 *
 */
static struct digital_input_s entradas_instancias[INSTANCIAS_MAX];
/**
 * @brief Contador de instancias de salidas digitales actualmente asignadas
 *
 */
static uint8_t salidas_alocadas = 0;
/**
 * @brief Contador de instancias de entradas digitales actualmente asignadas
 *
 */
static uint8_t entradas_alocadas = 0;

/* === Public variable definition  ============================================================= */

/* === Private function definitions ============================================================ */

/* === Public function implementation ========================================================== */

/**
 * @brief Funcion para crear una salida digital
 *
 * @param gpio Puerto
 * @param bit Pin del puerto
 * @param inverted true si la carga trabaja con lógica invertida (activa en bajo),
 * false si trabaja con lógica directa (activa en alto).
 * @return digital_output_t Puntero al objeto de la salida digital creada
 */
digital_output_t DigitalOutputCreate(uint32_t gpio, uint8_t bit, bool inverted) {
    digital_output_t self = NULL;
    if (salidas_alocadas < INSTANCIAS_MAX) {
        self = &salidas_instancias[salidas_alocadas];
        salidas_alocadas++;

        self->gpio = gpio;
        self->bit = bit;
        self->inverted = inverted;

        DigitalOutputDeactivate(self);
        Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, self->gpio, self->bit, true);
    }

    return self;
}

/**
 * @brief Funcion para activar la salida digital
 *
 * @param salida Puntero a la salida digital
 */
void DigitalOutputActivate(digital_output_t self) {
    if (self != NULL) {
        Chip_GPIO_SetPinState(LPC_GPIO_PORT, self->gpio, self->bit, !self->inverted);
    }
}

/**
 * @brief Funcion para desactivar la salida digital
 *
 * @param salida Puntero a la salida digital
 */
void DigitalOutputDeactivate(digital_output_t self) {
    if (self != NULL) {
        Chip_GPIO_SetPinState(LPC_GPIO_PORT, self->gpio, self->bit, self->inverted);
    }
}

/**
 * @brief Invierte el estado actual de la salida digital
 *
 * @param salida Puntero a la salida digital
 */
void DigitalOutputToggle(digital_output_t self) {
    if (self != NULL) {
        Chip_GPIO_SetPinToggle(LPC_GPIO_PORT, self->gpio, self->bit);
    }
}

/**
 * @brief Funcion para crear entradas digitales
 *
 * @param gpio Puerto
 * @param bit Pin del puerto
 * @param inverted true si la tecla trabaja con lógica invertida (activo en bajo / PULL-UP),
 * false si trabaja con lógica directa (activo en alto / PULL-DOWN).
 * @return digital_input_t Puntero al objeto de la entrada digital creada
 */
digital_input_t DigitalInputCreate(uint32_t gpio, uint8_t bit, bool inverted) {
    digital_input_t self = NULL;
    if (entradas_alocadas < INSTANCIAS_MAX) {
        self = &entradas_instancias[entradas_alocadas];
        entradas_alocadas++;

        self->gpio = gpio;
        self->bit = bit;
        self->inverted = inverted;

        Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, self->gpio, self->bit, false);

        self->last_state = DigitalInputGetState(self);
    }
    return self;
}

/**
 * @brief Funcion para obtener el estado de la entrada digital
 *
 * @param entrada Puntero a la entrada digital
 * @return true
 * @return false
 */
bool DigitalInputGetState(digital_input_t self) {
    if (self == NULL) {
        return false;
    }
    bool estado_pin = Chip_GPIO_ReadPortBit(LPC_GPIO_PORT, self->gpio, self->bit);
    if (self->inverted) {
        return !estado_pin;
    } else {
        return estado_pin;
    }
}

/**
 * @brief Funcion para conocer si la entrada digital cambio de estado
 *
 * @param entrada Puntero a la entrada digital
 * @return int
 */
int DigitalInputHasChanged(digital_input_t self) {
    int resultado = NO_EVENT;
    if (self != NULL) {
        bool actual = DigitalInputGetState(self);
        if (actual && !self->last_state) {
            resultado = ACTIVATE_EVENT;
        } else if (!actual && self->last_state) {
            resultado = DEACTIVATE_EVENT;
        }
        self->last_state = actual;
    }
    return resultado;
}

/**
 * @brief Funcion para conocer si la entrada digital fue activada
 *
 * @param entrada Puntero a la entrada digital
 * @return true
 * @return false
 */
bool DigitalInputHasActivated(digital_input_t self) {
    return DigitalInputHasChanged(self) == ACTIVATE_EVENT;
}

/**
 * @brief Funcion para conocer si la entrada digital fue desactivada
 *
 * @param entrada Puntero a la entrada digital
 * @return true
 * @return false
 */
bool DigitalInputHasDeactivated(digital_input_t self) {
    return DigitalInputHasChanged(self) == DEACTIVATE_EVENT;
}

/* === End of documentation ==================================================================== */