#include <graphx.h>
#include <keypadc.h>
#include <debug.h>
#include <tice.h>
#include <string.h>
#include <math.h>
#include <stdint.h>
#include <fileioc.h>

#include "save.h"
#include "draw.h"
#include "tick.h"
#include "random.h"
#include "perlin.h"

#include "TINYSTL/unordered_map.h"

#include "gfx/gfx.h"

#define BASE_X GFX_LCD_WIDTH
#define BASE_Y GFX_LCD_HEIGHT

#define NUMBER_OF_TILES 16
#define TILE_SIZE 16

void init();
void game();
void tile_selection_menu(uint8_t &current_selection, const tinystl::unordered_map<uint24_t, uint8_t> modified_tiles, uint24_t x, uint24_t y);

uint24_t seed = 0;
uint24_t x = 0, y = 0;

void init()
{
    kb_SetMode(MODE_3_CONTINUOUS);
    gfx_SetClipRegion(0, 0, BASE_X, BASE_Y);
    gfx_SetMonospaceFont(8);
    // lcd_Control = 0x13925; // 4bpp //not anymore
    gfx_ZeroScreen();
    gfx_SetDrawBuffer();
    gfx_ZeroScreen();
    gfx_SetTransparentColor(0xff);

    gfx_SetTextFGColor(0x1);
    gfx_SetTextBGColor(0x0);

    game();
}

void game()
{
    // player x is x+=4
    // player y is += 2

    tinystl::unordered_map<uint24_t, uint8_t> modified_tiles;
    modified_tiles[0] = 0;

    tinystl::unordered_map<uint24_t, uint8_t> tick_tiles;
    tick_tiles[0] = 0;

    gfx_sprite_t *curser_bg = gfx_MallocSprite(16, 16);

    uint8_t tile_selection = 1;

    readSave(seed, x, y, tile_selection, modified_tiles);

    perlinInit(seed);

    uint8_t cx = 0, cy = 0;
    /*
    Should the level be generated
    */
    bool generate = false;
    /*
    false: veritcal is generated (x movement)
    true horizontal is generated (y movement)
    */
    bool generateHorizontal = false;
    /*
    generate horizontal/vertical on the x = 0, y = 0 or on the other corner
    */
    bool generateTopLeft = false;

    gfx_SetPalette(game8, sizeof_game8, 0);

    render_level(seed, modified_tiles, x, y, true);

    gfx_PrintStringXY("Tasks:", 0, 96);
    gfx_SetTextXY(48, 96);
    gfx_PrintUInt(0u, 3);
    gfx_PrintStringXY("x:", 0, 104);
    gfx_SetTextXY(16, 104);
    gfx_PrintUInt(x, 8);
    gfx_PrintStringXY("y:", 0, 112);
    gfx_SetTextXY(16, 112);
    gfx_PrintUInt(y, 8);

    gfx_GetSprite_NoClip(curser_bg, 64, 32);
    gfx_TransparentSprite_NoClip(cursor, 64, 32);

    gfx_SwapDraw();

    while (!kb_IsDown(kb_KeyClear))
    {
        if (kb_AnyKey())
        {
            cx = 0;
            cy = 0;
            msleep(20);

            if (kb_IsDown(kb_KeyUp))
            {
                generate = true;
                generateHorizontal = true;
                generateTopLeft = true;
                cy = 1;
            }
            if (kb_IsDown(kb_KeyDown))
            {
                generate = true;
                generateHorizontal = true;
                generateTopLeft = false;
                cy = 1;
            }
            if (kb_IsDown(kb_KeyLeft))
            {
                generate = true;
                generateHorizontal = false;
                generateTopLeft = true;
                cy = 0;
                cx = 1;
            }
            if (kb_IsDown(kb_KeyRight))
            {
                generate = true;
                generateHorizontal = false;
                generateTopLeft = false;
                cy = 0;
                cx = 1;
            }
            if (kb_IsDown(kb_Key2nd))
            {
                gfx_SetDrawScreen();
                modified_tiles[(x + 4) * 0x2f6e3bu + (y + 2) * 0x27d4ebu] = tile_selection;

                tick_tiles[(x + 4) * 0x2f6e3bu + (y + 2) * 0x27d4ebu] = 1;
                tick(tick_tiles, modified_tiles, x, y);

                gfx_GetSprite_NoClip(curser_bg, 64, 32);
                gfx_TransparentSprite_NoClip(cursor, 64, 32);

                gfx_SetDrawBuffer();
            }
            if (kb_IsDown(kb_KeyAlpha))
            {
                if (modified_tiles[(x + 4) * 0x2f6e3bu + (y + 2) * 0x27d4ebu] != 0)
                {
                    gfx_SetDrawScreen();

                    tick_tiles[(x + 4) * 0x2f6e3bu + (y + 2) * 0x27d4ebu] = 2;
                    tick(tick_tiles, modified_tiles, x, y);

                    modified_tiles[(x + 4) * 0x2f6e3bu + (y + 2) * 0x27d4ebu] = 0;
                    gfx_Sprite_NoClip(gameTiles_tiles[0], 64, 32);
                    gfx_GetSprite_NoClip(curser_bg, 64, 32);
                    gfx_TransparentSprite_NoClip(cursor, 64, 32);

                    gfx_SetDrawBuffer();
                }
            }
            if (kb_IsDown(kb_KeyMode))
            {
                tile_selection_menu(tile_selection, modified_tiles, x, y);
            }

            if (generate)
            {
                gfx_SetDrawScreen();
                gfx_Sprite_NoClip(curser_bg, 64, 32);
                gfx_SetDrawBuffer();

                gfx_SetClipRegion(0, 0, BASE_X, BASE_Y - 3 * TILE_SIZE / 2);
                render_level(seed, modified_tiles, x, y, false, generateHorizontal, generateTopLeft, cx, cy, 2);
                x += (generateTopLeft) ? -cx : cx;
                y += (generateTopLeft) ? -cy : cy;
                generate = false;

                gfx_SetDrawScreen();
                gfx_SetTextXY(16, 104);
                gfx_PrintUInt(x, 8);
                gfx_SetTextXY(16, 112);
                gfx_PrintUInt(y, 8);

                gfx_GetSprite_NoClip(curser_bg, 64, 32);
                gfx_TransparentSprite_NoClip(cursor, 64, 32);

                gfx_SetDrawBuffer();

                gfx_SetDrawScreen();
                gfx_ZeroScreen();

                for (uint8_t i = 0; i < 8; i++)
                {
                    for (uint8_t j = 0; j < 8 - 1; j++)
                    {
                        gfx_SetTextXY(TILE_SIZE * i * 2, TILE_SIZE * j * 2);
                        if (perlin2d(2*(x+i), 2*(y+j)) <=50) {
                            gfx_Sprite(gameTiles_tiles[28], TILE_SIZE*i*2, TILE_SIZE*j*2);
                        } else {
                            gfx_Sprite(gameTiles_tiles[0], TILE_SIZE*i*2, TILE_SIZE*j*2);
                        } 

                        gfx_PrintUInt(perlin2d(2*(x + i), 2*(y + j)), 3);
                    }
                }
                gfx_SetDrawBuffer();
            }
        }

        // tick(tick_tiles, modified_tiles,x,y); not needed if nothing happens
    }

    writeSave(seed, x, y, tile_selection, modified_tiles);

    free(curser_bg);
    modified_tiles.clear();
}

void tile_selection_menu(uint8_t &current_selection, const tinystl::unordered_map<uint24_t, uint8_t> modified_tiles, uint24_t x, uint24_t y)
{
    uint8_t possible_tile_selections[] = {0, 1, 7, 8, 9, 10, 14};

    render_tile_selection_menu(current_selection, possible_tile_selections, sizeof(possible_tile_selections));

    const uint8_t ROW_SIZE = 9;
    const uint8_t COLUMN_SIZE = 7;

    // 9 max x
    // 7 max y

    uint8_t cursor_selection = 0;

    for (uint8_t j = 0; j < sizeof(possible_tile_selections) / sizeof(possible_tile_selections[0]); j++)
    {
        if (possible_tile_selections[j] == current_selection)
        {
            cursor_selection = j;
        }
    }

    gfx_sprite_t *cursor_bg = gfx_MallocSprite(16, 16);

    gfx_GetSprite_NoClip(cursor_bg, 8 + cursor_selection % ROW_SIZE * TILE_SIZE, 8 + cursor_selection / ROW_SIZE * TILE_SIZE);
    gfx_TransparentSprite_NoClip(cursor, 8 + cursor_selection % ROW_SIZE * TILE_SIZE, 8 + cursor_selection / ROW_SIZE * TILE_SIZE);

    bool generate = false;

    while (!kb_IsDown(kb_KeyAlpha) && !kb_IsDown(kb_KeyClear))
    {
        if (kb_AnyKey())
        {
            generate = false;
            uint8_t prev = cursor_selection;
            if (kb_IsDown(kb_KeyLeft))
            {
                generate = true;
                cursor_selection--;
            }
            if (kb_IsDown(kb_KeyRight))
            {
                generate = true;
                cursor_selection++;
            }
            if (kb_IsDown(kb_KeyDown))
            {
                generate = true;
                cursor_selection += ROW_SIZE;
            }

            if (kb_IsDown(kb_KeyUp))
            {
                generate = true;
                cursor_selection -= ROW_SIZE;
            }

            if (cursor_selection == 0xFF)
            {
                cursor_selection = 0;
            }

            if (cursor_selection > sizeof(possible_tile_selections) - 1)
            {
                cursor_selection = sizeof(possible_tile_selections) - 1;
            }

            if (generate)
            {
                gfx_Sprite_NoClip(cursor_bg, 8 + prev % ROW_SIZE * TILE_SIZE, 8 + prev / ROW_SIZE * TILE_SIZE);
                gfx_GetSprite_NoClip(cursor_bg, 8 + cursor_selection % ROW_SIZE * TILE_SIZE, 8 + cursor_selection / ROW_SIZE * TILE_SIZE);
                gfx_TransparentSprite_NoClip(cursor, 8 + cursor_selection % ROW_SIZE * TILE_SIZE, 8 + cursor_selection / ROW_SIZE * TILE_SIZE);
            }

            msleep(200);
        }
    }

    current_selection = possible_tile_selections[cursor_selection];

    while (kb_AnyKey())
        ;

    gfx_SetDrawBuffer();
    gfx_SwapDraw();

    free(cursor_bg);
}
