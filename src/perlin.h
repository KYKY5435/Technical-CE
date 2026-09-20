#include <stdint.h>
#include <tice.h>
#include <math.h>

#pragma once

void perlinInit(uint24_t seed);
int24_t fade(int24_t t);
int24_t lerp(int24_t t, int24_t a, int24_t b);
int24_t grad(uint8_t hash, int24_t x, int24_t y);
uint8_t perlin2d(uint24_t x, uint24_t y);