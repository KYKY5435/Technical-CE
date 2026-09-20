#pragma once

#include <stdint.h>

#include "TINYSTL/unordered_map.h"

uint24_t hash2D(uint24_t seed, uint24_t x, uint24_t y);
void init();
void game();
void tile_selection_menu(uint8_t &current_selection, const tinystl::unordered_map<uint24_t, uint8_t> modified_tiles, uint24_t x, uint24_t y);

extern uint24_t seed, x, y;