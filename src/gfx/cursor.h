#ifndef cursor_include_file
#define cursor_include_file

#ifdef __cplusplus
extern "C" {
#endif

#define cursor_width 16
#define cursor_height 16
#define cursor_size 258
#define cursor ((gfx_sprite_t*)cursor_data)
extern unsigned char cursor_data[258];

#ifdef __cplusplus
}
#endif

#endif
