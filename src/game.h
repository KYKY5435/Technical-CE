#pragma once

#include <stdint.h>
#include <graphx.h>

#include "TINYSTL/unordered_map.h"

void init();
void game();
void tile_selection_menu(uint8_t &current_selection, const tinystl::unordered_map<uint24_t, uint8_t> modified_tiles, uint24_t x, uint24_t y);

extern uint24_t seed, x, y;
extern uint8_t tilemap_buffer;

inline constexpr uint24_t BASE_X = GFX_LCD_WIDTH;
inline constexpr uint8_t BASE_Y  = GFX_LCD_HEIGHT;