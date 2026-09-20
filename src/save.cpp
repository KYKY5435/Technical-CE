#include <stdint.h>
#include <tice.h>
#include <math.h>
#include <fileioc.h>
#include <graphx.h>
#include <string.h>

#include "random.h"
#include "draw.h"

#include "TINYSTL/unordered_map.h"

// const uint8_t *bufferA = ((uint8_t*)0xD40000);

void writeSave(uint24_t seed, uint24_t x, uint24_t y, uint8_t &current_selection, tinystl::unordered_map<uint24_t, uint8_t> modified_tiles)
{
    gfx_SetDrawBuffer();
    gfx_ZeroScreen();
    gfx_PrintStringXY("Saving", 116, 136); //y-4, x-24
    gfx_SwapDraw();
    uint8_t save = ti_Open("PGSV", "w+");
    ti_Rewind(save);
    ti_Write(&seed, sizeof(seed), 1, save);
    ti_Write(&x, sizeof(x), 1, save);
    ti_Write(&y, sizeof(y), 1, save);
    ti_Write(&current_selection, sizeof(current_selection), 1, save);

    uint24_t count = 0;
    for (auto it = modified_tiles.begin(); it != modified_tiles.end(); ++it)
    {
        uint8_t val = it->second;
        if (val != 0)
        {
            count++;
        }
    }
    ti_Write(&count, sizeof(count), 1, save);
    for (auto it = modified_tiles.begin(); it != modified_tiles.end(); ++it)
    {
        uint24_t key = it->first;
        uint8_t val = it->second;
        if (val != 0)
        {
            ti_Write(&key, sizeof(key), 1, save);
            ti_Write(&val, sizeof(val), 1, save);
        }
    }

    ti_Close(save);

    gfx_SwapDraw();
}

void readSave(uint24_t &seed, uint24_t &x, uint24_t &y, uint8_t &current_selection, tinystl::unordered_map<uint24_t, uint8_t> &modified_tiles)
{
    uint8_t save = ti_Open("PGSV", "r+");

    if (save == 0)
    {
        seed = create_randSeed();
        save = ti_Open("PGSV", "w+");
        ti_Rewind(save);
        ti_Write(&seed, sizeof(seed), 1, save);
        uint24_t readCount = 0;
        uint8_t current_selection_count_plus_1 = 1;
        ti_Write(&readCount, sizeof(readCount), 1, save); // for x
        ti_Write(&readCount, sizeof(readCount), 1, save); // for y
        ti_Write(&current_selection_count_plus_1, sizeof(current_selection_count_plus_1), 1, save); // for current_selection
        ti_Write(&readCount, sizeof(readCount), 1, save); // for modified_tiles
    }
    else
    {
        ti_Rewind(save);
        ti_Read(&seed, sizeof(seed), 1, save);
        ti_Read(&x, sizeof(x), 1, save);
        ti_Read(&y, sizeof(y), 1, save);
        ti_Read(&current_selection, sizeof(current_selection), 1, save);

        uint24_t readCount = 0;
        ti_Read(&readCount, sizeof(readCount), 1, save);
        for (uint24_t i = 0; i < readCount; i++)
        {
            uint24_t key;
            uint8_t val;
            ti_Read(&key, sizeof(key), 1, save);
            ti_Read(&val, sizeof(val), 1, save);
            modified_tiles.insert({key, val});
        }
    }

    ti_Close(save);
}