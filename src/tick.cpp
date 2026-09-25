#include <stdint.h>
#include <tice.h>
#include <math.h>
#include <graphx.h>
#include <string.h>

#include <debug.h>

#include "random.h"
#include "draw.h"
#include "game.h"

#include "gfx/gfx.h"

#include "TINYSTL/unordered_map.h"

const uint8_t TILE_SIZE = 16;

void tick(tinystl::unordered_map<uint24_t, uint8_t> &tick_tiles, tinystl::unordered_map<uint24_t, uint8_t> &modified_tiles, uint24_t top_corner_x, uint24_t top_corner_y)
{
    bool initial_changed = true;
    bool end = false;
    while (!end)
    {
        if (tick_tiles.size() == 0)
        {
            end = true;
            break;
        }
        auto it = tick_tiles.begin();
        const uint24_t tile_val = it->first;
        if (modified_tiles.find(tile_val) == modified_tiles.end())
        {
            tick_tiles.erase(it);
            continue;
        }
        uint8_t modified_val = modified_tiles.find(tile_val)->second;
        const uint8_t tick_val = it->second;
        const uint24_t left = tile_val - 0x2f6e3bu;
        const uint24_t right = tile_val + 0x2f6e3bu;
        const uint24_t up = tile_val - 0x27d4ebu;
        const uint24_t down = tile_val + 0x27d4ebu;

        dbg_printf("----------------------------\n");
        dbg_printf("it = %u\n", it);
        dbg_printf("initial_changed = %u\n", initial_changed);
        dbg_printf("tick_tiles.size() = %u\n", tick_tiles.size());
        dbg_printf("tick_val = %u\n", tick_val);
        dbg_printf("tile_val = %u\n", tile_val);
        dbg_printf("modified_val = %u\n", modified_val);
        dbg_printf("left = %u\n", left);
        dbg_printf("right = %u\n", right);
        dbg_printf("up = %u\n", up);
        dbg_printf("down = %u\n", down);

        if (tick_val != 0 && modified_val != 0)
        {
            switch (tick_val)
            { /*
                 1: add
                 2: delete
                 3: TURN ON electicity, red wire, etc.
                 4: TURN OFF electicity, red wire, etc.
                 */
            case 3:
            case 4:
                if (tick_val == 3)
                {
                    if (modified_val == 1 || modified_val == 3 || modified_val == 5)
                    {
                        modified_tiles[tile_val] = modified_val + 1;

                        tick_tiles.insert({left, 3});
                        tick_tiles.insert({right, 3});
                        tick_tiles.insert({up, 3});
                        tick_tiles.insert({down, 3});

                        modified_val = modified_tiles.find(tile_val)->second;
                    }
                }
                else
                { // 4
                    if (modified_val == 2 || modified_val == 4 || modified_val == 6)
                    {
                        modified_tiles[tile_val] = modified_val - 1;

                        tick_tiles.insert({left, 4});
                        tick_tiles.insert({right, 4});
                        tick_tiles.insert({up, 4});
                        tick_tiles.insert({down, 4});

                        modified_val = modified_tiles.find(tile_val)->second;
                    }
                    if (modified_val == 9) {
                        tick_tiles[left] = 3;
                        tick_tiles[right] = 3;
                        tick_tiles[up] = 3;
                        tick_tiles[down] = 3;
                    }
                }
            case 1:
                if (modified_val == 1 || modified_val == 3 || modified_val == 5)
                {
                    if ((modified_tiles[left] == 1 || modified_tiles[left] == 3 || modified_tiles[left] == 5) || (modified_tiles[right] == 1 || modified_tiles[right] == 3 || modified_tiles[right] == 5))
                    {
                        if ((modified_tiles[up] == 1 || modified_tiles[up] == 3 || modified_tiles[up] == 5) || (modified_tiles[down] == 1 || modified_tiles[down] == 3 || modified_tiles[down] == 5))
                        {
                            modified_tiles[tile_val] = 1;
                        }
                        else
                        {
                            modified_tiles[tile_val] = 3;
                        }
                    }
                    else
                    {
                        if ((modified_tiles[up] == 1 || modified_tiles[up] == 3 || modified_tiles[up] == 5) || (modified_tiles[down] == 1 || modified_tiles[down] == 3 || modified_tiles[down] == 5))
                        {
                            modified_tiles[tile_val] = 5;
                        }
                        else
                        {
                            modified_tiles[tile_val] = 1;
                        }
                    }
                }
                if (modified_val == 2 || modified_val == 4 || modified_val == 6)
                {
                    if ((modified_tiles[left] == 2 || modified_tiles[left] == 4 || modified_tiles[left] == 6 || modified_tiles[left] == 9) || (modified_tiles[right] == 2 || modified_tiles[right] == 4 || modified_tiles[right] == 6 || modified_tiles[right] == 9))
                    {
                        if ((modified_tiles[up] == 2 || modified_tiles[up] == 4 || modified_tiles[up] == 6 || modified_tiles[up] == 9) || (modified_tiles[down] == 2 || modified_tiles[down] == 4 || modified_tiles[down] == 6 || modified_tiles[down] == 9))
                        {
                            modified_tiles[tile_val] = 2;
                        }
                        else
                        {
                            modified_tiles[tile_val] = 4;
                        }
                    }
                    else
                    {
                        if ((modified_tiles[up] == 2 || modified_tiles[up] == 4 || modified_tiles[up] == 6 || modified_tiles[up] == 9) || (modified_tiles[down] == 2 || modified_tiles[down] == 4 || modified_tiles[down] == 6 || modified_tiles[down] == 9))
                        {
                            modified_tiles[tile_val] = 6;
                        }
                        else
                        {
                            modified_tiles[tile_val] = 2;
                        }
                    }
                }
                dbg_printf("AFTERAFTERAFTERAFTERAFTERAFTERAFTERAFTER\n");
                dbg_printf("initial_changed = %u\n", initial_changed);
                dbg_printf("ran the tick_val = 1\n");
                dbg_printf("initial modified_val = %u\n", modified_val);
                dbg_printf("final modified_val = %u\n", modified_tiles[tile_val]);
                if (modified_tiles[tile_val] != modified_val || initial_changed)
                {
                    if (modified_val == 9)
                    {
                        tick_tiles.insert({left, 3});
                        tick_tiles.insert({right, 3});
                        tick_tiles.insert({up, 3});
                        tick_tiles.insert({down, 3});
                    }
                    tick_tiles.insert({left, 1});
                    tick_tiles.insert({right, 1});
                    tick_tiles.insert({up, 1});
                    tick_tiles.insert({down, 1});
                }
                dbg_printf("tick_tiles.size() = %u\n", tick_tiles.size());
                break;
            case 2:
                if (modified_tiles[tile_val] == 9)
                {
                    tick_tiles.insert({left, 4});
                    tick_tiles.insert({right, 4});
                    tick_tiles.insert({up, 4});
                    tick_tiles.insert({down, 4});
                }
                modified_tiles[tile_val] = 0;
                tick_tiles.insert({left, 1});
                tick_tiles.insert({right, 1});
                tick_tiles.insert({up, 1});
                tick_tiles.insert({down, 1});
                break;
            default:
                break;
            }
            for (uint8_t i = 0; i < BASE_X / TILE_SIZE; i++)
            {
                for (uint8_t j = 0; j < BASE_Y / TILE_SIZE; j++)
                {
                    if (tile_val == (i + top_corner_x) * 0x2f6e3bu + (j + top_corner_y) * 0x27d4ebu)
                    {
                        gfx_Sprite_NoClip(gameTiles_tiles[modified_tiles[tile_val]], TILE_SIZE * i, TILE_SIZE * j);
                    }
                }
            }
            initial_changed = false;
        }
        tick_tiles.erase(it);
    }

    tick_tiles.clear();
    gfx_SetTextXY(48, 96);
    gfx_PrintUInt(tick_tiles.size(), 3);

    return;
}