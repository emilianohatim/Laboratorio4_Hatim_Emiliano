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

/** @file reloj.c
 ** @brief Implementación de la biblioteca para gestión del reloj
 */
/* === Headers files inclusions ================================================================ */

#include "reloj.h"
#include <string.h>

/* === Macros definitions ====================================================================== */

#define UNITS_PER_TEN      10U
#define SECONDS_PER_MINUTE 60U
#define MINUTES_PER_HOUR   60U
#define HOURS_PER_DAY      24U
#define SECONDS_PER_DAY    (HOURS_PER_DAY * MINUTES_PER_HOUR * SECONDS_PER_MINUTE)

#define HOUR_TENS          0
#define HOUR_ONES          1
#define MINUTE_TENS        2
#define MINUTE_ONES        3
#define SECOND_TENS        4
#define SECOND_ONES        5

/* === Private data type declarations ========================================================== */

struct clock_s {
    uint32_t current_time;
    uint32_t alarm_time;
    uint16_t ticks_per_second;
    uint16_t ticks_count;
    bool time_is_valid;
    bool alarm_enabled;
    clock_event_t alarm_handler;
};

/* === Private function declarations =========================================================== */

static uint32_t TimeToSeconds(const hora_t time);

static void SecondsToTime(uint32_t seconds, hora_t time);

/* === Private variable definitions ============================================================ */

/* === Public variable definition  ============================================================= */

/* === Private function definitions ============================================================ */

static uint32_t TimeToSeconds(const hora_t time) {
    uint32_t seconds = UNITS_PER_TEN * time[HOUR_TENS] + time[HOUR_ONES];
    seconds = MINUTES_PER_HOUR * seconds + UNITS_PER_TEN * time[MINUTE_TENS] + time[MINUTE_ONES];
    seconds = SECONDS_PER_MINUTE * seconds + UNITS_PER_TEN * time[SECOND_TENS] + time[SECOND_ONES];

    return seconds;
}

static void SecondsToTime(uint32_t seconds, hora_t time) {
    time[SECOND_ONES] = seconds % UNITS_PER_TEN;
    time[SECOND_TENS] = (seconds / UNITS_PER_TEN) % (SECONDS_PER_MINUTE / UNITS_PER_TEN);
    seconds = seconds / SECONDS_PER_MINUTE;

    time[MINUTE_ONES] = seconds % UNITS_PER_TEN;
    time[MINUTE_TENS] = (seconds / UNITS_PER_TEN) % (MINUTES_PER_HOUR / UNITS_PER_TEN);
    seconds = seconds / MINUTES_PER_HOUR;

    time[HOUR_ONES] = seconds % UNITS_PER_TEN;
    time[HOUR_TENS] = seconds / UNITS_PER_TEN;
}

/* === Public function definitions ============================================================ */

/* === Public function implementation ========================================================== */

clock_t ClockCreate(unsigned int ticks_per_second, void * alarm_handler) {
    static struct clock_s instancia;

    clock_t self = &instancia;
    self->time_is_valid = false;
    self->ticks_per_second = ticks_per_second;
    self->ticks_count = 0;
    self->current_time = 0;
    self->alarm_time = 0;
    self->alarm_handler = (clock_event_t)alarm_handler;
    self->alarm_enabled = false;
    return self;
}

bool ClockGetCurrentTime(clock_t self, hora_t current_time) {
    SecondsToTime(self->current_time, current_time);
    return self->time_is_valid;
}

bool ClockSetupCurrentTime(clock_t self, const hora_t current_time) {
    self->current_time = TimeToSeconds(current_time);
    self->time_is_valid = true;
    return true;
}

void ClockNewTick(clock_t self) {
    self->ticks_count++;
    if (self->ticks_count < self->ticks_per_second) {
        return;
    }
    self->ticks_count = 0;
    self->current_time++;
    if (self->current_time >= SECONDS_PER_DAY) {
        self->current_time = 0;
    }
    if (self->alarm_enabled && self->current_time == self->alarm_time){
        if(self->alarm_enabled != NULL){
            self->alarm_handler(true);
        }
    }
}

void ClockSetupAlarm(clock_t self, const hora_t alarm_time){
    self->alarm_time = TimeToSeconds(alarm_time);
}

void ClockGetAlarm(clock_t self, hora_t alarm_time){
    SecondsToTime(self->alarm_time, alarm_time);
}

void ClockToggleAlarm(clock_t self){
    self->alarm_enabled = !self->alarm_enabled;
}

bool ClockGetAlarmEnabled(clock_t self){
    return self->alarm_enabled;
}

void ClockPostponeAlarm(clock_t self, uint8_t minutos){
    self->alarm_time += (minutos * SECONDS_PER_MINUTE);
    if(self->alarm_time >= SECONDS_PER_DAY){
        self->alarm_time = SECONDS_PER_DAY;
    }
}
/* === End of documentation ==================================================================== */
