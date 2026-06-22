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

/** @file test_reloj.c
 ** @brief Archivo de pruebas para el reloj
 */
/* === Headers files inclusions ================================================================ */

#include "reloj.h"
#include "unity.h"

/* === Macros definitions ====================================================================== */

/**
 * @brief Constantes de tiempo simulado para las pruebas
 *
 */
#define TICK_PER_SECOND 3
#define ONE_SECOND      TICK_PER_SECOND
#define TEN_SECONDS     (10 * ONE_SECOND)
#define ONE_MINUTE      (6 * TEN_SECONDS)
#define TEN_MINUTES     (10 * ONE_MINUTE)
#define ONE_HOUR        (60 * ONE_MINUTE)
#define TEN_HOURS       (10 * ONE_HOUR)
#define ONE_DAY         (24 * ONE_HOUR)

/* === Private data type declarations ========================================================== */

/* === Private function declarations =========================================================== */

/* === Private variable definitions ============================================================ */

/* === Public variable definition  ============================================================= */

/**
 * @brief Tiempos predefinidos en formato BCD para inyectar en las pruebas
 *
 */
static const hora_t DEFAULT_TIME = {0, 0, 0, 0, 0, 0};
static const hora_t INITIAL_TIME = {1, 2, 3, 4, 5, 6};
static const hora_t ALARM_TIME = {1, 2, 3, 5, 0, 0};
static const hora_t PRE_ALARM_TIME = {1, 2, 3, 4, 5, 9};
static const hora_t LIMITE_DIA = {2, 3, 5, 9, 5, 9};
static const hora_t NEW_ALARM = {1, 5, 0, 0, 0, 0};
static const hora_t POST_ALARM_TIME = {1, 2, 3, 5, 0, 5};

/**
 * @brief Variable para comprobar si el callback de la alarma fue ejecutado
 *
 */
static bool alarma_activada;

/* === Public function definitions ============================================================ */

/* === Private function definitions ============================================================ */

/**
 * @brief Funcion auxiliar para simular el paso del tiempo fisico inyectando multiples ticks
 *
 * @param reloj Instancia del reloj a simular
 * @param ticks Cantidad total de ticks a inyectar
 */
void SimulateClockTicks(clock_t reloj, unsigned int ticks) {
    for (int indice = 0; indice < ticks; indice++) {
        ClockNewTick(reloj);
    }
}

/**
 * @brief Funcion de callback que simula el encendido/apagado del hardware de la alarma
 *
 * @param estado Valor enviado por el reloj (true enciende, false para apagar)
 */
void simulador_alarma(bool estado) {
    alarma_activada = estado;
}

/**
 * @brief Inicialización del reloj en 00:00 y hora inválida
 *
 * Primer Prueba
 *
 */
void test_reloj_hora_invalida_y_en_cero(void) {
    clock_t reloj;
    hora_t hora_actual = {1, 2, 3, 4, 5, 6};

    reloj = ClockCreate(1, NULL);
    TEST_ASSERT_FALSE(ClockGetCurrentTime(reloj, hora_actual));
    TEST_ASSERT_EQUAL_UINT8_ARRAY(DEFAULT_TIME, hora_actual, 6);
}

/**
 * @brief Ajusta la hora el reloj y que pase a ser válido
 *
 * Segunda Prueba
 *
 */
void test_ajuste_de_hora(void) {
    clock_t reloj;
    hora_t hora_actual = {1, 2, 3, 4, 5, 6};

    reloj = ClockCreate(1, NULL);
    TEST_ASSERT_TRUE(ClockSetupCurrentTime(reloj, INITIAL_TIME));
    TEST_ASSERT_TRUE(ClockGetCurrentTime(reloj, hora_actual));
    TEST_ASSERT_EQUAL_UINT8_ARRAY(INITIAL_TIME, hora_actual, 6);
}

/**
 * @brief Despues de n ciclos de reloj la hora avanza un segundo
 *
 * Tercera Prueba
 *
 */
void test_avanza_un_segundo(void) {
    clock_t reloj;
    hora_t hora_actual;
    static const hora_t EXPECTED_TIME = {1, 2, 3, 4, 5, 7};

    reloj = ClockCreate(TICK_PER_SECOND, NULL);
    (void)ClockSetupCurrentTime(reloj, INITIAL_TIME);
    SimulateClockTicks(reloj, ONE_SECOND);
    ClockGetCurrentTime(reloj, hora_actual);
    TEST_ASSERT_EQUAL_UINT8_ARRAY(EXPECTED_TIME, hora_actual, 6);
}

/**
 * @brief Despues de n ciclos de reloj la hora avanza diez segundos
 *
 *
 */
void test_avanza_diez_segundos(void) {
    clock_t reloj;
    hora_t hora_actual;
    static const hora_t EXPECTED_TIME = {1, 2, 3, 5, 0, 6};

    reloj = ClockCreate(TICK_PER_SECOND, NULL);
    (void)ClockSetupCurrentTime(reloj, INITIAL_TIME);
    SimulateClockTicks(reloj, TEN_SECONDS);
    ClockGetCurrentTime(reloj, hora_actual);
    TEST_ASSERT_EQUAL_UINT8_ARRAY(EXPECTED_TIME, hora_actual, 6);
}

/**
 * @brief Despues de n cilcos de reloj la hora avanza diez minutos
 *
 */
void test_avanzo_diez_minutos(void) {
    clock_t reloj;
    hora_t hora_actual;
    static const hora_t EXPECTED_TIME = {1, 2, 4, 4, 5, 6};

    reloj = ClockCreate(TICK_PER_SECOND, NULL);
    (void)ClockSetupCurrentTime(reloj, INITIAL_TIME);
    SimulateClockTicks(reloj, TEN_MINUTES);
    ClockGetCurrentTime(reloj, hora_actual);
    TEST_ASSERT_EQUAL_UINT8_ARRAY(EXPECTED_TIME, hora_actual, 6);
}

/**
 * @brief Despues de n cilcos de reloj la hora avanza una hora
 *
 */
void test_avanzo_una_hora(void) {
    clock_t reloj;
    hora_t hora_actual;
    static const hora_t EXPECTED_TIME = {1, 3, 3, 4, 5, 6};

    reloj = ClockCreate(TICK_PER_SECOND, NULL);
    (void)ClockSetupCurrentTime(reloj, INITIAL_TIME);
    SimulateClockTicks(reloj, ONE_HOUR);
    ClockGetCurrentTime(reloj, hora_actual);
    TEST_ASSERT_EQUAL_UINT8_ARRAY(EXPECTED_TIME, hora_actual, 6);
}

/**
 * @brief Despues de n cilcos de reloj la hora avanza diez horas
 *
 */
void test_avanzo_diez_horas(void) {
    clock_t reloj;
    hora_t hora_actual;
    static const hora_t EXPECTED_TIME = {2, 2, 3, 4, 5, 6};

    reloj = ClockCreate(TICK_PER_SECOND, NULL);
    (void)ClockSetupCurrentTime(reloj, INITIAL_TIME);
    SimulateClockTicks(reloj, TEN_HOURS);
    ClockGetCurrentTime(reloj, hora_actual);
    TEST_ASSERT_EQUAL_UINT8_ARRAY(EXPECTED_TIME, hora_actual, 6);
}

/**
 * @brief Despues de n ciclos de reloj la hora avanza un día
 *
 */
void test_avanzo_un_dia(void) {
    clock_t reloj;
    hora_t hora_actual;

    reloj = ClockCreate(TICK_PER_SECOND, NULL);
    (void)ClockSetupCurrentTime(reloj, INITIAL_TIME);
    SimulateClockTicks(reloj, ONE_DAY);
    ClockGetCurrentTime(reloj, hora_actual);
    TEST_ASSERT_EQUAL_UINT8_ARRAY(INITIAL_TIME, hora_actual, 6);
}

/**
 * @brief Fijar una hora de alarma y consultarla
 *
 * Cuarta Prueba
 *
 */
void test_fijar_y_consultar_hora_alarma(void) {
    clock_t reloj;
    hora_t hora_seteada;

    reloj = ClockCreate(TICK_PER_SECOND, NULL);
    ClockSetupAlarm(reloj, ALARM_TIME);
    ClockGetAlarm(reloj, hora_seteada);
    TEST_ASSERT_EQUAL_UINT8_ARRAY(ALARM_TIME, hora_seteada, 6);
}

/**
 * @brief Habilitar y deshabilitar la alarma
 *
 */
void test_alarma_habilitar_y_deshabilitar(void) {
    clock_t reloj;
    reloj = ClockCreate(TICK_PER_SECOND, NULL);

    TEST_ASSERT_FALSE(ClockGetAlarmEnabled(reloj));
    ClockToggleAlarm(reloj);
    TEST_ASSERT_TRUE(ClockGetAlarmEnabled(reloj));
    ClockToggleAlarm(reloj);
    TEST_ASSERT_FALSE(ClockGetAlarmEnabled(reloj));
}

/**
 * @brief Fijar una alarma y avanzar la hora para que suene
 *
 * Quinta Prueba
 *
 */
void test_fijar_alarma_y_avanzar_hora_para_que_suene(void) {
    clock_t reloj;
    alarma_activada = false;

    reloj = ClockCreate(TICK_PER_SECOND, simulador_alarma);
    ClockSetupCurrentTime(reloj, PRE_ALARM_TIME);
    ClockSetupAlarm(reloj, ALARM_TIME);
    ClockToggleAlarm(reloj);
    SimulateClockTicks(reloj, ONE_SECOND);
    TEST_ASSERT_TRUE(alarma_activada);
}

/**
 * @brief Fijar una alarma, deshabilitarla y avanzar el reloj para que no suene
 *
 * Sexta Prueba
 *
 */
void test_fijar_alarma_deshabilitarla_y_avanzar_el_reloj_para_que_no_suene(void) {
    clock_t reloj;
    alarma_activada = false;

    reloj = ClockCreate(TICK_PER_SECOND, simulador_alarma);
    ClockSetupCurrentTime(reloj, PRE_ALARM_TIME);
    ClockSetupAlarm(reloj, ALARM_TIME);
    ClockToggleAlarm(reloj);
    ClockToggleAlarm(reloj);
    SimulateClockTicks(reloj, ONE_SECOND);
    TEST_ASSERT_FALSE(alarma_activada);
}

/**
 * @brief Hacer sonar una alarma y posponerla
 *
 * Séptima Prueba
 *
 */
void test_hacer_sonar_alarma_y_posponerla(void) {
    clock_t reloj;
    alarma_activada = false;

    reloj = ClockCreate(TICK_PER_SECOND, simulador_alarma);
    ClockSetupCurrentTime(reloj, PRE_ALARM_TIME);
    ClockSetupAlarm(reloj, ALARM_TIME);
    ClockToggleAlarm(reloj);
    SimulateClockTicks(reloj, ONE_SECOND);
    TEST_ASSERT_TRUE(alarma_activada);
    alarma_activada = false;
    ClockPostponeAlarm(reloj, 5);
    SimulateClockTicks(reloj, 5 * ONE_MINUTE - ONE_SECOND);
    TEST_ASSERT_FALSE(alarma_activada);
    SimulateClockTicks(reloj, ONE_SECOND);
    TEST_ASSERT_TRUE(alarma_activada);
}

/**
 * @brief Hacer sonar una alarma y cancelarla hasta el otro día
 *
 * Octava Prueba
 *
 */
void test_hacer_sonar_alarma_y_cancelarla_hasta_el_otro_dia(void) {
    clock_t reloj;
    alarma_activada = false;

    reloj = ClockCreate(TICK_PER_SECOND, simulador_alarma);
    ClockSetupCurrentTime(reloj, PRE_ALARM_TIME);
    ClockSetupAlarm(reloj, ALARM_TIME);
    ClockToggleAlarm(reloj);
    SimulateClockTicks(reloj, ONE_SECOND);
    TEST_ASSERT_TRUE(alarma_activada);

    alarma_activada = false;
    SimulateClockTicks(reloj, ONE_SECOND);
    TEST_ASSERT_FALSE(alarma_activada);
    SimulateClockTicks(reloj, ONE_DAY - ONE_SECOND);
    TEST_ASSERT_TRUE(alarma_activada);
}

/**
 * @brief Crear un reloj y verificar que no sea nulo
 *
 * Novena Prueba
 *
 */
void test_crear_reloj_no_nulo(void) {
    clock_t reloj = ClockCreate(TICK_PER_SECOND, NULL);
    TEST_ASSERT_NOT_NULL(reloj);
}

/**
 * @brief Rechazar una hora inválida
 *
 * Décima Prueba
 *
 */
void test_rechazar_hora_invalida(void) {
    clock_t reloj = ClockCreate(TICK_PER_SECOND, NULL);
    hora_t hora_invalida_horas = {2, 5, 0, 0, 0, 0};
    hora_t hora_invalida_minutos = {1, 2, 6, 0, 0, 0};

    TEST_ASSERT_FALSE(ClockSetupCurrentTime(reloj, hora_invalida_horas));
    TEST_ASSERT_FALSE(ClockSetupCurrentTime(reloj, hora_invalida_minutos));
}
/* === Public function implementation ========================================================== */

/**
 * @brief Verificar que un reloj desconfigurado no avance
 *
 * Undécima Prueba
 *
 */
void test_reloj_desconfigurado_no_avanza(void) {
    clock_t reloj = ClockCreate(TICK_PER_SECOND, NULL);
    hora_t hora_actual;

    SimulateClockTicks(reloj, TEN_SECONDS);
    TEST_ASSERT_FALSE(ClockGetCurrentTime(reloj, hora_actual));
    TEST_ASSERT_EQUAL_UINT8_ARRAY(DEFAULT_TIME, hora_actual, 6);
}

/**
 * @brief Verificar que al posponer y cancelar la alarma, esta suene en la hora original al dia siguiente y no la hora
 * original sumada al valor pospuesta
 *
 * Doceava Prueba
 *
 */
void test_posponer_alarma_cancelar_y_suena_hora_original_al_dia_siguiente(void) {
    clock_t reloj;
    alarma_activada = false;

    reloj = ClockCreate(TICK_PER_SECOND, simulador_alarma);
    ClockSetupCurrentTime(reloj, PRE_ALARM_TIME);
    ClockSetupAlarm(reloj, ALARM_TIME);
    ClockToggleAlarm(reloj);
    SimulateClockTicks(reloj, ONE_SECOND);
    ClockPostponeAlarm(reloj, 5);
    SimulateClockTicks(reloj, ONE_SECOND);
    alarma_activada = false;
    SimulateClockTicks(reloj, ONE_DAY - (2 * ONE_SECOND));
    alarma_activada = false;
    SimulateClockTicks(reloj, ONE_SECOND);
    TEST_ASSERT_TRUE(alarma_activada);
}

/**
 * @brief Probar que la alarma rechaza una hora inválida
 *
 * Pruebas Extras
 *
 */
void test_rechazar_hora_alarma_invalida(void) {
    clock_t reloj = ClockCreate(TICK_PER_SECOND, simulador_alarma);
    hora_t hora_invalida = {2, 5, 0, 0, 0, 0};
    TEST_ASSERT_FALSE(ClockSetupAlarm(reloj, hora_invalida));
}

/**
 * @brief Probar la transicion exacta de la medianoche
 *
 */
void test_transicion_exacta_medianoche(void) {
    clock_t reloj = ClockCreate(TICK_PER_SECOND, NULL);
    hora_t hora_actual;

    ClockSetupCurrentTime(reloj, LIMITE_DIA);
    SimulateClockTicks(reloj, ONE_SECOND);
    ClockGetCurrentTime(reloj, hora_actual);
    TEST_ASSERT_EQUAL_UINT8_ARRAY(DEFAULT_TIME, hora_actual, 6);
}

/**
 * @brief Modificar la alarma mientras esta en snooze y se la cancela
 *
 */
void test_modificar_alarma_durante_snooze_cancela_snooze(void) {
    clock_t reloj;
    alarma_activada = false;
    reloj = ClockCreate(TICK_PER_SECOND, simulador_alarma);
    ClockSetupCurrentTime(reloj, PRE_ALARM_TIME);
    ClockSetupAlarm(reloj, ALARM_TIME);
    ClockToggleAlarm(reloj);

    SimulateClockTicks(reloj, ONE_SECOND);
    ClockPostponeAlarm(reloj, 5);
    alarma_activada = false;
    ClockSetupAlarm(reloj, NEW_ALARM);
    SimulateClockTicks(reloj, (5 * ONE_MINUTE) - ONE_SECOND);
    TEST_ASSERT_FALSE(alarma_activada);
}

/**
 * @brief Test de salto manual del tiempo que no produce la activación de la alarma
 *
 */
void test_salto_temporal_no_dispara_alarma(void) {
    clock_t reloj;
    alarma_activada = false;

    reloj = ClockCreate(TICK_PER_SECOND, simulador_alarma);
    ClockSetupCurrentTime(reloj, PRE_ALARM_TIME);
    ClockSetupAlarm(reloj, ALARM_TIME);
    ClockToggleAlarm(reloj);
    ClockSetupCurrentTime(reloj, POST_ALARM_TIME);
    TEST_ASSERT_FALSE(alarma_activada);
}
/* === End of documentation ==================================================================== */
