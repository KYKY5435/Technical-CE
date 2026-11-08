#include <stdint.h>
#include <tice.h>
#include <math.h>

#pragma once

void perlinInit(uint24_t seed);
uint8_t perlin2d(uint24_t x, uint24_t y);