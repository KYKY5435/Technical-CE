#include <stdint.h>
#include <tice.h>
#include <math.h>
#include <graphx.h>
#include <string.h>

#include <debug.h>

#include "random.h"
#include "draw.h"
#include "game.h"

#include "basis/array.cpp"

#include "gfx/gfx.h"

#include "TINYSTL/unordered_map.h"

const uint8_t TILE_SIZE = 16;

enum class Tick_Types : uint8_t
{
    ADD = 0,
    REMOVE,
    NOTHING,
    UPDATE_ELECTICITY
};

struct Tile
{
    uint24_t x;
    uint24_t y;
    uint8_t current_tile_index;
    Tick_Types how_to_update;
};

Tile to_update_tiles[256] = {};
uint8_t tile_count = 0;
uint8_t tick_tile_count = 0;

uint8_t number_of_ticks_left = 0;

/*
True: Successful
False: Did not add a tile (too many already)
*/
bool push_tile(Tile tile_array)
{
    if (tile_count + 1 == tick_tile_count)
        return false;
    to_update_tiles[tile_count++] = tile_array;
    return true;
}

void add_tick_tile(uint24_t x, uint24_t y, uint8_t tile_index, Tick_Types how_to_update)
{
    dbg_printf("111111111111111111111\n");
    dbg_printf("tile_count = %u\n", tile_count);
    dbg_printf("tick_tile_count = %u\n", tick_tile_count);
    dbg_printf("x = %u\n", x - 4);
    dbg_printf("y  = %u\n", y - 2);
    push_tile(Tile{x, y, tile_index, how_to_update});
    number_of_ticks_left++;
    dbg_printf("number_of_ticks_left = %u\n", number_of_ticks_left);
}

void concurrent_tick(tinystl::unordered_map<uint24_t, uint8_t> &modified_tiles)
{
    if (number_of_ticks_left == 0) return;
    dbg_printf("22222222222222222222222222222\n");
    dbg_printf("tile_count = %u\n", tile_count);
    dbg_printf("tick_tile_count = %u\n", tick_tile_count);
    dbg_printf("x = %u\n", x - 4);
    dbg_printf("y  = %u\n", y - 2);
    dbg_printf("number_of_ticks_left = %u\n", number_of_ticks_left);
    Tile current = to_update_tiles[tick_tile_count];
    tick_tile_count++;

    if (current.how_to_update == Tick_Types::NOTHING)
    {
        return;
    }

    number_of_ticks_left--;
    dbg_printf("current.how_to_update = %u\n", current.how_to_update);
    dbg_printf("number_of_ticks_left = %u\n", number_of_ticks_left);

    uint8_t current_tile_index = current.current_tile_index;

    static constexpr uint8_t tiles_no_update[] = {0};

    if (contains(tiles_no_update, sizeof(tiles_no_update) / sizeof(tiles_no_update[0]), current_tile_index))
    {
        to_update_tiles[tick_tile_count - 1].how_to_update = Tick_Types::NOTHING;
        return;
    }

    uint24_t current_x = current.x;
    uint24_t current_y = current.y;
    Tick_Types how_to_update = current.how_to_update;

    uint24_t hashedCoord = hashCoords(current_x, current_y);

    uint8_t left_tile = 0, right_tile = 0, up_tile = 0, down_tile = 0;

    auto it = modified_tiles.find(hashCoords(current_x - 1, current_y));
    if (it != modified_tiles.end())
        left_tile = it->second;

    it = modified_tiles.find(hashCoords(current_x + 1, current_y));
    if (it != modified_tiles.end())
        right_tile = it->second;

    it = modified_tiles.find(hashCoords(current_x, current_y + 1));
    if (it != modified_tiles.end())
        up_tile = it->second;

    it = modified_tiles.find(hashCoords(current_x, current_y - 1));
    if (it != modified_tiles.end())
        down_tile = it->second;

    static constexpr uint8_t dead_wire_tiles[] = {1, 3, 5};
    static constexpr uint8_t live_wire_tiles[] = {2, 4, 6};

    switch (how_to_update)
    {
    case Tick_Types::ADD:
        switch (current_tile_index)
        {
        case 2:
        case 4:
        case 6:
            if (contains(live_wire_tiles, 3, left_tile) || contains(live_wire_tiles, 3, right_tile))
            {
                if (contains(live_wire_tiles, 3, up_tile) || contains(live_wire_tiles, 3, down_tile))
                {
                    modified_tiles[hashedCoord] = 2;
                    tilemap_buffer[current_x % 128][current_y % 128] = 2;
                }
                else
                {
                    modified_tiles[hashedCoord] = 4;
                    tilemap_buffer[current_x % 128][current_y % 128] = 4;
                }
            }
            else
            {
                if (contains(live_wire_tiles, 3, up_tile) || contains(live_wire_tiles, 3, down_tile))
                {
                    modified_tiles[hashedCoord] = 6;
                    tilemap_buffer[current_x % 128][current_y % 128] = 6;
                }
                else
                {
                    modified_tiles[hashedCoord] = 2;
                    tilemap_buffer[current_x % 128][current_y % 128] = 2;
                }
            }
            break;
        case 1:
        case 3:
        case 5:
            if (contains(dead_wire_tiles, 3, left_tile) || contains(dead_wire_tiles, 3, right_tile))
            {
                if (contains(dead_wire_tiles, 3, up_tile) || contains(dead_wire_tiles, 3, down_tile))
                {
                    modified_tiles[hashedCoord] = 1;
                    tilemap_buffer[current_x % 128][current_y % 128] = 1;
                }
                else
                {
                    modified_tiles[hashedCoord] = 3;
                    tilemap_buffer[current_x % 128][current_y % 128] = 3;
                }
            }
            else
            {
                if (contains(dead_wire_tiles, 3, up_tile) || contains(dead_wire_tiles, 3, down_tile))
                {
                    modified_tiles[hashedCoord] = 5;
                    tilemap_buffer[current_x % 128][current_y % 128] = 5;
                }
                else
                {
                    modified_tiles[hashedCoord] = 1;
                    tilemap_buffer[current_x % 128][current_y % 128] = 1;
                }
            }
            break;
        }
        if (modified_tiles[hashedCoord] != current_tile_index || number_of_ticks_left == 0)
        {
            add_tick_tile(current_x - 1, current_y, left_tile, Tick_Types::ADD);
            add_tick_tile(current_x, current_y - 1, down_tile, Tick_Types::ADD);
            add_tick_tile(current_x + 1, current_y, right_tile, Tick_Types::ADD);
            add_tick_tile(current_x, current_y + 1, up_tile, Tick_Types::ADD);
        }
        to_update_tiles[tick_tile_count - 1].how_to_update = Tick_Types::NOTHING;
        break;
    case Tick_Types::REMOVE:

        if (current_tile_index == 9)
        {
            add_tick_tile(current_x - 1, current_y, left_tile, Tick_Types::UPDATE_ELECTICITY);
            add_tick_tile(current_x, current_y - 1, down_tile, Tick_Types::UPDATE_ELECTICITY);
            add_tick_tile(current_x + 1, current_y, right_tile, Tick_Types::UPDATE_ELECTICITY);
            add_tick_tile(current_x, current_y + 1, up_tile, Tick_Types::UPDATE_ELECTICITY);
        }
        modified_tiles[hashedCoord] = 0;
        tilemap_buffer[current_x][current_y] = 0;
        add_tick_tile(current_x - 1, current_y, left_tile, Tick_Types::ADD);
        add_tick_tile(current_x, current_y - 1, down_tile, Tick_Types::ADD);
        add_tick_tile(current_x + 1, current_y, right_tile, Tick_Types::ADD);
        add_tick_tile(current_x, current_y + 1, up_tile, Tick_Types::ADD);

        to_update_tiles[tick_tile_count - 1].how_to_update = Tick_Types::NOTHING;
        break;
    default:
        break;
    }
    // draw
    gfx_SetDrawScreen();
    gfx_Sprite(gameTiles_tiles[tilemap_buffer[current_x % 128][current_y % 128]], (current_x - x) * TILE_SIZE, (current_y - y) * TILE_SIZE);
    gfx_SetDrawBuffer();
}

/*
WILL BE REMOVED DO NOT USE!!!!!!!
*/
void tick(tinystl::unordered_map<uint24_t, uint8_t> &tick_tiles, tinystl::unordered_map<uint24_t, uint8_t> &modified_tiles)
{
    if (tick_tiles.size() == 0)
    {
        return;
    }
    auto it = tick_tiles.begin();
    const uint24_t tile_val = it->first;
    if (modified_tiles.find(tile_val) == modified_tiles.end())
    {
        tick_tiles.erase(it);
        return;
    }
    uint8_t modified_val = modified_tiles.find(tile_val)->second;
    const uint8_t tick_val = it->second;
    const uint24_t left = tile_val - 0x2f6e3bu;
    const uint24_t right = tile_val + 0x2f6e3bu;
    const uint24_t up = tile_val - 0x27d4ebu;
    const uint24_t down = tile_val + 0x27d4ebu;

    dbg_printf("----------------------------\n");
    dbg_printf("it = %u\n", it);
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
        // the tick routine
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
                if (modified_val == 9)
                {
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
            dbg_printf("ran the tick_val = 1\n");
            dbg_printf("initial modified_val = %u\n", modified_val);
            dbg_printf("final modified_val = %u\n", modified_tiles[tile_val]);
            if (modified_tiles[tile_val] != modified_val)
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
        // the drawing routine
        for (uint8_t i = 0; i < BASE_X / TILE_SIZE; i++)
        {
            for (uint8_t j = 0; j < BASE_Y / TILE_SIZE; j++)
            {
                if (tile_val == (i + x) * 0x2f6e3bu + (j + y) * 0x27d4ebu)
                {
                    gfx_Sprite_NoClip(gameTiles_tiles[modified_tiles[tile_val]], TILE_SIZE * i, TILE_SIZE * j);
                }
            }
        }
    }
    tick_tiles.erase(it);

    tick_tiles.clear();
    gfx_SetTextXY(48, 96);
    gfx_PrintUInt(tick_tiles.size(), 3);

    return;
}