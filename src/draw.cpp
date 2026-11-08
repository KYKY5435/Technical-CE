#include <graphx.h>
#include <debug.h>
#include <string.h>
#include <stdint.h>

#include "random.h"
#include "perlin.h"

#include "TINYSTL/unordered_map.h"

#include "gfx/gfx.h"
#include "game.h"

#define DRAW_OFFSET 0xFFFF80

#define TILE_SIZE 16

#define SPEED 4

#define WIDTH_OFFSET 5

uint24_t calc_offset(uint24_t axis, bool direction, bool generateTopLeft)
{
    if (direction)
    {
        if (generateTopLeft)
        {
            return (axis - 1) & DRAW_OFFSET;
        }
        else
        {
            return (axis + 14 + 1) & DRAW_OFFSET;
        }
    }
    return axis & DRAW_OFFSET;
}

void render_level(uint24_t seed, tinystl::unordered_map<uint24_t, uint8_t> &modified_tiles, bool whole_level, bool moveX, bool generateTopLeft, const uint8_t speed)
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
                gfx_Sprite_NoClip(gameTiles_tiles[tilemap_buffer[x%128+i][y%128+j]], TILE_SIZE * i, TILE_SIZE * j);
            }
        }
    }
    else
    {
        //update preloaded tiles
        const uint24_t x128 = calc_offset(x, moveX, generateTopLeft);
        const uint24_t y128 = calc_offset(y, !moveX, generateTopLeft);
        dbg_printf("x128: %u\n", x128);
        dbg_printf("y128: %u\n", y128);
        dbg_printf("moveX: %u\n", moveX);
        if (preloaded_x != x128 || preloaded_y != y128)
        {
            preloaded_x = x128;
            preloaded_y = y128;
            preload_values(modified_tiles);
            for (uint8_t i = 0; i < 14; i++)
            {
                x += moveX * (generateTopLeft ? -1 : 1);
                y += !moveX * (generateTopLeft ? -1 : 1);

                render_level(seed, modified_tiles, whole_level, moveX, generateTopLeft, speed);
            }
            dbg_printf("x& DRAW_OFFSET: %u\n", x & DRAW_OFFSET);
            dbg_printf("y& DRAW_OFFSET: %u\n", y & DRAW_OFFSET);
            dbg_printf("preloaded_x: %u\n", preloaded_x);
            dbg_printf("preloaded_y: %u\n", preloaded_y);
        }
        /*
        cx or cy is 1 or 0 (burh can be bool)
        lets say generateTopLeft so that means that
            if generateTopLeft is true then
                if moveX then
                    move level right ->
                else (moveY)
                    move level down v|
            if generateTopLeft is false then
                if moveX then
                    move level left <-
                else (moveY)
                    move level up ^|
        DO NOT USE modified_tiles
        USE tilemap_buffer

        Sizes:
        16x16 sprites
        320x240 screen
        ->
        15 width
        15 height

        I want to smooth it out, so 8 frames of movement (SPEED pixels a move)

        */
        uint24_t newcoord = 0;
        if (generateTopLeft)
        {
            if (moveX)
            { // ->
                newcoord = (x - 1) % 128;

                gfx_sprite_t *preload[15] = {};

                // prerender new sprites
                for (uint8_t j = 0; j < 15; j++)
                {
                    preload[j] = gameTiles_tiles[tilemap_buffer[newcoord][(y + j) % 128]];
                }
                gfx_SetClipRegion(0, 0, SPEED, 15 * TILE_SIZE);
                for (uint8_t i = 1; i < 5; i++)
                {
                    gfx_CopyRectangle(gfx_screen, gfx_buffer, 0, 0, SPEED, 0, 15 * TILE_SIZE - SPEED, 15 * TILE_SIZE);
                    for (uint8_t j = 0; j < 15; j++)
                    {
                        gfx_Sprite(preload[j], -TILE_SIZE + SPEED * i, 16 * j);
                    }
                    gfx_SwapDraw();
                }
            }
            else
            { // down
                newcoord = (y - 1) % 128;

                gfx_sprite_t *preload[15] = {};

                // prerender new sprites
                for (uint8_t j = 0; j < 15; j++)
                {
                    preload[j] = gameTiles_tiles[tilemap_buffer[(x + j) % 128][newcoord]];
                }
                gfx_SetClipRegion(0, 0, 15 * TILE_SIZE, SPEED);
                for (uint8_t i = 1; i < 5; i++)
                {
                    gfx_CopyRectangle(gfx_screen, gfx_buffer, 0, 0, 0, SPEED, 15 * TILE_SIZE, 15 * TILE_SIZE - SPEED);
                    for (uint8_t j = 0; j < 15; j++)
                    {
                        gfx_Sprite(preload[j], 16 * j, -TILE_SIZE + SPEED * i);
                    }
                    gfx_SwapDraw();
                }
            }
        }
        else
        {
            if (moveX)
            { // <-
                newcoord = (x + 1 + 14) % 128;

                gfx_sprite_t *preload[15] = {};

                // prerender new sprites
                for (uint8_t j = 0; j < 15; j++)
                {
                    preload[j] = gameTiles_tiles[tilemap_buffer[newcoord][(y + j) % 128]];
                }
                gfx_SetClipRegion(15 * TILE_SIZE - SPEED, 0, 15 * TILE_SIZE, 15 * TILE_SIZE);
                for (uint8_t i = 1; i < 5; i++)
                {
                    gfx_CopyRectangle(gfx_screen, gfx_buffer, SPEED, 0, 0, 0, 15 * TILE_SIZE - SPEED, 15 * TILE_SIZE);
                    for (uint8_t j = 0; j < 15; j++)
                    {
                        gfx_Sprite(preload[j], 15 * TILE_SIZE - SPEED * i, 16 * j);
                    }
                    gfx_SwapDraw();
                }
            }
            else
            { // up
                newcoord = (y + 1 + 14) % 128;

                gfx_sprite_t *preload[15] = {};

                // prerender new sprites
                for (uint8_t j = 0; j < 15; j++)
                {
                    preload[j] = gameTiles_tiles[tilemap_buffer[(x + j) % 128][newcoord]];
                }
                gfx_SetClipRegion(0, 15 * TILE_SIZE - SPEED, 15 * TILE_SIZE, 15 * TILE_SIZE);
                for (uint8_t i = 1; i < 5; i++)
                {
                    gfx_CopyRectangle(gfx_screen, gfx_buffer, 0, SPEED, 0, 0, 15 * TILE_SIZE, 15 * TILE_SIZE - SPEED);
                    for (uint8_t j = 0; j < 15; j++)
                    {
                        gfx_Sprite(preload[j], 16 * j, 15 * TILE_SIZE - SPEED * i);
                    }
                    gfx_SwapDraw();
                }
            }
        }
    }
    gfx_SetClipRegion(0, 0, GFX_LCD_WIDTH, GFX_LCD_HEIGHT);
}
/*
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
                    new_tiles[j] = tilemap_buffer[(x+j)  % 128][newcoord % 128];
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
                    new_tiles[j] = tilemap_buffer[(x+j)  % 128][newcoord % 128];
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
                    new_tiles[j] = tilemap_buffer[newcoord%128][(y+j)%128];
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
                newcoord = x + cx - WIDTH_OFFSET;
                uint8_t new_tiles[BASE_Y / TILE_SIZE  - 1];
                for (uint8_t j = 0; j < BASE_Y / TILE_SIZE - 1; j++)
                {
                    new_tiles[j] = tilemap_buffer[newcoord%128][(y+j)%128];
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
*/

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

    for (uint8_t j = 0; j < possible_tile_selections_count / sizeof(possible_tile_selections[0]); j++)
    {
        if (possible_tile_selections[j] == current_selection)
        {
            cursor_selection = j;
        }
    }

    for (uint8_t j = 0; j < possible_tile_selections_count && j < ROW_SIZE * COLUMN_SIZE; j++)
    {
        gfx_Sprite_NoClip(gameTiles_tiles[possible_tile_selections[j]], 8 + j % ROW_SIZE * TILE_SIZE, 8 + j / ROW_SIZE * TILE_SIZE);
    }

    gfx_SwapDraw();
    gfx_SetDrawScreen();
}