/* generated from: obj/Technicl.o */
#define HAS_INIT_ARRAY 0
#define HAS_FINI_ARRAY 0
#define HAS_CLOCK 1
#define HAS_ABORT 0
#define HAS_EXIT 0
#define HAS_C99__EXIT 0
#define HAS_RUN_PRGM 0
#define HAS_MAIN_ARGC_ARGV 0
#define HAS_ATEXIT 0
#ifdef __ASSEMBLER__
.macro LIBLOAD_LIBS
	.global __libload_library_FILEIOC
	.type __libload_library_FILEIOC, @object
__libload_library_FILEIOC:
	.db 0xC0, "FILEIOC", 0, 8
	.global _ti_Open
	.type _ti_Open, @function
_ti_Open:
	jp 3
	.global _ti_Close
	.type _ti_Close, @function
_ti_Close:
	jp 9
	.global _ti_Write
	.type _ti_Write, @function
_ti_Write:
	jp 12
	.global _ti_Read
	.type _ti_Read, @function
_ti_Read:
	jp 15
	.global _ti_Rewind
	.type _ti_Rewind, @function
_ti_Rewind:
	jp 45
	.global __libload_library_GRAPHX
	.type __libload_library_GRAPHX, @object
__libload_library_GRAPHX:
	.db 0xC0, "GRAPHX", 0, 14
	.global _gfx_Begin
	.type _gfx_Begin, @function
_gfx_Begin:
	jp 0
	.global _gfx_End
	.type _gfx_End, @function
_gfx_End:
	jp 3
	.global _gfx_SetColor
	.type _gfx_SetColor, @function
_gfx_SetColor:
	jp 6
	.global _gfx_SetPalette
	.type _gfx_SetPalette, @function
_gfx_SetPalette:
	jp 12
	.global _gfx_SetDraw
	.type _gfx_SetDraw, @function
_gfx_SetDraw:
	jp 27
	.global _gfx_SwapDraw
	.type _gfx_SwapDraw, @function
_gfx_SwapDraw:
	jp 30
	.global _gfx_BlitRectangle
	.type _gfx_BlitRectangle, @function
_gfx_BlitRectangle:
	jp 39
	.global _gfx_PrintUInt
	.type _gfx_PrintUInt, @function
_gfx_PrintUInt:
	jp 48
	.global _gfx_PrintStringXY
	.type _gfx_PrintStringXY, @function
_gfx_PrintStringXY:
	jp 54
	.global _gfx_SetTextXY
	.type _gfx_SetTextXY, @function
_gfx_SetTextXY:
	jp 57
	.global _gfx_SetTextBGColor
	.type _gfx_SetTextBGColor, @function
_gfx_SetTextBGColor:
	jp 60
	.global _gfx_SetTextFGColor
	.type _gfx_SetTextFGColor, @function
_gfx_SetTextFGColor:
	jp 63
	.global _gfx_SetMonospaceFont
	.type _gfx_SetMonospaceFont, @function
_gfx_SetMonospaceFont:
	jp 75
	.global _gfx_FillRectangle_NoClip
	.type _gfx_FillRectangle_NoClip, @function
_gfx_FillRectangle_NoClip:
	jp 126
	.global _gfx_SetClipRegion
	.type _gfx_SetClipRegion, @function
_gfx_SetClipRegion:
	jp 129
	.global _gfx_AllocSprite
	.type _gfx_AllocSprite, @function
_gfx_AllocSprite:
	jp 168
	.global _gfx_Sprite
	.type _gfx_Sprite, @function
_gfx_Sprite:
	jp 171
	.global _gfx_Sprite_NoClip
	.type _gfx_Sprite_NoClip, @function
_gfx_Sprite_NoClip:
	jp 177
	.global _gfx_TransparentSprite_NoClip
	.type _gfx_TransparentSprite_NoClip, @function
_gfx_TransparentSprite_NoClip:
	jp 180
	.global _gfx_GetSprite
	.type _gfx_GetSprite, @function
_gfx_GetSprite:
	jp 183
	.global _gfx_SetTransparentColor
	.type _gfx_SetTransparentColor, @function
_gfx_SetTransparentColor:
	jp 225
	.global _gfx_ZeroScreen
	.type _gfx_ZeroScreen, @function
_gfx_ZeroScreen:
	jp 228
	.global _gfx_CopyRectangle
	.type _gfx_CopyRectangle, @function
_gfx_CopyRectangle:
	jp 282
	.global __libload_library_KEYPADC
	.type __libload_library_KEYPADC, @object
__libload_library_KEYPADC:
	.db 0xC0, "KEYPADC", 0, 2
	.global _kb_AnyKey
	.type _kb_AnyKey, @function
_kb_AnyKey:
	jp 6
.endm
#endif
#define HAS_LIBLOAD 1
