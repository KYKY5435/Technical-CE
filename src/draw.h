#include <stdint.h>
#include <tice.h>
#include <math.h>

#pragma once

#include "TINYSTL/unordered_map.h"

void render_level(uint24_t seed, const tinystl::unordered_map<uint24_t, uint8_t> modified_tiles, uint24_t x = 0, uint24_t y = 0, bool whole_level = false, bool generateHorizontal = false, bool generateTopLeft = false, uint8_t cx = 0, uint8_t cy = 0, const uint8_t speed = 1);
void render_tile_selection_menu(uint8_t current_selection, uint8_t possible_tile_selections[], uint8_t possible_tile_selections_count);