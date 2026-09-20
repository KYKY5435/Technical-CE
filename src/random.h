#include <stdint.h>
#include <tice.h>
#include <math.h>

#pragma once

#include "TINYSTL/unordered_map.h"

uint24_t hash2D(uint24_t seed, uint24_t x, uint24_t y);
uint8_t hashTerrain(uint24_t seed, uint24_t x, uint24_t y, tinystl::unordered_map<uint24_t, uint8_t> modified_tiles);
uint24_t create_randSeed();