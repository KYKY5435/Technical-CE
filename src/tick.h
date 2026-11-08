#include <stdint.h>
#include <tice.h>
#include <math.h>

#pragma once

#include "TINYSTL/unordered_map.h"

enum class Tick_Types : uint8_t
{
    ADD = 0,
    REMOVE,
    NOTHING,
    UPDATE_ELECTICITY
};

void add_tick_tile(uint24_t x, uint24_t y, uint8_t tile_index, Tick_Types how_to_update);
void concurrent_tick(tinystl::unordered_map<uint24_t, uint8_t> &modified_tiles);
void tick(tinystl::unordered_map<uint24_t, uint8_t> &tick_tiles, tinystl::unordered_map<uint24_t, uint8_t> &modified_tiles);