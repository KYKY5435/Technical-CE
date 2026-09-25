#include <graphx.h>
#include <debug.h>
#include <string.h>
#include <stdint.h>

#include "random.h"
#include "perlin.h"

#include "TINYSTL/unordered_map.h"

#include "gfx/gfx.h"
#include "game.h"

#define TILE_SIZE 16

#define WIDTH_OFFSET 5

void render_level(uint24_t seed, const tinystl::unordered_map<uint24_t, uint8_t> modified_tiles, uint24_t x, uint24_t y, bool whole_level, bool generateHorizontal, bool generateTopLeft, uint8_t cx, uint8_t cy, const uint8_t speed)
{
    if (whole_level)
    {
        gfx_SetDrawBuffer();
        gfx_ZeroScreen();
        gfx_PrintStringXY("Loading", 0, 0);
        
        gfx_SwapDraw();
        for (uint8_t i = 0; i < BASE_X / TILE_SIZE - WIDTH_OFFSET; i++)
        {
            for (uint8_t j = 0; j < BASE_Y / TILE_SIZE; j++)
            {
                gfx_Sprite_NoClip(gameTiles_tiles[hashTerrain(seed, (x + i), (y + j), modified_tiles)], TILE_SIZE * i, TILE_SIZE * j);
            }
        }
    }
    else
    {
        uint24_t newcoord = 0;
        if (generateHorizontal)
        {
            // y changes
            if (generateTopLeft)
            {
                // cy = 1
                // move down
                newcoord = y - cy;
                uint8_t new_tiles[BASE_X / TILE_SIZE];
                for (uint8_t j = 0; j < BASE_X / TILE_SIZE; j++)
                {
                    new_tiles[j] = hashTerrain(seed, (x + j), newcoord, modified_tiles);
                }
                for (uint8_t i = speed; i <= TILE_SIZE; i += speed)
                {
                    gfx_CopyRectangle(gfx_screen, gfx_buffer, 0, 0, 0, cy * speed, BASE_X - TILE_SIZE * WIDTH_OFFSET, BASE_Y - cy * speed);
                    for (uint8_t j = 0; j < BASE_X / TILE_SIZE - WIDTH_OFFSET; j++)
                    {
                        gfx_Sprite(gameTiles_tiles[new_tiles[j]], j * TILE_SIZE, -1 * TILE_SIZE + cy * i);
                    }
                    gfx_SwapDraw();
                }
            }
            else
            {
                // cy = 1
                //move up
                newcoord = y + cy + BASE_Y / TILE_SIZE - 1;
                uint8_t new_tiles[BASE_X / TILE_SIZE];
                for (uint8_t j = 0; j < BASE_X / TILE_SIZE; j++)
                {
                    new_tiles[j] = hashTerrain(seed, (x + j), newcoord, modified_tiles);
                }
                for (uint8_t i = speed; i <= TILE_SIZE; i += speed)
                {
                    gfx_CopyRectangle(gfx_screen, gfx_buffer, 0, cy * speed, 0, 0, BASE_X - TILE_SIZE * WIDTH_OFFSET, BASE_Y - cy * speed);
                    for (uint8_t j = 0; j < BASE_X / TILE_SIZE - WIDTH_OFFSET; j++)
                    {
                        gfx_Sprite(gameTiles_tiles[new_tiles[j]], j * TILE_SIZE, BASE_Y - cy * i);
                    }
                    gfx_SwapDraw();
                }
            }
        }
        else
        {
            // x changes
            if (generateTopLeft)
            {
                // cx = 1
                // moving ->
                newcoord = x - cx;
                uint8_t new_tiles[BASE_Y / TILE_SIZE  - 1];
                for (uint8_t j = 0; j < BASE_Y / TILE_SIZE; j++)
                {
                    new_tiles[j] = hashTerrain(seed, newcoord, (y + j), modified_tiles);
                }
                for (uint8_t i = speed; i <= TILE_SIZE; i += speed)
                {
                    gfx_CopyRectangle(gfx_screen, gfx_buffer, 0, 0, cx * speed, 0, BASE_X - cx * speed - TILE_SIZE * WIDTH_OFFSET, BASE_Y);
                    for (uint8_t j = 0; j < BASE_Y / TILE_SIZE; j++)
                    {
                        gfx_Sprite(gameTiles_tiles[new_tiles[j]], -1 * TILE_SIZE + cx * i, j * TILE_SIZE);
                    }
                    gfx_SwapDraw();
                }
            }
            else
            {
                // cx = 1
                // moving <-
                newcoord = x + cx + BASE_X / TILE_SIZE  - 1 - WIDTH_OFFSET;
                uint8_t new_tiles[BASE_Y / TILE_SIZE  - 1];
                for (uint8_t j = 0; j < BASE_Y / TILE_SIZE - 1; j++)
                {
                    new_tiles[j] = hashTerrain(seed, newcoord, (y + j), modified_tiles);
                }
                for (uint8_t i = speed; i <= TILE_SIZE; i += speed)
                {
                    gfx_CopyRectangle(gfx_screen, gfx_buffer, cx * speed, 0, 0, 0, BASE_X - cx * speed - TILE_SIZE * WIDTH_OFFSET, BASE_Y);
                    for (uint8_t j = 0; j < BASE_Y / TILE_SIZE; j++)
                    {
                        gfx_Sprite(gameTiles_tiles[new_tiles[j]], BASE_X - cx * i - TILE_SIZE * WIDTH_OFFSET, j * TILE_SIZE);
                    }
                    gfx_SwapDraw();
                }
            }
        }
    }
}

void render_tile_selection_menu(uint8_t current_selection, uint8_t possible_tile_selections[], uint8_t possible_tile_selections_count)
{

    gfx_SetDrawBuffer();
    gfx_SetColor(0x11);
    gfx_FillRectangle_NoClip(4, 4, 160 - 8, 120 - 8);
    gfx_SetColor(0x00);
    gfx_FillRectangle_NoClip(6, 6, 160 - 12, 120 - 12);

    const uint8_t ROW_SIZE = 9;
    const uint8_t COLUMN_SIZE = 7;

    uint8_t i = current_selection - current_selection % ROW_SIZE;

    uint8_t cursor_selection = 0;

    for (uint8_t j = 0; j < possible_tile_selections_count/ sizeof(possible_tile_selections[0]); j++ ) {
        if (possible_tile_selections[j] == current_selection) {
            cursor_selection = j;
        }
    }

    for (uint8_t j = 0; j < possible_tile_selections_count && j < ROW_SIZE * COLUMN_SIZE; j ++) {
        gfx_Sprite_NoClip(gameTiles_tiles[possible_tile_selections[j]], 8+j%ROW_SIZE*TILE_SIZE, 8+j/ROW_SIZE*TILE_SIZE);
    }

    

    gfx_SwapDraw();
    gfx_SetDrawScreen();
}