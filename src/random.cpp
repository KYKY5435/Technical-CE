#include <graphx.h>
#include <stdint.h>
#include <tice.h>
#include <math.h>

#include "TINYSTL/unordered_map.h"

uint24_t hash2D(uint24_t seed, uint24_t x, uint24_t y)

{
    static uint8_t erosion = seed;
}

uint8_t hashTerrain(uint24_t seed, uint24_t x, uint24_t y, tinystl::unordered_map<uint24_t, uint8_t> modified_tiles)
{
    uint24_t h = x * 0x2f6e3bu + y * 0x27d4ebu;
    auto it = modified_tiles[h];
    if (!it) {
        return 0;
        //return hash2D(seed, x, y) % NUMBER_OF_TILES;
    } else {
        return it;
    }
}

uint24_t create_randSeed()
{
    uint8_t d = 0, m = 0;
    uint16_t y = 0;
    boot_GetDate(&d, &m, &y);

    uint8_t h = 0, min = 0, s = 0;
    boot_GetTime(&h, &min, &s);

    return 0x119911 ^ (y << 8) ^ (m << 20) ^ (d << 14) ^ (h << 9) ^ (min << 3) ^ s;
}

