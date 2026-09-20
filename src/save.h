#include <stdint.h>
#include <tice.h>
#include <math.h>

#pragma once

#include "TINYSTL/unordered_map.h"

void writeSave(uint24_t seed, uint24_t x, uint24_t y, uint8_t &current_selection, tinystl::unordered_map<uint24_t, uint8_t> modified_tiles);
void readSave(uint24_t &seed, uint24_t &x, uint24_t &y, uint8_t &current_selection, tinystl::unordered_map<uint24_t, uint8_t> &modified_tiles);