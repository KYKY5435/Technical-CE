#include <stdint.h>
#include <tice.h>
#include <math.h>

#pragma once

#include "TINYSTL/unordered_map.h"

void tick(tinystl::unordered_map<uint24_t, uint8_t> &tick_tiles, tinystl::unordered_map<uint24_t, uint8_t> &modified_tiles, uint24_t top_corner_x, uint24_t  top_corner_y);