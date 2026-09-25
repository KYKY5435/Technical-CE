#include <stdint.h>
#include <tice.h>
#include <math.h>

#pragma once

#include "TINYSTL/unordered_map.h"

uint8_t hashTerrain(uint24_t seed, uint24_t x, uint24_t y, tinystl::unordered_map<uint24_t, uint8_t> &modified_tiles);
uint24_t create_randSeed();
void preload_values(tinystl::unordered_map<uint24_t, uint8_t> &modified_tiles);