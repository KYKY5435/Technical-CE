	.section	.text,"ax",@progbits
	.assume	ADL = 1
	.file	"llvm-link"
	.section	.text.__Z11calc_offsetjbb,"ax",@progbits
	.globl	__Z11calc_offsetjbb             ; -- Begin function _Z11calc_offsetjbb
	.type	__Z11calc_offsetjbb,@function
__Z11calc_offsetjbb:                    ; @_Z11calc_offsetjbb
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	ld	bc, -128
	bit	0, (ix + 9)
	jr	z, .LBB0_4
; %bb.1:
	bit	0, (ix + 12)
	jr	z, .LBB0_3
; %bb.2:
	dec	hl
	jr	.LBB0_4
	.local	.LBB0_3
.LBB0_3:
	ld	de, 15
	add	hl, de
	.local	.LBB0_4
.LBB0_4:
	call	__iand
	pop	ix
	ret
	.local	.Lfunc_end0
.Lfunc_end0:
	.size	__Z11calc_offsetjbb, .Lfunc_end0-__Z11calc_offsetjbb
                                        ; -- End function
	.section	.text.__Z12render_leveljRN7tinystl13unordered_mapIjhNS_9allocatorEEEbbbh,"ax",@progbits
	.globl	__Z12render_leveljRN7tinystl13unordered_mapIjhNS_9allocatorEEEbbbh ; -- Begin function _Z12render_leveljRN7tinystl13unordered_mapIjhNS_9allocatorEEEbbbh
	.type	__Z12render_leveljRN7tinystl13unordered_mapIjhNS_9allocatorEEEbbbh,@function
__Z12render_leveljRN7tinystl13unordered_mapIjhNS_9allocatorEEEbbbh: ; @_Z12render_leveljRN7tinystl13unordered_mapIjhNS_9allocatorEEEbbbh
; %bb.0:
	ld	hl, -73
	call	__frameset
	ld	hl, _tilemap_buffer
	ld	(ix - 54), hl
	bit	0, (ix + 12)
	jp	z, .LBB1_7
; %bb.1:
	ld	hl, 1
	push	hl
	call	_gfx_SetDraw
	pop	hl
	call	_gfx_ZeroScreen
	or	a, a
	sbc	hl, hl
	push	hl
	push	hl
	ld	hl, _.str
	push	hl
	call	_gfx_PrintStringXY
	pop	hl
	pop	hl
	pop	hl
	call	_gfx_SwapDraw
	ld	bc, 15
	ld	de, 0
	ld	(ix - 48), de
	.local	.LBB1_2
.LBB1_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_4 Depth 2
	ld	hl, (ix - 48)
	or	a, a
	sbc	hl, bc
	jp	z, .LBB1_62
; %bb.3:                                ;   in Loop: Header=BB1_2 Depth=1
	ld	hl, (ix - 48)
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	(ix - 60), hl
	xor	a, a
	ld	iyl, a
	ld	(ix - 51), de
	.local	.LBB1_4
.LBB1_4:                                ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ld	hl, (ix - 51)
	push	bc
	pop	de
	or	a, a
	sbc	hl, bc
	jr	z, .LBB1_6
; %bb.5:                                ;   in Loop: Header=BB1_4 Depth=2
	ld	hl, (_x)
	ld	(ix - 57), iy
	ld	bc, 127
	call	__iand
	push	hl
	pop	iy
	ld	hl, (_y)
	call	__iand
	ex	de, hl
	lea	hl, iy + 0
	ld	c, 7
	call	__ishl
	add	hl, de
	ex	de, hl
	ld	hl, (ix - 54)
	add	hl, de
	ld	de, (ix - 51)
	add	hl, de
	ld	a, (hl)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	bc, 3
	call	__imulu
	ex	de, hl
	ld	hl, _gameTiles_tiles_data
	add	hl, de
	ld	hl, (hl)
	ld	de, (ix - 57)
	push	de
	ld	de, (ix - 60)
	push	de
	push	hl
	call	_gfx_Sprite_NoClip
	ld	bc, 15
	ld	iy, (ix - 57)
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 51)
	inc	hl
	ld	(ix - 51), hl
	ld	l, 16
	ld	a, iyl
	add	a, l
	ld	iyl, a
	jr	.LBB1_4
	.local	.LBB1_6
.LBB1_6:                                ;   in Loop: Header=BB1_2 Depth=1
	ld	hl, (ix - 48)
	inc	hl
	ld	(ix - 48), hl
	ld	hl, (ix - 54)
	ld	bc, 128
	add	hl, bc
	ld	(ix - 54), hl
	push	de
	pop	bc
	ld	de, 0
	jp	.LBB1_2
	.local	.LBB1_7
.LBB1_7:
	ld	hl, (ix + 6)
	ld	(ix - 60), hl
	ld	hl, (ix + 9)
	ld	(ix - 54), hl
	ld	a, (ix + 15)
	ld	(ix - 51), a
	ld	l, (ix + 18)
	ld	e, (ix + 21)
	ld	(ix - 63), e
	ld	iy, (_x)
	bit	0, a
	ld	(ix - 48), l                    ; 1-byte Folded Spill
	jp	z, .LBB1_9
; %bb.8:
                                        ; kill: def $l killed $l def $uhl
	ld	c, 23
	call	__ishl
	add	hl, hl
	sbc	hl, hl
	ld	bc, 15
	call	__ior
	ex	de, hl
	add	iy, de
	ld	hl, (_y)
	jr	.LBB1_12
	.local	.LBB1_9
.LBB1_9:
	ld	bc, (_y)
	bit	0, l
	jr	z, .LBB1_11
; %bb.10:
	dec	bc
	ld	(ix - 57), bc
	jr	.LBB1_13
	.local	.LBB1_11
.LBB1_11:
	ld	de, 15
	push	bc
	pop	hl
	add	hl, de
	.local	.LBB1_12
.LBB1_12:
	ld	(ix - 57), hl
	.local	.LBB1_13
.LBB1_13:
	lea	hl, iy + 0
	ld	bc, -128
	call	__iand
	ex	de, hl
	ld	hl, (ix - 57)
	call	__iand
	push	hl
	pop	bc
	ld	hl, (_preloaded_x)
	or	a, a
	sbc	hl, de
	jp	nz, .LBB1_20
; %bb.14:
	ld	hl, (_preloaded_y)
	or	a, a
	sbc	hl, bc
	jp	nz, .LBB1_20
	.local	.LBB1_15
.LBB1_15:                               ; %.loopexit15
	bit	0, (ix - 48)                    ; 1-byte Folded Reload
	jp	z, .LBB1_27
; %bb.16:
	bit	0, (ix - 51)                    ; 1-byte Folded Reload
	jp	z, .LBB1_31
; %bb.17:
	lea	iy, ix - 45
	ld	hl, (_x)
	ld	bc, 127
	add	hl, bc
	call	__iand
	ld	(ix - 57), hl
	ld	(ix - 45), b
	lea	hl, iy + 0
	inc	hl
	ld	bc, 44
	ex	de, hl
	ld	(ix - 54), iy
	lea	hl, iy + 0
	ldir
	ld	hl, (_y)
	ld	(ix - 51), hl
	ld	de, 45
	ld	a, 7
	ld	bc, 0
	ld	(ix - 48), bc
	.local	.LBB1_18
.LBB1_18:                               ; =>This Inner Loop Header: Depth=1
	ld	hl, (ix - 48)
	push	de
	pop	iy
	or	a, a
	sbc	hl, de
	jp	z, .LBB1_34
; %bb.19:                               ;   in Loop: Header=BB1_18 Depth=1
	ld	hl, (ix - 51)
	ld	bc, 127
	call	__iand
	ex	de, hl
	ld	hl, (ix - 57)
	ld	c, a
	call	__ishl
	push	hl
	pop	bc
	ld	hl, _tilemap_buffer
	add	hl, bc
	add	hl, de
	ld	c, (hl)
	or	a, a
	sbc	hl, hl
	ld	l, c
	ld	bc, 3
	call	__imulu
	push	hl
	pop	bc
	ld	hl, _gameTiles_tiles_data
	add	hl, bc
	ld	bc, (hl)
	ld	hl, (ix - 54)
	ld	de, (ix - 48)
	add	hl, de
	ld	(hl), bc
	ld	bc, 0
	ld	hl, (ix - 51)
	inc	hl
	ld	(ix - 51), hl
	ex	de, hl
	ld	de, 3
	add	hl, de
	ld	(ix - 48), hl
	lea	de, iy + 0
	jr	.LBB1_18
	.local	.LBB1_20
.LBB1_20:
	ld	(_preloaded_x), de
	ld	(_preloaded_y), bc
	ld	hl, (ix - 54)
	push	hl
	call	__Z14preload_valuesRN7tinystl13unordered_mapIjhNS_9allocatorEEE
	pop	hl
	ld	l, (ix - 48)                    ; 1-byte Folded Reload
	ld	c, 23
	call	__ishl
	add	hl, hl
	sbc	hl, hl
	ld	bc, 1
	call	__ior
	ld	a, (ix - 51)                    ; 1-byte Folded Reload
	bit	0, a
	ld	(ix - 57), hl
	ld	de, 0
	jr	nz, .LBB1_22
; %bb.21:
	ld	(ix - 57), de
	.local	.LBB1_22
.LBB1_22:
	bit	0, a
	jr	nz, .LBB1_24
; %bb.23:
	ex	de, hl
	.local	.LBB1_24
.LBB1_24:
	ld	l, 14
	push	af
	ld	a, (ix - 63)                    ; 1-byte Folded Reload
	ld	iyl, a
	pop	af
	ld	c, (ix - 48)                    ; 1-byte Folded Reload
	ld	(ix - 70), bc
	ld	c, a
	ld	(ix - 73), bc
	.local	.LBB1_25
.LBB1_25:                               ; =>This Inner Loop Header: Depth=1
	ld	a, l
	or	a, a
	jp	z, .LBB1_15
; %bb.26:                               ;   in Loop: Header=BB1_25 Depth=1
	ld	(ix - 64), l                    ; 1-byte Folded Spill
	ld	hl, (_x)
	ld	bc, (ix - 57)
	add	hl, bc
	ld	(_x), hl
	ld	hl, (_y)
	add	hl, de
	ld	(_y), hl
	push	iy
	ld	hl, (ix - 70)
	push	hl
	ld	hl, (ix - 73)
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, (ix - 54)
	push	hl
	ld	hl, (ix - 60)
	push	hl
	ld	(ix - 63), de
	ld	(ix - 67), iy
	call	__Z12render_leveljRN7tinystl13unordered_mapIjhNS_9allocatorEEEbbbh
	ld	iy, (ix - 67)
	ld	de, (ix - 63)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	l, (ix - 64)                    ; 1-byte Folded Reload
	dec	l
	jr	.LBB1_25
	.local	.LBB1_27
.LBB1_27:
	bit	0, (ix - 51)                    ; 1-byte Folded Reload
	jp	z, .LBB1_40
; %bb.28:
	lea	iy, ix - 45
	ld	hl, (_x)
	ld	de, 15
	add	hl, de
	ld	bc, 127
	call	__iand
	ld	(ix - 57), hl
	ld	(ix - 45), b
	lea	hl, iy + 0
	inc	hl
	ld	bc, 44
	ex	de, hl
	ld	(ix - 54), iy
	lea	hl, iy + 0
	ldir
	ld	hl, (_y)
	ld	(ix - 51), hl
	ld	de, 45
	ld	a, 7
	ld	bc, 0
	ld	(ix - 48), bc
	.local	.LBB1_29
.LBB1_29:                               ; =>This Inner Loop Header: Depth=1
	ld	hl, (ix - 48)
	push	de
	pop	iy
	or	a, a
	sbc	hl, de
	jp	z, .LBB1_43
; %bb.30:                               ;   in Loop: Header=BB1_29 Depth=1
	ld	hl, (ix - 51)
	ld	bc, 127
	call	__iand
	ex	de, hl
	ld	hl, (ix - 57)
	ld	c, a
	call	__ishl
	push	hl
	pop	bc
	ld	hl, _tilemap_buffer
	add	hl, bc
	add	hl, de
	ld	c, (hl)
	or	a, a
	sbc	hl, hl
	ld	l, c
	ld	bc, 3
	call	__imulu
	push	hl
	pop	bc
	ld	hl, _gameTiles_tiles_data
	add	hl, bc
	ld	bc, (hl)
	ld	hl, (ix - 54)
	ld	de, (ix - 48)
	add	hl, de
	ld	(hl), bc
	ld	bc, 0
	ld	hl, (ix - 51)
	inc	hl
	ld	(ix - 51), hl
	ex	de, hl
	ld	de, 3
	add	hl, de
	ld	(ix - 48), hl
	lea	de, iy + 0
	jr	.LBB1_29
	.local	.LBB1_31
.LBB1_31:
	lea	iy, ix - 45
	ld	hl, (_y)
	ld	bc, 127
	add	hl, bc
	call	__iand
	ld	(ix - 57), hl
	ld	(ix - 45), b
	lea	hl, iy + 0
	inc	hl
	ld	bc, 44
	ex	de, hl
	ld	(ix - 54), iy
	lea	hl, iy + 0
	ldir
	ld	hl, (_x)
	ld	(ix - 51), hl
	ld	de, 45
	ld	a, 7
	ld	bc, 0
	ld	(ix - 48), bc
	.local	.LBB1_32
.LBB1_32:                               ; =>This Inner Loop Header: Depth=1
	ld	hl, (ix - 48)
	push	de
	pop	iy
	or	a, a
	sbc	hl, de
	jp	z, .LBB1_49
; %bb.33:                               ;   in Loop: Header=BB1_32 Depth=1
	ld	hl, (ix - 51)
	ld	bc, 127
	call	__iand
	ld	c, a
	call	__ishl
	push	hl
	pop	bc
	ld	hl, _tilemap_buffer
	add	hl, bc
	ld	bc, (ix - 57)
	add	hl, bc
	ld	c, (hl)
	or	a, a
	sbc	hl, hl
	ld	l, c
	ld	bc, 3
	call	__imulu
	push	hl
	pop	bc
	ld	hl, _gameTiles_tiles_data
	add	hl, bc
	ld	bc, (hl)
	ld	hl, (ix - 54)
	ld	de, (ix - 48)
	add	hl, de
	ld	(hl), bc
	ld	bc, 0
	ld	hl, (ix - 51)
	inc	hl
	ld	(ix - 51), hl
	ex	de, hl
	ld	de, 3
	add	hl, de
	ld	(ix - 48), hl
	lea	de, iy + 0
	jr	.LBB1_32
	.local	.LBB1_34
.LBB1_34:
	ld	hl, 240
	push	hl
	ld	hl, 4
	push	hl
	push	bc
	push	bc
	call	_gfx_SetClipRegion
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, 5
	ld	bc, 1
	.local	.LBB1_35
.LBB1_35:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_37 Depth 2
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	jp	z, .LBB1_61
; %bb.36:                               ;   in Loop: Header=BB1_35 Depth=1
	ld	hl, 240
	push	hl
	ld	hl, 236
	push	hl
	or	a, a
	sbc	hl, hl
	ex	de, hl
	push	de
	ld	hl, 4
	push	hl
	push	de
	push	de
	ld	hl, 1
	push	hl
	push	de
	ld	(ix - 48), bc
	call	_gfx_CopyRectangle
	ld	hl, 24
	add	hl, sp
	ld	sp, hl
	ld	hl, (ix - 48)
	add	hl, hl
	add	hl, hl
	ld	de, -16
	add	hl, de
	ld	de, 240
	ld	(ix - 57), hl
	ld	iy, 0
	ld	bc, (ix - 54)
	.local	.LBB1_37
.LBB1_37:                               ;   Parent Loop BB1_35 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lea	hl, iy + 0
	or	a, a
	sbc	hl, de
	jr	z, .LBB1_39
; %bb.38:                               ;   in Loop: Header=BB1_37 Depth=2
	ld	(ix - 51), bc
	ld	hl, (ix - 51)
	ld	hl, (hl)
	push	iy
	ld	de, (ix - 57)
	push	de
	push	hl
	ld	(ix - 60), iy
	call	_gfx_Sprite
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix - 51)
	lea	iy, iy + 3
	lea	bc, iy + 0
	ld	de, 16
	ld	iy, (ix - 60)
	add	iy, de
	ld	hl, 240
	ex	de, hl
	jr	.LBB1_37
	.local	.LBB1_39
.LBB1_39:                               ;   in Loop: Header=BB1_35 Depth=1
	call	_gfx_SwapDraw
	ld	bc, (ix - 48)
	inc	bc
	ld	de, 5
	jp	.LBB1_35
	.local	.LBB1_40
.LBB1_40:
	lea	iy, ix - 45
	ld	hl, (_y)
	ld	de, 15
	add	hl, de
	ld	bc, 127
	call	__iand
	ld	(ix - 57), hl
	ld	(ix - 45), b
	lea	hl, iy + 0
	inc	hl
	ld	bc, 44
	ex	de, hl
	ld	(ix - 54), iy
	lea	hl, iy + 0
	ldir
	ld	hl, (_x)
	ld	(ix - 51), hl
	ld	de, 45
	ld	a, 7
	ld	bc, 0
	ld	(ix - 48), bc
	.local	.LBB1_41
.LBB1_41:                               ; =>This Inner Loop Header: Depth=1
	ld	hl, (ix - 48)
	push	de
	pop	iy
	or	a, a
	sbc	hl, de
	jp	z, .LBB1_55
; %bb.42:                               ;   in Loop: Header=BB1_41 Depth=1
	ld	hl, (ix - 51)
	ld	bc, 127
	call	__iand
	ld	c, a
	call	__ishl
	push	hl
	pop	bc
	ld	hl, _tilemap_buffer
	add	hl, bc
	ld	bc, (ix - 57)
	add	hl, bc
	ld	c, (hl)
	or	a, a
	sbc	hl, hl
	ld	l, c
	ld	bc, 3
	call	__imulu
	push	hl
	pop	bc
	ld	hl, _gameTiles_tiles_data
	add	hl, bc
	ld	bc, (hl)
	ld	hl, (ix - 54)
	ld	de, (ix - 48)
	add	hl, de
	ld	(hl), bc
	ld	bc, 0
	ld	hl, (ix - 51)
	inc	hl
	ld	(ix - 51), hl
	ex	de, hl
	ld	de, 3
	add	hl, de
	ld	(ix - 48), hl
	lea	de, iy + 0
	jr	.LBB1_41
	.local	.LBB1_43
.LBB1_43:
	ld	hl, 240
	push	hl
	push	hl
	push	bc
	ld	hl, 236
	push	hl
	call	_gfx_SetClipRegion
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, 5
	ld	bc, 1
	.local	.LBB1_44
.LBB1_44:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_46 Depth 2
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	jp	z, .LBB1_61
; %bb.45:                               ;   in Loop: Header=BB1_44 Depth=1
	ld	hl, 240
	push	hl
	ld	hl, 236
	push	hl
	or	a, a
	sbc	hl, hl
	ex	de, hl
	push	de
	push	de
	push	de
	ld	hl, 4
	push	hl
	ld	hl, 1
	push	hl
	push	de
	ld	(ix - 51), bc
	call	_gfx_CopyRectangle
	ld	bc, 240
	ld	hl, 24
	add	hl, sp
	ld	sp, hl
	ld	hl, (ix - 51)
	add	hl, hl
	add	hl, hl
	ex	de, hl
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	ld	(ix - 57), hl
	ld	iy, 0
	ld	hl, (ix - 54)
	ld	(ix - 48), hl
	.local	.LBB1_46
.LBB1_46:                               ;   Parent Loop BB1_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lea	hl, iy + 0
	or	a, a
	sbc	hl, bc
	jr	z, .LBB1_48
; %bb.47:                               ;   in Loop: Header=BB1_46 Depth=2
	ld	hl, (ix - 48)
	ld	hl, (hl)
	push	iy
	ld	de, (ix - 57)
	push	de
	push	hl
	ld	(ix - 60), iy
	call	_gfx_Sprite
	ld	bc, (ix - 60)
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix - 48)
	lea	iy, iy + 3
	ld	(ix - 48), iy
	ld	de, 16
	push	bc
	pop	iy
	add	iy, de
	ld	hl, 240
	push	hl
	pop	bc
	jr	.LBB1_46
	.local	.LBB1_48
.LBB1_48:                               ;   in Loop: Header=BB1_44 Depth=1
	call	_gfx_SwapDraw
	ld	bc, (ix - 51)
	inc	bc
	ld	de, 5
	jp	.LBB1_44
	.local	.LBB1_49
.LBB1_49:
	ld	hl, 4
	push	hl
	ld	hl, 240
	push	hl
	push	bc
	push	bc
	call	_gfx_SetClipRegion
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, 5
	ld	bc, 1
	.local	.LBB1_50
.LBB1_50:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_52 Depth 2
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	jp	z, .LBB1_61
; %bb.51:                               ;   in Loop: Header=BB1_50 Depth=1
	ld	hl, 236
	push	hl
	ld	hl, 240
	push	hl
	ld	hl, 4
	push	hl
	or	a, a
	sbc	hl, hl
	ex	de, hl
	push	de
	push	de
	push	de
	ld	hl, 1
	push	hl
	push	de
	ld	(ix - 48), bc
	call	_gfx_CopyRectangle
	ld	hl, 24
	add	hl, sp
	ld	sp, hl
	ld	hl, (ix - 48)
	add	hl, hl
	add	hl, hl
	ld	de, -16
	add	hl, de
	ld	de, 240
	ld	(ix - 57), hl
	ld	iy, 0
	ld	bc, (ix - 54)
	.local	.LBB1_52
.LBB1_52:                               ;   Parent Loop BB1_50 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lea	hl, iy + 0
	or	a, a
	sbc	hl, de
	jr	z, .LBB1_54
; %bb.53:                               ;   in Loop: Header=BB1_52 Depth=2
	ld	(ix - 51), bc
	ld	hl, (ix - 51)
	ld	hl, (hl)
	ld	de, (ix - 57)
	push	de
	push	iy
	push	hl
	ld	(ix - 60), iy
	call	_gfx_Sprite
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix - 51)
	lea	iy, iy + 3
	lea	bc, iy + 0
	ld	de, 16
	ld	iy, (ix - 60)
	add	iy, de
	ld	hl, 240
	ex	de, hl
	jr	.LBB1_52
	.local	.LBB1_54
.LBB1_54:                               ;   in Loop: Header=BB1_50 Depth=1
	call	_gfx_SwapDraw
	ld	bc, (ix - 48)
	inc	bc
	ld	de, 5
	jp	.LBB1_50
	.local	.LBB1_55
.LBB1_55:
	ld	hl, 240
	push	hl
	push	hl
	ld	hl, 236
	push	hl
	push	bc
	call	_gfx_SetClipRegion
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, 5
	ld	bc, 1
	.local	.LBB1_56
.LBB1_56:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_58 Depth 2
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	jp	z, .LBB1_61
; %bb.57:                               ;   in Loop: Header=BB1_56 Depth=1
	ld	hl, 236
	push	hl
	ld	hl, 240
	push	hl
	or	a, a
	sbc	hl, hl
	ex	de, hl
	push	de
	push	de
	ld	hl, 4
	push	hl
	push	de
	ld	hl, 1
	push	hl
	push	de
	ld	(ix - 51), bc
	call	_gfx_CopyRectangle
	ld	bc, 240
	ld	hl, 24
	add	hl, sp
	ld	sp, hl
	ld	hl, (ix - 51)
	add	hl, hl
	add	hl, hl
	ex	de, hl
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	ld	(ix - 57), hl
	ld	iy, 0
	ld	hl, (ix - 54)
	ld	(ix - 48), hl
	.local	.LBB1_58
.LBB1_58:                               ;   Parent Loop BB1_56 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lea	hl, iy + 0
	or	a, a
	sbc	hl, bc
	jr	z, .LBB1_60
; %bb.59:                               ;   in Loop: Header=BB1_58 Depth=2
	ld	hl, (ix - 48)
	ld	hl, (hl)
	ld	de, (ix - 57)
	push	de
	push	iy
	push	hl
	ld	(ix - 60), iy
	call	_gfx_Sprite
	ld	bc, (ix - 60)
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix - 48)
	lea	iy, iy + 3
	ld	(ix - 48), iy
	ld	de, 16
	push	bc
	pop	iy
	add	iy, de
	ld	hl, 240
	push	hl
	pop	bc
	jr	.LBB1_58
	.local	.LBB1_60
.LBB1_60:                               ;   in Loop: Header=BB1_56 Depth=1
	call	_gfx_SwapDraw
	ld	bc, (ix - 51)
	inc	bc
	ld	de, 5
	jp	.LBB1_56
	.local	.LBB1_61
.LBB1_61:
	ld	de, 0
	.local	.LBB1_62
.LBB1_62:                               ; %.loopexit
	ld	(ix + 6), de
	ld	(ix + 9), de
	ld	hl, 320
	ld	(ix + 12), hl
	ld	hl, 240
	ld	(ix + 15), hl
	ld	sp, ix
	pop	ix
	jp	_gfx_SetClipRegion
	.local	.Lfunc_end1
.Lfunc_end1:
	.size	__Z12render_leveljRN7tinystl13unordered_mapIjhNS_9allocatorEEEbbbh, .Lfunc_end1-__Z12render_leveljRN7tinystl13unordered_mapIjhNS_9allocatorEEEbbbh
                                        ; -- End function
	.section	.text.__Z26render_tile_selection_menuhPhh,"ax",@progbits
	.globl	__Z26render_tile_selection_menuhPhh ; -- Begin function _Z26render_tile_selection_menuhPhh
	.type	__Z26render_tile_selection_menuhPhh,@function
__Z26render_tile_selection_menuhPhh:    ; @_Z26render_tile_selection_menuhPhh
; %bb.0:
	ld	hl, -10
	call	__frameset
	ld	hl, (ix + 9)
	ld	(ix - 3), hl
	ld	a, (ix + 12)
	ld	(ix - 4), a
	ld	hl, 1
	push	hl
	call	_gfx_SetDraw
	pop	hl
	ld	hl, 17
	push	hl
	call	_gfx_SetColor
	pop	hl
	ld	hl, 112
	push	hl
	ld	hl, 152
	push	hl
	ld	hl, 4
	push	hl
	push	hl
	call	_gfx_FillRectangle_NoClip
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	call	_gfx_SetColor
	pop	hl
	ld	hl, 108
	push	hl
	ld	hl, 148
	push	hl
	ld	hl, 6
	push	hl
	push	hl
	call	_gfx_FillRectangle_NoClip
	ld	a, (ix - 4)                     ; 1-byte Folded Reload
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	cp	a, 63
	jr	c, .LBB2_2
; %bb.1:
	ld	a, 63
	.local	.LBB2_2
.LBB2_2:
	ld	e, 112
	ld	iyl, 0
	ld	c, 8
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	iyh, c
	.local	.LBB2_3
.LBB2_3:                                ; =>This Inner Loop Header: Depth=1
	ld	b, iyl
	ld	c, 9
	call	__bdivu
	ld	d, a
	ld	(ix - 7), hl
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jp	z, .LBB2_5
; %bb.4:                                ;   in Loop: Header=BB2_3 Depth=1
	ld	l, e
	ld	h, d
	mlt	hl
	ld	(ix - 9), e
	ld	(ix - 8), d
	ld	a, iyh
	add	a, l
	ld	e, a
	ld	hl, (ix - 3)
	ld	a, (hl)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	bc, 3
	call	__imulu
	push	hl
	pop	bc
	ld	hl, _gameTiles_tiles_data
	add	hl, bc
	push	af
	ld	a, iyl
	ld	(ix - 4), a                     ; 1-byte Folded Spill
	pop	af
	push	af
	ld	a, iyh
	ld	(ix - 10), a                    ; 1-byte Folded Spill
	pop	af
	ld	iy, (hl)
	ld	b, (ix - 4)                     ; 1-byte Folded Reload
	ld	c, 9
	call	__bdivu
	or	a, a
	sbc	hl, hl
	ld	l, e
	ld	b, 4
	call	__bshl
	ld	e, 8
	add	a, e
	ld	e, a
	push	de
	push	hl
	push	iy
	call	_gfx_Sprite_NoClip
	push	af
	ld	a, (ix - 10)                    ; 1-byte Folded Reload
	ld	iyh, a
	pop	af
	push	af
	ld	a, (ix - 4)                     ; 1-byte Folded Reload
	ld	iyl, a
	pop	af
	ld	e, (ix - 9)
	ld	d, (ix - 8)
	pop	hl
	pop	hl
	pop	hl
	ld	l, 16
	ld	a, iyh
	add	a, l
	ld	iyh, a
	inc	iyl
	ld	hl, (ix - 3)
	inc	hl
	ld	(ix - 3), hl
	ld	hl, (ix - 7)
	dec	hl
	jp	.LBB2_3
	.local	.LBB2_5
.LBB2_5:
	call	_gfx_SwapDraw
	ld	(ix + 6), 0
	ld	sp, ix
	pop	ix
	jp	_gfx_SetDraw
	.local	.Lfunc_end2
.Lfunc_end2:
	.size	__Z26render_tile_selection_menuhPhh, .Lfunc_end2-__Z26render_tile_selection_menuhPhh
                                        ; -- End function
	.section	.text.__Z4initv,"ax",@progbits
	.globl	__Z4initv                       ; -- Begin function _Z4initv
	.type	__Z4initv,@function
__Z4initv:                              ; @_Z4initv
; %bb.0:
	ld	l, 3
	ld	a, (-720896)
	or	a, l
	ld	l, a
	ld	(-720896), a
	ld	hl, 8
	push	hl
	call	_gfx_SetMonospaceFont
	pop	hl
	call	_gfx_ZeroScreen
	ld	hl, 1
	push	hl
	call	_gfx_SetDraw
	pop	hl
	call	_gfx_ZeroScreen
	ld	hl, 255
	push	hl
	call	_gfx_SetTransparentColor
	pop	hl
	ld	hl, 1
	push	hl
	call	_gfx_SetTextFGColor
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	call	_gfx_SetTextBGColor
	pop	hl
	jp	__Z4gamev
	.local	.Lfunc_end3
.Lfunc_end3:
	.size	__Z4initv, .Lfunc_end3-__Z4initv
                                        ; -- End function
	.section	.text.__Z4gamev,"ax",@progbits
	.globl	__Z4gamev                       ; -- Begin function _Z4gamev
	.type	__Z4gamev,@function
__Z4gamev:                              ; @_Z4gamev
; %bb.0:
	ld	hl, -83
	call	__frameset
	xor	a, a
	ld	(ix - 73), a
	lea	iy, ix - 12
	lea	hl, ix - 24
	ld	(ix - 64), hl
	lea	hl, ix - 28
	ld	(ix - 67), hl
	lea	hl, ix - 40
	ld	(ix - 76), hl
	lea	hl, ix - 52
	ld	(ix - 61), hl
	ld	(ix - 12), a
	lea	de, iy + 0
	inc	de
	lea	hl, iy + 0
	ld	(ix - 55), iy
	ld	bc, 11
	ldir
	or	a, a
	sbc	hl, hl
	ld	(ix - 24), hl
	pea	ix - 24
	push	iy
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	(hl), 0
	ld	(ix - 24), 0
	ld	iy, (ix - 64)
	lea	de, iy + 0
	inc	de
	lea	hl, iy + 0
	ld	bc, 11
	ldir
	or	a, a
	sbc	hl, hl
	ld	(ix - 27), hl
	pea	ix - 27
	push	iy
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	(hl), 0
	ld	hl, _malloc
	push	hl
	ld	hl, 16
	push	hl
	push	hl
	call	_gfx_AllocSprite
	ld	(ix - 58), hl
	pop	hl
	pop	hl
	pop	hl
	ld	(ix - 28), 1
	ld	hl, (ix - 55)
	push	hl
	ld	hl, (ix - 67)
	push	hl
	ld	hl, _y
	push	hl
	ld	hl, _x
	push	hl
	ld	hl, _seed
	push	hl
	call	__Z8readSaveRjS_S_RhRN7tinystl13unordered_mapIjhNS1_9allocatorEEE
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (_seed)
	push	hl
	call	__Z10perlinInitj
	pop	hl
	ld	hl, (_x)
	ld	bc, -128
	call	__iand
	ld	(_preloaded_x), hl
	ld	hl, (_y)
	call	__iand
	ld	(_preloaded_y), hl
	ld	hl, (ix - 55)
	push	hl
	call	__Z14preload_valuesRN7tinystl13unordered_mapIjhNS_9allocatorEEE
	pop	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, 16
	push	hl
	ld	hl, _game8
	push	hl
	call	_gfx_SetPalette
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (_seed)
	ld	bc, 1
	push	bc
	ld	de, 0
	push	de
	push	de
	push	bc
	ld	de, (ix - 55)
	push	de
	push	hl
	call	__Z12render_leveljRN7tinystl13unordered_mapIjhNS_9allocatorEEEbbbh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 104
	push	hl
	ld	hl, 240
	push	hl
	ld	hl, _.str.11
	push	hl
	call	_gfx_PrintStringXY
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 104
	push	hl
	ld	hl, 256
	push	hl
	call	_gfx_SetTextXY
	pop	hl
	pop	hl
	ld	hl, (_x)
	ld	de, 8
	push	de
	push	hl
	call	_gfx_PrintUInt
	pop	hl
	pop	hl
	ld	hl, 112
	push	hl
	ld	hl, 240
	push	hl
	ld	hl, _.str.1
	push	hl
	call	_gfx_PrintStringXY
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 112
	push	hl
	ld	hl, 256
	push	hl
	call	_gfx_SetTextXY
	pop	hl
	pop	hl
	ld	hl, (_y)
	ld	de, 8
	push	de
	push	hl
	call	_gfx_PrintUInt
	pop	hl
	pop	hl
	ld	hl, 32
	push	hl
	ld	hl, 64
	push	hl
	ld	hl, (ix - 58)
	push	hl
	call	_gfx_GetSprite
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 32
	push	hl
	ld	hl, 64
	push	hl
	ld	hl, _cursor_data
	push	hl
	call	_gfx_TransparentSprite_NoClip
	pop	hl
	pop	hl
	pop	hl
	call	_gfx_SwapDraw
	ld	hl, -720868
	xor	a, a
	ld	(ix - 70), a                    ; 1-byte Folded Spill
	.local	.LBB4_1
.LBB4_1:                                ; =>This Inner Loop Header: Depth=1
	push	de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, e
	ld	h, d
	pop	de
	ld	a, l
	bit	6, a
	jp	nz, .LBB4_31
; %bb.2:                                ;   in Loop: Header=BB4_1 Depth=1
	call	_kb_AnyKey
	or	a, a
	jp	z, .LBB4_30
; %bb.3:                                ;   in Loop: Header=BB4_1 Depth=1
	ld	hl, 20
	push	hl
	call	_msleep
	pop	hl
	ld	iy, -720866
	ld	l, (iy)
	ld	h, (iy + 1)
	ld	e, 8
	ld	a, l
	and	a, e
	ld	e, a
	or	a, a
	ld	a, -1
	jr	nz, .LBB4_5
; %bb.4:                                ;   in Loop: Header=BB4_1 Depth=1
	ld	a, 0
	.local	.LBB4_5
.LBB4_5:                                ;   in Loop: Header=BB4_1 Depth=1
	ld	(ix - 77), a
	ld	l, (iy)
	ld	h, (iy + 1)
	ld.sis	bc, 1
	call	__sand
	ld	a, e
	or	a, a
	ld	a, -1
	jr	z, .LBB4_7
; %bb.6:                                ;   in Loop: Header=BB4_1 Depth=1
	ld	a, 0
	.local	.LBB4_7
.LBB4_7:                                ;   in Loop: Header=BB4_1 Depth=1
	ld	c, a
	ld	e, 1
	ld	a, l
	xor	a, e
	ld	l, a
	ld	(ix - 82), c                    ; 1-byte Folded Spill
	ld	(ix - 78), l                    ; 1-byte Folded Spill
	ld	a, l
	and	a, c
	ld	l, a
	bit	0, l
	jr	nz, .LBB4_9
; %bb.8:                                ;   in Loop: Header=BB4_1 Depth=1
	xor	a, a
	ld	(ix - 70), a                    ; 1-byte Folded Spill
	.local	.LBB4_9
.LBB4_9:                                ;   in Loop: Header=BB4_1 Depth=1
	ld	l, (iy)
	ld	h, (iy + 1)
	ld	e, 2
	ld	a, l
	and	a, e
	ld	l, a
	or	a, a
	ld	a, -1
	jr	nz, .LBB4_11
; %bb.10:                               ;   in Loop: Header=BB4_1 Depth=1
	ld	a, 0
	.local	.LBB4_11
.LBB4_11:                               ;   in Loop: Header=BB4_1 Depth=1
	ld	(ix - 79), a
	ld	e, (iy)
	ld	d, (iy + 1)
	ld	a, l
	or	a, a
	ld	l, -1
	jr	z, .LBB4_13
; %bb.12:                               ;   in Loop: Header=BB4_1 Depth=1
	ld	l, 0
	.local	.LBB4_13
.LBB4_13:                               ;   in Loop: Header=BB4_1 Depth=1
	ld	a, e
	bit	2, a
	ld	a, -1
	jr	z, .LBB4_15
; %bb.14:                               ;   in Loop: Header=BB4_1 Depth=1
	ld	a, 0
	.local	.LBB4_15
.LBB4_15:                               ;   in Loop: Header=BB4_1 Depth=1
	ld	(ix - 80), a                    ; 1-byte Folded Spill
	and	a, l
	ld	l, a
	ld	(ix - 81), l                    ; 1-byte Folded Spill
	bit	0, l
	jr	nz, .LBB4_17
; %bb.16:                               ;   in Loop: Header=BB4_1 Depth=1
	ld	a, 1
	ld	(ix - 70), a                    ; 1-byte Folded Spill
	.local	.LBB4_17
.LBB4_17:                               ;   in Loop: Header=BB4_1 Depth=1
	ld	hl, -720878
	push	de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, e
	ld	h, d
	pop	de
	ld	a, l
	bit	5, a
	jp	z, .LBB4_19
; %bb.18:                               ;   in Loop: Header=BB4_1 Depth=1
	or	a, a
	sbc	hl, hl
	push	hl
	call	_gfx_SetDraw
	pop	hl
	ld	iy, (_x)
	ld	de, 4
	add	iy, de
	ld	hl, (_y)
	ld	de, 2
	add	hl, de
	ld	a, (ix - 28)
	ld	de, 0
	push	de
	ld	e, a
	push	de
	push	hl
	push	iy
	call	__Z13add_tick_tilejjh10Tick_Types
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	a, (ix - 28)
	ld	(ix - 83), a
	ld	hl, (_x)
	ld	de, (_y)
	ld	bc, 3108411
	call	__imulu
	push	hl
	pop	iy
	ex	de, hl
	ld	bc, 2610411
	call	__imulu
	ex	de, hl
	add	iy, de
	ld	de, 877250
	add	iy, de
	ld	(ix - 27), iy
	pea	ix - 27
	ld	hl, (ix - 55)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (ix - 83)
	ld	(hl), a
	ld	hl, 32
	push	hl
	ld	hl, 64
	push	hl
	ld	hl, (ix - 58)
	push	hl
	call	_gfx_GetSprite
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 32
	push	hl
	ld	hl, 64
	push	hl
	ld	hl, _cursor_data
	push	hl
	call	_gfx_TransparentSprite_NoClip
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 1
	push	hl
	call	_gfx_SetDraw
	pop	hl
	.local	.LBB4_19
.LBB4_19:                               ;   in Loop: Header=BB4_1 Depth=1
	ld	hl, -720876
	push	de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, e
	ld	h, d
	pop	de
	ld	e, -128
	ld	a, l
	and	a, e
	ld	l, a
	or	a, a
	jp	z, .LBB4_22
; %bb.20:                               ;   in Loop: Header=BB4_1 Depth=1
	ld	hl, (_x)
	ld	bc, 127
	call	__iand
	push	hl
	pop	iy
	ld	de, 4
	add	iy, de
	ld	hl, (_y)
	call	__iand
	ex	de, hl
	lea	hl, iy + 0
	ld	c, 7
	call	__ishl
	push	hl
	pop	bc
	ld	iy, _tilemap_buffer
	add	iy, bc
	add	iy, de
	ld	a, (iy + 2)
	or	a, a
	jp	z, .LBB4_22
; %bb.21:                               ;   in Loop: Header=BB4_1 Depth=1
	or	a, a
	sbc	hl, hl
	push	hl
	call	_gfx_SetDraw
	pop	hl
	ld	hl, (_x)
	ld	de, (_y)
	ld	bc, 3108411
	call	__imulu
	push	hl
	pop	iy
	ex	de, hl
	ld	bc, 2610411
	call	__imulu
	ex	de, hl
	add	iy, de
	ld	de, 877250
	add	iy, de
	ld	(ix - 27), iy
	pea	ix - 27
	ld	hl, (ix - 64)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	(hl), 2
	ld	hl, (ix - 55)
	push	hl
	ld	hl, (ix - 64)
	push	hl
	call	__Z4tickRN7tinystl13unordered_mapIjhNS_9allocatorEEES3_
	pop	hl
	pop	hl
	ld	hl, (_x)
	ld	bc, 127
	call	__iand
	push	hl
	pop	iy
	ld	de, 4
	add	iy, de
	ld	hl, (_y)
	call	__iand
	ex	de, hl
	lea	hl, iy + 0
	ld	c, 7
	call	__ishl
	push	hl
	pop	bc
	ld	iy, _tilemap_buffer
	add	iy, bc
	add	iy, de
	ld	(iy + 2), 0
	ld	hl, (_gameTiles_tiles_data)
	ld	de, 32
	push	de
	ld	de, 64
	push	de
	push	hl
	call	_gfx_Sprite_NoClip
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 32
	push	hl
	ld	hl, 64
	push	hl
	ld	hl, (ix - 58)
	push	hl
	call	_gfx_GetSprite
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 32
	push	hl
	ld	hl, 64
	push	hl
	ld	hl, _cursor_data
	push	hl
	call	_gfx_TransparentSprite_NoClip
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 1
	push	hl
	call	_gfx_SetDraw
	pop	hl
	.local	.LBB4_22
.LBB4_22:                               ;   in Loop: Header=BB4_1 Depth=1
	ld	hl, -720878
	push	de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, e
	ld	h, d
	pop	de
	ld	a, l
	bit	6, a
	jr	z, .LBB4_24
; %bb.23:                               ;   in Loop: Header=BB4_1 Depth=1
	ld	hl, (ix - 55)
	push	hl
	ld	hl, (ix - 76)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	ld	hl, (ix - 67)
	push	hl
	call	__Z19tile_selection_menuRhN7tinystl13unordered_mapIjhNS0_9allocatorEEEjj
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 76)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEED2Ev
	pop	hl
	.local	.LBB4_24
.LBB4_24:                               ;   in Loop: Header=BB4_1 Depth=1
	ld	l, (ix - 73)
	ld	a, (ix - 77)
	or	a, l
	ld	l, a
	ld	e, (ix - 78)                    ; 1-byte Folded Reload
	ld	a, e
	and	a, l
	ld	l, a
	ld	a, (ix - 79)
	or	a, l
	ld	l, a
	ld	a, (ix - 81)
	and	a, e
	ld	e, a
	ld	a, (ix - 80)
	and	a, l
	ld	l, a
	ld	(ix - 73), hl
	bit	0, e
	jr	z, .LBB4_26
; %bb.25:                               ;   in Loop: Header=BB4_1 Depth=1
	bit	0, (ix - 82)                    ; 1-byte Folded Reload
	jp	nz, .LBB4_29
	.local	.LBB4_26
.LBB4_26:                               ;   in Loop: Header=BB4_1 Depth=1
	or	a, a
	sbc	hl, hl
	push	hl
	call	_gfx_SetDraw
	pop	hl
	ld	hl, 32
	push	hl
	ld	hl, 64
	push	hl
	ld	hl, (ix - 58)
	push	hl
	call	_gfx_Sprite_NoClip
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 1
	push	hl
	call	_gfx_SetDraw
	pop	hl
	ld	hl, 240
	push	hl
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	push	hl
	call	_gfx_SetClipRegion
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (_seed)
	ld	de, 2
	push	de
	ld	de, (ix - 73)
	push	de
	ld	e, (ix - 70)                    ; 1-byte Folded Reload
	push	de
	ld	de, 0
	push	de
	ld	de, (ix - 55)
	push	de
	push	hl
	call	__Z12render_leveljRN7tinystl13unordered_mapIjhNS_9allocatorEEEbbbh
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	l, 1
	ld	a, (ix - 70)
	and	a, l
	ld	l, a
	ld	de, 0
	ld	e, l
	ld	hl, (ix - 73)
	ld	c, 23
	call	__ishl
	add	hl, hl
	sbc	hl, hl
	ld	bc, 1
	call	__ior
	push	hl
	pop	iy
	push	de
	pop	bc
	call	__imulu
	ex	de, hl
	ld	hl, (_x)
	add	hl, de
	ld	(_x), hl
	bit	0, (ix - 70)                    ; 1-byte Folded Reload
	ld	de, 0
	jr	nz, .LBB4_28
; %bb.27:                               ;   in Loop: Header=BB4_1 Depth=1
	lea	de, iy + 0
	.local	.LBB4_28
.LBB4_28:                               ;   in Loop: Header=BB4_1 Depth=1
	ld	hl, (_y)
	add	hl, de
	ld	(_y), hl
	or	a, a
	sbc	hl, hl
	push	hl
	call	_gfx_SetDraw
	pop	hl
	ld	hl, 104
	push	hl
	ld	hl, 256
	push	hl
	call	_gfx_SetTextXY
	pop	hl
	pop	hl
	ld	hl, (_x)
	ld	de, 8
	push	de
	push	hl
	call	_gfx_PrintUInt
	pop	hl
	pop	hl
	ld	hl, 112
	push	hl
	ld	hl, 256
	push	hl
	call	_gfx_SetTextXY
	pop	hl
	pop	hl
	ld	hl, (_y)
	ld	de, 8
	push	de
	push	hl
	call	_gfx_PrintUInt
	pop	hl
	pop	hl
	ld	hl, 32
	push	hl
	ld	hl, 64
	push	hl
	ld	hl, (ix - 58)
	push	hl
	call	_gfx_GetSprite
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 32
	push	hl
	ld	hl, 64
	push	hl
	ld	hl, _cursor_data
	push	hl
	call	_gfx_TransparentSprite_NoClip
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 1
	push	hl
	call	_gfx_SetDraw
	pop	hl
	.local	.LBB4_29
.LBB4_29:                               ;   in Loop: Header=BB4_1 Depth=1
	ld	hl, (ix - 73)
	ld	(ix - 73), l                    ; 1-byte Folded Spill
	.local	.LBB4_30
.LBB4_30:                               ;   in Loop: Header=BB4_1 Depth=1
	ld	hl, (ix - 55)
	push	hl
	call	__Z15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEE
	pop	hl
	ld	hl, -720868
	jp	.LBB4_1
	.local	.LBB4_31
.LBB4_31:
	ld	hl, (_seed)
	ld	(ix - 70), hl
	ld	hl, (_x)
	ld	(ix - 73), hl
	ld	hl, (_y)
	ld	(ix - 76), hl
	ld	hl, (ix - 55)
	push	hl
	ld	hl, (ix - 61)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_
	pop	hl
	pop	hl
	ld	hl, (ix - 61)
	push	hl
	ld	hl, (ix - 67)
	push	hl
	ld	hl, (ix - 76)
	push	hl
	ld	hl, (ix - 73)
	push	hl
	ld	hl, (ix - 70)
	push	hl
	call	__Z9writeSavejjjRhN7tinystl13unordered_mapIjhNS0_9allocatorEEE
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 61)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEED2Ev
	pop	hl
	ld	hl, (ix - 58)
	push	hl
	call	_free
	pop	hl
	ld	hl, (ix - 55)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE5clearEv
	pop	hl
	ld	hl, (ix - 64)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEED2Ev
	pop	hl
	ld	hl, (ix - 55)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEED2Ev
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end4
.Lfunc_end4:
	.size	__Z4gamev, .Lfunc_end4-__Z4gamev
                                        ; -- End function
	.section	.text.__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj,"ax",@progbits
	.weak	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj ; -- Begin function _ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	.type	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj,@function
__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj: ; @_ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
; %bb.0:
	ld	hl, -8
	call	__frameset
	ld	de, (ix + 6)
	ld	hl, (ix + 9)
	ld	hl, (hl)
	ld	(ix - 8), hl
	ld	(ix - 5), 0
	pea	ix - 8
	push	de
	pea	ix - 4
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix - 4)
	lea	hl, iy + 3
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end5
.Lfunc_end5:
	.size	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj, .Lfunc_end5-__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
                                        ; -- End function
	.section	.text.__ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_,"ax",@progbits
	.weak	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_ ; -- Begin function _ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_
	.type	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_,@function
__ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_: ; @_ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_
; %bb.0:
	ld	hl, -12
	call	__frameset
	ld	de, (ix + 6)
	ld	iy, (ix + 9)
	ld	hl, (iy)
	lea	bc, iy + 0
	push	de
	pop	iy
	ld	(iy), hl
	push	bc
	pop	iy
	ld	hl, (iy + 6)
	ld	de, (iy + 3)
	or	a, a
	sbc	hl, de
	ld	bc, 3
	call	__idivs
	ex	de, hl
	ld	(ix - 9), de
	ld	iy, (ix + 6)
	or	a, a
	sbc	hl, hl
	ld	(iy + 9), hl
	ld	(iy + 6), hl
	ld	(iy + 3), hl
	ld	(ix - 3), hl
	pea	ix - 3
	push	de
	pea	iy + 3
	call	__ZN7tinystlL13buffer_resizeIPNS_19unordered_hash_nodeIjhEENS_9allocatorEEEvPNS_6bufferIT_T0_EEjRKS6_
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 9)
	ld	hl, (iy + 3)
	ld	de, (ix - 9)
	dec	de
	ld	(ix - 9), de
	.local	.LBB6_1
.LBB6_1:                                ; =>This Inner Loop Header: Depth=1
	ld	de, (hl)
	push	de
	pop	hl
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	z, .LBB6_3
; %bb.2:                                ;   in Loop: Header=BB6_1 Depth=1
	ld	hl, 10
	push	hl
	ld	(ix - 12), de
	call	__Znwj
	ld	(ix - 6), hl
	pop	hl
	ld	iy, (ix - 12)
	ld	hl, (iy)
	lea	de, iy + 0
	ld	iy, (ix - 6)
	ld	(iy), hl
	push	de
	pop	iy
	ld	a, (iy + 3)
	ld	iy, (ix - 6)
	ld	(iy + 3), a
	or	a, a
	sbc	hl, hl
	ld	iy, (ix - 6)
	ld	(iy + 7), hl
	ld	iy, (ix - 6)
	ld	(iy + 4), hl
	push	de
	call	__ZN7tinystl4hashIjEEjRKT_
	pop	de
	ld	iy, (ix + 6)
	ld	de, (iy + 3)
	ld	bc, (ix - 9)
	push	bc
	push	de
	push	hl
	ld	hl, (ix - 6)
	push	hl
	call	__ZN7tinystlL26unordered_hash_node_insertIjhEEvPNS_19unordered_hash_nodeIT_T0_EEjPS5_j
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix - 12)
	lea	hl, iy + 4
	jr	.LBB6_1
	.local	.LBB6_3
.LBB6_3:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end6
.Lfunc_end6:
	.size	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_, .Lfunc_end6-__ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_
                                        ; -- End function
	.section	.text.__Z19tile_selection_menuRhN7tinystl13unordered_mapIjhNS0_9allocatorEEEjj,"ax",@progbits
	.globl	__Z19tile_selection_menuRhN7tinystl13unordered_mapIjhNS0_9allocatorEEEjj ; -- Begin function _Z19tile_selection_menuRhN7tinystl13unordered_mapIjhNS0_9allocatorEEEjj
	.type	__Z19tile_selection_menuRhN7tinystl13unordered_mapIjhNS0_9allocatorEEEjj,@function
__Z19tile_selection_menuRhN7tinystl13unordered_mapIjhNS0_9allocatorEEEjj: ; @_Z19tile_selection_menuRhN7tinystl13unordered_mapIjhNS0_9allocatorEEEjj
; %bb.0:
	ld	hl, -19
	call	__frameset
	ld	hl, (ix + 6)
	ld	(ix - 9), hl
	ld	hl, ___const._Z19tile_selection_menuRhN7tinystl13unordered_mapIjhNS0_9allocatorEEEjj.possible_tile_selections
	ld	de, 7
	push	de
	push	hl
	push	hl
	call	__Z26render_tile_selection_menuhPhh
	ld	de, 0
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 9)
	ld	a, (hl)
	ld	iyh, a
	xor	a, a
	ld	iyl, a
	.local	.LBB7_1
.LBB7_1:                                ; =>This Inner Loop Header: Depth=1
	ld	(ix - 3), a                     ; 1-byte Folded Spill
	push	de
	pop	hl
	ld	bc, 7
	or	a, a
	sbc	hl, bc
	jr	z, .LBB7_5
; %bb.2:                                ;   in Loop: Header=BB7_1 Depth=1
	ld	hl, ___const._Z19tile_selection_menuRhN7tinystl13unordered_mapIjhNS0_9allocatorEEEjj.possible_tile_selections
	push	de
	pop	bc
	add	hl, de
	ld	a, (hl)
	ex	de, hl
	ld	e, iyh
	ex	de, hl
	cp	a, l
	ld	a, iyl
	jr	z, .LBB7_4
; %bb.3:                                ;   in Loop: Header=BB7_1 Depth=1
	ld	a, (ix - 3)                     ; 1-byte Folded Reload
	.local	.LBB7_4
.LBB7_4:                                ;   in Loop: Header=BB7_1 Depth=1
	push	bc
	pop	de
	inc	de
	inc	iyl
	jr	.LBB7_1
	.local	.LBB7_5
.LBB7_5:
	ld	hl, _malloc
	push	hl
	ld	hl, 16
	push	hl
	push	hl
	call	_gfx_AllocSprite
	ld	(ix - 6), hl
	pop	hl
	pop	hl
	pop	hl
	ld	b, (ix - 3)                     ; 1-byte Folded Reload
	ld	c, 9
	call	__bdivu
	ld	e, -9
	ld	d, a
	ld	l, e
	ld	h, d
	mlt	hl
	ld	a, l
	add	a, b
	ld	l, a
	ld	b, 4
	call	__bshl
	ld	l, 8
	add	a, l
	ld	iyl, a
	or	a, a
	sbc	hl, hl
	push	hl
	pop	bc
	ld	c, iyl
	ld	(ix - 12), bc
	ld	(ix - 17), e
	ld	(ix - 16), d
	ld	l, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de, 8
	add	hl, de
	ld	(ix - 15), hl
	push	hl
	push	bc
	ld	hl, (ix - 6)
	push	hl
	call	_gfx_GetSprite
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 15)
	push	hl
	ld	hl, (ix - 12)
	push	hl
	ld	hl, _cursor_data
	push	hl
	call	_gfx_TransparentSprite_NoClip
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB7_6
.LBB7_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB7_7 Depth 2
	ld	e, -128
	.local	.LBB7_7
.LBB7_7:                                ;   Parent Loop BB7_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ld	hl, -720876
	push	de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, e
	ld	h, d
	pop	de
	ld	a, l
	and	a, e
	ld	l, a
	or	a, a
	jp	nz, .LBB7_26
; %bb.8:                                ;   in Loop: Header=BB7_7 Depth=2
	ld	hl, -720868
	push	de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, e
	ld	h, d
	pop	de
	ld	a, l
	bit	6, a
	jp	nz, .LBB7_26
; %bb.9:                                ;   in Loop: Header=BB7_7 Depth=2
	call	_kb_AnyKey
	ld	iyh, 2
	ld	iyl, 0
	ld	d, -1
	ld	e, -128
	or	a, a
	jr	z, .LBB7_7
; %bb.10:                               ;   in Loop: Header=BB7_6 Depth=1
	ld	hl, -720866
	push	de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, e
	ld	h, d
	pop	de
	ld.sis	bc, 2
	call	__sand
	ld	(ix - 19), l
	ld	(ix - 18), h
	ld	a, l
	or	a, a
	ld	l, d
	jr	nz, .LBB7_12
; %bb.11:                               ;   in Loop: Header=BB7_6 Depth=1
	ex	de, hl
	ld	e, iyl
	ex	de, hl
	.local	.LBB7_12
.LBB7_12:                               ;   in Loop: Header=BB7_6 Depth=1
	ld	a, (ix - 3)
	add	a, l
	ld	e, a
	ld	hl, -720866
	push	de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, e
	ld	h, d
	pop	de
	ld.sis	bc, 4
	call	__sand
	ld	(ix - 15), l
	ld	(ix - 14), h
	ld	c, iyh
	call	__sshru
                                        ; kill: def $l killed $l killed $hl
	ld	a, e
	add	a, l
	ld	iyl, a
	ld	hl, -720866
	push	de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, e
	ld	h, d
	pop	de
	ld.sis	bc, 1
	call	__sand
	ex.sis	de, hl
	bit	0, e
	jr	z, .LBB7_14
; %bb.13:                               ;   in Loop: Header=BB7_6 Depth=1
	ld	l, 9
	ld	a, iyl
	add	a, l
	ld	iyl, a
	.local	.LBB7_14
.LBB7_14:                               ;   in Loop: Header=BB7_6 Depth=1
	ld	hl, -720866
	push	de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, e
	ld	h, d
	pop	de
	ld.sis	bc, 8
	call	__sand
	ld	a, l
	or	a, a
	jr	z, .LBB7_16
; %bb.15:                               ;   in Loop: Header=BB7_6 Depth=1
	ld	c, (ix - 17)
	ld	b, (ix - 16)
	ld	a, iyl
	add	a, c
	ld	iyl, a
	.local	.LBB7_16
.LBB7_16:                               ;   in Loop: Header=BB7_6 Depth=1
	ld	a, iyl
	cp	a, 6
	ld	c, iyl
	jr	c, .LBB7_18
; %bb.17:                               ;   in Loop: Header=BB7_6 Depth=1
	ld	c, 6
	.local	.LBB7_18
.LBB7_18:                               ;   in Loop: Header=BB7_6 Depth=1
	ld	a, iyl
	cp	a, -1
	ld	a, 0
	ld	(ix - 12), a                    ; 1-byte Folded Spill
	jr	z, .LBB7_20
; %bb.19:                               ;   in Loop: Header=BB7_6 Depth=1
	ld	(ix - 12), c                    ; 1-byte Folded Spill
	.local	.LBB7_20
.LBB7_20:                               ;   in Loop: Header=BB7_6 Depth=1
	ld	a, l
	or	a, a
	jr	nz, .LBB7_24
; %bb.21:                               ;   in Loop: Header=BB7_6 Depth=1
	bit	0, e
	jr	nz, .LBB7_24
; %bb.22:                               ;   in Loop: Header=BB7_6 Depth=1
	ld	l, (ix - 15)
	ld	h, (ix - 14)
	ld	a, l
	or	a, a
	jr	nz, .LBB7_24
; %bb.23:                               ;   in Loop: Header=BB7_6 Depth=1
	ld	l, (ix - 19)
	ld	h, (ix - 18)
	ld	a, l
	or	a, a
	jr	z, .LBB7_25
	.local	.LBB7_24
.LBB7_24:                               ;   in Loop: Header=BB7_6 Depth=1
	ld	b, (ix - 3)                     ; 1-byte Folded Reload
	ld	c, 9
	call	__bdivu
	ld	e, (ix - 17)
	ld	d, (ix - 16)
	ld	d, a
	ld	l, e
	ld	h, d
	mlt	hl
	ld	a, l
	add	a, b
	ld	l, a
	ld	l, 4
	ld	b, l
	call	__bshl
	ld	l, 8
	add	a, l
	ld	c, a
	or	a, a
	sbc	hl, hl
	ld	l, c
	ld	(ix - 17), e
	ld	(ix - 16), d
	ld	a, d
	ld	b, 4
	call	__bshl
	ld	e, 8
	add	a, e
	ld	e, a
	push	de
	push	hl
	ld	hl, (ix - 6)
	push	hl
	call	_gfx_Sprite_NoClip
	pop	hl
	pop	hl
	pop	hl
	ld	a, (ix - 12)                    ; 1-byte Folded Reload
	ld	b, 4
	call	__bshl
	ld	l, 8
	add	a, l
	ld	l, a
	ld	de, 0
	ld	e, l
	ld	(ix - 3), de
	ld	hl, 8
	push	hl
	push	de
	ld	hl, (ix - 6)
	push	hl
	call	_gfx_GetSprite
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 8
	push	hl
	ld	hl, (ix - 3)
	push	hl
	ld	hl, _cursor_data
	push	hl
	call	_gfx_TransparentSprite_NoClip
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB7_25
.LBB7_25:                               ;   in Loop: Header=BB7_6 Depth=1
	ld	hl, 200
	push	hl
	call	_msleep
	pop	hl
	ld	a, (ix - 12)
	ld	(ix - 3), a                     ; 1-byte Folded Spill
	jp	.LBB7_6
	.local	.LBB7_26
.LBB7_26:
	or	a, a
	sbc	hl, hl
	ex	de, hl
	ld	e, (ix - 3)                     ; 1-byte Folded Reload
	ld	hl, ___const._Z19tile_selection_menuRhN7tinystl13unordered_mapIjhNS0_9allocatorEEEjj.possible_tile_selections
	add	hl, de
	ld	a, (hl)
	ld	hl, (ix - 9)
	ld	(hl), a
	.local	.LBB7_27
.LBB7_27:                               ; =>This Inner Loop Header: Depth=1
	call	_kb_AnyKey
	or	a, a
	jr	nz, .LBB7_27
; %bb.28:
	ld	hl, 1
	push	hl
	call	_gfx_SetDraw
	pop	hl
	call	_gfx_SwapDraw
	ld	hl, (ix - 6)
	ld	(ix + 6), hl
	ld	sp, ix
	pop	ix
	jp	_free
	.local	.Lfunc_end7
.Lfunc_end7:
	.size	__Z19tile_selection_menuRhN7tinystl13unordered_mapIjhNS0_9allocatorEEEjj, .Lfunc_end7-__Z19tile_selection_menuRhN7tinystl13unordered_mapIjhNS0_9allocatorEEEjj
                                        ; -- End function
	.section	.text.__ZN7tinystl13unordered_mapIjhNS_9allocatorEED2Ev,"ax",@progbits
	.weak	__ZN7tinystl13unordered_mapIjhNS_9allocatorEED2Ev ; -- Begin function _ZN7tinystl13unordered_mapIjhNS_9allocatorEED2Ev
	.type	__ZN7tinystl13unordered_mapIjhNS_9allocatorEED2Ev,@function
__ZN7tinystl13unordered_mapIjhNS_9allocatorEED2Ev: ; @_ZN7tinystl13unordered_mapIjhNS_9allocatorEED2Ev
; %bb.0:
	ld	hl, -3
	call	__frameset
	ld	iy, (ix + 6)
	ld	de, (iy + 3)
	ld	bc, (iy + 6)
	push	de
	pop	hl
	or	a, a
	sbc	hl, bc
	jr	z, .LBB8_2
; %bb.1:
	push	iy
	ld	(ix - 3), iy
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE5clearEv
	pop	hl
	ld	iy, (ix - 3)
	ld	de, (iy + 3)
	.local	.LBB8_2
.LBB8_2:
	ld	(ix + 6), de
	pop	hl
	pop	ix
	jp	__ZdlPv
	.local	.Lfunc_end8
.Lfunc_end8:
	.size	__ZN7tinystl13unordered_mapIjhNS_9allocatorEED2Ev, .Lfunc_end8-__ZN7tinystl13unordered_mapIjhNS_9allocatorEED2Ev
                                        ; -- End function
	.section	.text.__ZN7tinystl13unordered_mapIjhNS_9allocatorEE5clearEv,"ax",@progbits
	.weak	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE5clearEv ; -- Begin function _ZN7tinystl13unordered_mapIjhNS_9allocatorEE5clearEv
	.type	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE5clearEv,@function
__ZN7tinystl13unordered_mapIjhNS_9allocatorEE5clearEv: ; @_ZN7tinystl13unordered_mapIjhNS_9allocatorEE5clearEv
; %bb.0:
	ld	hl, -6
	call	__frameset
	ld	iy, (ix + 6)
	ld	hl, (iy + 3)
	ld	iy, (hl)
	.local	.LBB9_1
.LBB9_1:                                ; =>This Inner Loop Header: Depth=1
	lea	hl, iy + 0
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	z, .LBB9_3
; %bb.2:                                ;   in Loop: Header=BB9_1 Depth=1
	ld	hl, (iy + 4)
	ld	(ix - 6), hl
	push	iy
	call	__ZdlPv
	pop	hl
	ld	iy, (ix - 6)
	jr	.LBB9_1
	.local	.LBB9_3
.LBB9_3:
	ld	hl, (ix + 6)
	push	hl
	pop	iy
	ld	hl, (iy + 3)
	ld	(iy + 6), hl
	or	a, a
	sbc	hl, hl
	ld	(ix - 3), hl
	pea	ix - 3
	ld	hl, 9
	push	hl
	pea	iy + 3
	call	__ZN7tinystlL13buffer_resizeIPNS_19unordered_hash_nodeIjhEENS_9allocatorEEEvPNS_6bufferIT_T0_EEjRKS6_
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	ld	iy, (ix + 6)
	ld	(iy), hl
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end9
.Lfunc_end9:
	.size	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE5clearEv, .Lfunc_end9-__ZN7tinystl13unordered_mapIjhNS_9allocatorEE5clearEv
                                        ; -- End function
	.section	.text.__ZN7tinystlL13buffer_resizeIPNS_19unordered_hash_nodeIjhEENS_9allocatorEEEvPNS_6bufferIT_T0_EEjRKS6_,"ax",@progbits
	.type	__ZN7tinystlL13buffer_resizeIPNS_19unordered_hash_nodeIjhEENS_9allocatorEEEvPNS_6bufferIT_T0_EEjRKS6_,@function ; -- Begin function _ZN7tinystlL13buffer_resizeIPNS_19unordered_hash_nodeIjhEENS_9allocatorEEEvPNS_6bufferIT_T0_EEjRKS6_
__ZN7tinystlL13buffer_resizeIPNS_19unordered_hash_nodeIjhEENS_9allocatorEEEvPNS_6bufferIT_T0_EEjRKS6_: ; @_ZN7tinystlL13buffer_resizeIPNS_19unordered_hash_nodeIjhEENS_9allocatorEEEvPNS_6bufferIT_T0_EEjRKS6_
; %bb.0:
	ld	hl, -15
	call	__frameset
	ld	iy, (ix + 6)
	ld	de, (ix + 9)
	ld	hl, (iy)
	ld	(ix - 3), hl
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	z, .LBB10_2
; %bb.1:
	ld	bc, 3
	ex	de, hl
	call	__imulu
	ex	de, hl
	ld	hl, (ix - 3)
	add	hl, de
	ex	de, hl
	ld	hl, (iy + 6)
	or	a, a
	sbc	hl, de
	ld	de, (ix + 9)
	jp	nc, .LBB10_6
	.local	.LBB10_2
.LBB10_2:
	ld	bc, 3
	or	a, a
	sbc	hl, hl
	ld	(ix - 6), hl
	ld	hl, (iy + 3)
	ld	(ix - 15), hl
	ex	de, hl
	call	__imulu
	push	hl
	call	__Znwj
	ld	(ix - 9), hl
	pop	hl
	ld	iy, (ix + 6)
	ld	de, (iy)
	ld	hl, (iy + 3)
	ld	(ix - 12), hl
	.local	.LBB10_3
.LBB10_3:                               ; =>This Inner Loop Header: Depth=1
	push	de
	pop	iy
	ld	bc, (ix - 6)
	add	iy, bc
	lea	hl, iy + 0
	ld	bc, (ix - 12)
	or	a, a
	sbc	hl, bc
	jr	z, .LBB10_5
; %bb.4:                                ;   in Loop: Header=BB10_3 Depth=1
	ld	bc, (ix - 6)
	ld	iy, (iy)
	ld	hl, (ix - 9)
	add	hl, bc
	ld	(hl), iy
	push	bc
	pop	hl
	ld	bc, 3
	add	hl, bc
	ld	(ix - 6), hl
	jr	.LBB10_3
	.local	.LBB10_5
.LBB10_5:
	ld	bc, (ix - 3)
	ld	hl, (ix - 15)
	or	a, a
	sbc	hl, bc
	ld	(ix - 3), hl
	push	de
	call	__ZdlPv
	pop	hl
	ld	de, (ix - 9)
	ld	hl, (ix + 6)
	ld	(hl), de
	ex	de, hl
	ld	de, (ix - 3)
	add	hl, de
	ld	(ix - 6), hl
	ld	bc, 3
	ld	iy, (ix + 6)
	ld	(iy + 3), hl
	ld	iy, (ix + 9)
	lea	hl, iy + 0
	call	__imulu
	ex	de, hl
	ld	bc, (ix - 9)
	push	bc
	pop	hl
	add	hl, de
	lea	de, iy + 0
	ld	iy, (ix + 6)
	ld	(iy + 6), hl
	ld	(ix - 3), bc
	ld	iy, (ix - 6)
	jr	.LBB10_7
	.local	.LBB10_6
.LBB10_6:
	ld	iy, (iy + 3)
	.local	.LBB10_7
.LBB10_7:
	ld	bc, 3
	ex	de, hl
	call	__imulu
	ex	de, hl
	ld	hl, (ix - 3)
	add	hl, de
	ex	de, hl
	.local	.LBB10_8
.LBB10_8:                               ; =>This Inner Loop Header: Depth=1
	lea	hl, iy + 0
	or	a, a
	sbc	hl, de
	jr	nc, .LBB10_10
; %bb.9:                                ;   in Loop: Header=BB10_8 Depth=1
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(iy), hl
	lea	iy, iy + 3
	jr	.LBB10_8
	.local	.LBB10_10
.LBB10_10:
	ld	bc, 3
	ld	hl, (ix + 6)
	ld	iy, (hl)
	ld	hl, (ix + 9)
	call	__imulu
	ex	de, hl
	lea	hl, iy + 0
	add	hl, de
	ld	iy, (ix + 6)
	ld	(iy + 3), hl
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end10
.Lfunc_end10:
	.size	__ZN7tinystlL13buffer_resizeIPNS_19unordered_hash_nodeIjhEENS_9allocatorEEEvPNS_6bufferIT_T0_EEjRKS6_, .Lfunc_end10-__ZN7tinystlL13buffer_resizeIPNS_19unordered_hash_nodeIjhEENS_9allocatorEEEvPNS_6bufferIT_T0_EEjRKS6_
                                        ; -- End function
	.section	.text.__ZN7tinystl4hashIjEEjRKT_,"ax",@progbits
	.weak	__ZN7tinystl4hashIjEEjRKT_      ; -- Begin function _ZN7tinystl4hashIjEEjRKT_
	.type	__ZN7tinystl4hashIjEEjRKT_,@function
__ZN7tinystl4hashIjEEjRKT_:             ; @_ZN7tinystl4hashIjEEjRKT_
; %bb.0:
	ld	hl, -12
	call	__frameset
	ld	iy, (ix + 6)
	ld	de, 0
	lea	hl, ix - 3
	ld	(ix - 12), hl
	ld	hl, (iy)
	ld	(ix - 3), hl
	ld	bc, 3
	ld	(ix - 6), de
	.local	.LBB11_1
.LBB11_1:                               ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	push	bc
	pop	iy
	or	a, a
	sbc	hl, bc
	jr	z, .LBB11_3
; %bb.2:                                ;   in Loop: Header=BB11_1 Depth=1
	ld	hl, (ix - 12)
	add	hl, de
	ld	a, (hl)
	ld	l, a
	rlc	l
	sbc	hl, hl
	ld	(ix - 9), de
	ex	de, hl
	ld	e, a
	ld	hl, (ix - 6)
	ld	bc, 65599
	call	__imulu
	add	hl, de
	ld	(ix - 6), hl
	ld	de, (ix - 9)
	inc	de
	lea	bc, iy + 0
	jr	.LBB11_1
	.local	.LBB11_3
.LBB11_3:
	ld	hl, (ix - 6)
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end11
.Lfunc_end11:
	.size	__ZN7tinystl4hashIjEEjRKT_, .Lfunc_end11-__ZN7tinystl4hashIjEEjRKT_
                                        ; -- End function
	.section	.text.__ZN7tinystlL26unordered_hash_node_insertIjhEEvPNS_19unordered_hash_nodeIT_T0_EEjPS5_j,"ax",@progbits
	.type	__ZN7tinystlL26unordered_hash_node_insertIjhEEvPNS_19unordered_hash_nodeIT_T0_EEjPS5_j,@function ; -- Begin function _ZN7tinystlL26unordered_hash_node_insertIjhEEvPNS_19unordered_hash_nodeIT_T0_EEjPS5_j
__ZN7tinystlL26unordered_hash_node_insertIjhEEvPNS_19unordered_hash_nodeIT_T0_EEjPS5_j: ; @_ZN7tinystlL26unordered_hash_node_insertIjhEEvPNS_19unordered_hash_nodeIT_T0_EEjPS5_j
; %bb.0:
	ld	hl, -12
	call	__frameset
	ld	bc, (ix + 9)
	ld	iy, (ix + 12)
	ld	hl, (ix + 15)
	dec	hl
	call	__iand
	ld	bc, 3
	ld	(ix - 3), hl
	call	__imulu
	ex	de, hl
	add	iy, de
	ld	(ix - 9), iy
	ld	hl, (iy + 3)
	push	hl
	pop	de
	ld	iy, (ix + 6)
	ld	(iy + 4), de
	push	hl
	pop	bc
	sbc	hl, hl
	adc	hl, de
	push	bc
	pop	hl
	ld	(ix - 6), bc
	jr	nz, .LBB12_4
; %bb.1:                                ; %.preheader.preheader
	ld	bc, 3
	ld	de, (ix - 3)
	push	de
	pop	hl
	call	__imulu
	ld	(ix - 12), hl
	inc	de
	.local	.LBB12_2
.LBB12_2:                               ; %.preheader
                                        ; =>This Inner Loop Header: Depth=1
	ld	iy, (ix - 12)
	ld	hl, -3
	push	hl
	pop	bc
	add	iy, bc
	dec	de
	sbc	hl, hl
	adc	hl, de
	jr	z, .LBB12_6
; %bb.3:                                ;   in Loop: Header=BB12_2 Depth=1
	ld	hl, (ix + 12)
	ld	bc, (ix - 12)
	add	hl, bc
	ld	bc, (hl)
	sbc	hl, hl
	adc	hl, bc
	ld	(ix - 12), iy
	jr	z, .LBB12_2
	jr	.LBB12_7
	.local	.LBB12_4
.LBB12_4:
	push	hl
	pop	iy
	ld	hl, (iy + 7)
	lea	de, iy + 0
	ld	bc, (ix + 6)
	push	bc
	pop	iy
	ld	(iy + 7), hl
	push	bc
	pop	hl
	push	de
	pop	iy
	ld	(iy + 7), hl
	push	bc
	pop	iy
	ld	iy, (iy + 7)
	lea	hl, iy + 0
	add	hl, bc
	or	a, a
	sbc	hl, bc
	ld	de, (ix - 3)
	jr	z, .LBB12_13
; %bb.5:
	ld	hl, (ix + 6)
	ld	(iy + 4), hl
	jr	.LBB12_13
	.local	.LBB12_6
.LBB12_6:
	ld	hl, (ix + 12)
	ld	bc, (hl)
	.local	.LBB12_7
.LBB12_7:                               ; %.loopexit.preheader
	ld	(ix - 12), bc
	.local	.LBB12_8
.LBB12_8:                               ; %.loopexit
                                        ; =>This Inner Loop Header: Depth=1
	ld	iy, (ix - 12)
	lea	hl, iy + 0
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	z, .LBB12_11
; %bb.9:                                ;   in Loop: Header=BB12_8 Depth=1
	ld	de, (iy + 4)
	sbc	hl, hl
	adc	hl, de
	ld	(ix - 12), de
	jr	nz, .LBB12_8
; %bb.10:
	lea	hl, iy + 0
	ld	de, (ix + 6)
	lea	bc, iy + 0
	push	de
	pop	iy
	ld	(iy + 7), hl
	ex	de, hl
	push	bc
	pop	iy
	ld	(iy + 4), hl
	jr	.LBB12_12
	.local	.LBB12_11
.LBB12_11:
	ld	iy, (ix + 6)
	or	a, a
	sbc	hl, hl
	ld	(iy + 7), hl
	.local	.LBB12_12
.LBB12_12:                              ; %.preheader14
	ld	de, (ix - 3)
	.local	.LBB12_13
.LBB12_13:                              ; %.preheader14
	inc	de
	ld	(ix - 3), de
	ld	bc, (ix + 6)
	ld	iy, (ix - 9)
	.local	.LBB12_14
.LBB12_14:                              ; =>This Inner Loop Header: Depth=1
	ld	de, (iy)
	ld	hl, (ix - 6)
	or	a, a
	sbc	hl, de
	jr	nz, .LBB12_16
; %bb.15:                               ;   in Loop: Header=BB12_14 Depth=1
	ld	(iy), bc
	ld	hl, (ix - 3)
	dec	hl
	lea	iy, iy - 3
	ld	(ix - 3), hl
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	nz, .LBB12_14
	.local	.LBB12_16
.LBB12_16:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end12
.Lfunc_end12:
	.size	__ZN7tinystlL26unordered_hash_node_insertIjhEEvPNS_19unordered_hash_nodeIT_T0_EEjPS5_j, .Lfunc_end12-__ZN7tinystlL26unordered_hash_node_insertIjhEEvPNS_19unordered_hash_nodeIT_T0_EEjPS5_j
                                        ; -- End function
	.section	.text.__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE,"ax",@progbits
	.weak	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE ; -- Begin function _ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE
	.type	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE,@function
__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE: ; @_ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE
; %bb.0:
	ld	hl, -9
	call	__frameset
	ld	iy, (ix + 6)
	ld	hl, (ix + 9)
	ld	de, (ix + 12)
	ld	(iy + 3), 0
	push	de
	push	hl
	push	iy
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE4findERKj
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (iy)
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jp	nz, .LBB13_4
; %bb.1:
	ld	hl, 10
	push	hl
	call	__Znwj
	push	hl
	pop	iy
	pop	hl
	ld	hl, (ix + 12)
	push	hl
	pop	de
	ld	hl, (hl)
	ld	(iy), hl
	lea	hl, iy + 0
	push	de
	pop	iy
	ld	a, (iy + 3)
	push	hl
	pop	iy
	ld	(iy + 3), a
	ld	bc, 0
	ld	(iy + 7), bc
	ld	(ix - 6), iy
	ld	(iy + 4), bc
	ld	iy, (ix + 9)
	ld	de, (iy + 3)
	sbc	hl, hl
	adc	hl, de
	jr	nz, .LBB13_3
; %bb.2:
	ld	hl, 9
	ld	(ix - 3), bc
	pea	ix - 3
	push	hl
	ld	hl, (ix + 9)
	push	hl
	pop	iy
	pea	iy + 3
	call	__ZN7tinystlL13buffer_resizeIPNS_19unordered_hash_nodeIjhEENS_9allocatorEEEvPNS_6bufferIT_T0_EEjRKS6_
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 9)
	ld	de, (iy + 3)
	.local	.LBB13_3
.LBB13_3:
	ld	hl, (ix + 9)
	push	hl
	pop	iy
	ld	hl, (iy + 6)
	or	a, a
	sbc	hl, de
	ld	bc, 3
	call	__idivs
	ld	(ix - 9), hl
	ld	hl, (ix + 12)
	push	hl
	call	__ZN7tinystl4hashIjEEjRKT_
	pop	de
	ld	iy, (ix + 9)
	ld	de, (iy + 3)
	ld	bc, (ix - 9)
	dec	bc
	push	bc
	push	de
	push	hl
	ld	hl, (ix - 6)
	push	hl
	call	__ZN7tinystlL26unordered_hash_node_insertIjhEEvPNS_19unordered_hash_nodeIT_T0_EEjPS5_j
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 9)
	ld	hl, (iy)
	inc	hl
	ld	(iy), hl
	ld	hl, (ix - 9)
	push	hl
	push	iy
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6rehashEj
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	hl, (ix - 6)
	ld	(iy), hl
	ld	(iy + 3), 1
	.local	.LBB13_4
.LBB13_4:
	lea	hl, iy + 0
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end13
.Lfunc_end13:
	.size	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE, .Lfunc_end13-__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE
                                        ; -- End function
	.section	.text.__ZN7tinystl13unordered_mapIjhNS_9allocatorEE4findERKj,"ax",@progbits
	.weak	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE4findERKj ; -- Begin function _ZN7tinystl13unordered_mapIjhNS_9allocatorEE4findERKj
	.type	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE4findERKj,@function
__ZN7tinystl13unordered_mapIjhNS_9allocatorEE4findERKj: ; @_ZN7tinystl13unordered_mapIjhNS_9allocatorEE4findERKj
; %bb.0:
	ld	hl, -6
	call	__frameset
	ld	iy, (ix + 9)
	ld	de, 0
	ld	hl, (iy + 3)
	push	hl
	pop	bc
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	z, .LBB14_7
; %bb.1:
	ld	hl, (iy + 6)
	ld	(ix - 3), bc
	or	a, a
	sbc	hl, bc
	ld	bc, 3
	call	__idivs
	ld	(ix - 6), hl
	ld	hl, (ix + 12)
	push	hl
	call	__ZN7tinystl4hashIjEEjRKT_
	push	hl
	pop	bc
	pop	hl
	ld	de, -2
	ld	hl, (ix - 6)
	add	hl, de
	call	__iand
	ld	bc, 3
	call	__imulu
	ex	de, hl
	ld	iy, (ix - 3)
	add	iy, de
	ld	de, (iy + 3)
	ld	hl, (ix + 12)
	ld	bc, (hl)
	.local	.LBB14_2
.LBB14_2:                               ; =>This Inner Loop Header: Depth=1
	ld	iy, (iy)
	lea	hl, iy + 0
	or	a, a
	sbc	hl, de
	jr	z, .LBB14_5
; %bb.3:                                ;   in Loop: Header=BB14_2 Depth=1
	ld	hl, (iy)
	or	a, a
	sbc	hl, bc
	jr	z, .LBB14_6
; %bb.4:                                ;   in Loop: Header=BB14_2 Depth=1
	lea	iy, iy + 4
	jr	.LBB14_2
	.local	.LBB14_5
.LBB14_5:
	ld	de, 0
	jr	.LBB14_7
	.local	.LBB14_6
.LBB14_6:
	lea	de, iy + 0
	.local	.LBB14_7
.LBB14_7:                               ; %.loopexit
	ld	hl, (ix + 6)
	ld	(hl), de
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end14
.Lfunc_end14:
	.size	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE4findERKj, .Lfunc_end14-__ZN7tinystl13unordered_mapIjhNS_9allocatorEE4findERKj
                                        ; -- End function
	.section	.text.__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6rehashEj,"ax",@progbits
	.weak	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6rehashEj ; -- Begin function _ZN7tinystl13unordered_mapIjhNS_9allocatorEE6rehashEj
	.type	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6rehashEj,@function
__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6rehashEj: ; @_ZN7tinystl13unordered_mapIjhNS_9allocatorEE6rehashEj
; %bb.0:
	ld	hl, -15
	call	__frameset
	ld	iy, (ix + 6)
	ld	hl, (ix + 9)
	lea	bc, iy + 0
	ld	de, (iy)
	inc	de
	add	hl, hl
	add	hl, hl
	or	a, a
	sbc	hl, de
	jp	nc, .LBB15_4
; %bb.1:
	push	bc
	pop	iy
	ld	hl, (iy + 3)
	ld	(ix - 9), hl
	ld	hl, (ix - 9)
	ld	hl, (hl)
	ld	(ix - 6), hl
	ld	hl, (iy + 6)
	ld	de, (ix - 9)
	or	a, a
	sbc	hl, de
	ld	bc, 3
	call	__idivs
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	hl
	pop	iy
	push	hl
	pop	bc
	ld	de, -8
	add	iy, de
	ld	(ix - 12), iy
	ld	iy, (ix + 6)
	ld	hl, (ix - 9)
	ld	(iy + 6), hl
	inc	de
	push	bc
	pop	hl
	add	hl, de
	ld	de, 0
	ld	(ix - 3), de
	pea	ix - 3
	push	hl
	pea	iy + 3
	call	__ZN7tinystlL13buffer_resizeIPNS_19unordered_hash_nodeIjhEENS_9allocatorEEEvPNS_6bufferIT_T0_EEjRKS6_
	ld	de, (ix - 6)
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	hl, (iy + 3)
	ld	(ix - 9), hl
	.local	.LBB15_2
.LBB15_2:                               ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	z, .LBB15_4
; %bb.3:                                ;   in Loop: Header=BB15_2 Depth=1
	push	de
	pop	iy
	ld	hl, (iy + 4)
	ld	(ix - 15), hl
	or	a, a
	sbc	hl, hl
	ld	(iy + 7), hl
	ld	(iy + 4), hl
	push	iy
	ld	(ix - 6), iy
	call	__ZN7tinystl4hashIjEEjRKT_
	pop	de
	ld	de, (ix - 12)
	push	de
	ld	de, (ix - 9)
	push	de
	push	hl
	ld	hl, (ix - 6)
	push	hl
	call	__ZN7tinystlL26unordered_hash_node_insertIjhEEvPNS_19unordered_hash_nodeIT_T0_EEjPS5_j
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	de, (ix - 15)
	jr	.LBB15_2
	.local	.LBB15_4
.LBB15_4:                               ; %.loopexit
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end15
.Lfunc_end15:
	.size	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6rehashEj, .Lfunc_end15-__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6rehashEj
                                        ; -- End function
	.section	.text._main,"ax",@progbits
	.globl	_main                           ; -- Begin function main
	.type	_main,@function
_main:                                  ; @main
; %bb.0:
	call	_gfx_Begin
	call	__Z4initv
	call	_gfx_End
	or	a, a
	sbc	hl, hl
	ret
	.local	.Lfunc_end16
.Lfunc_end16:
	.size	_main, .Lfunc_end16-_main
                                        ; -- End function
	.section	.text.__Z10perlinInitj,"ax",@progbits
	.globl	__Z10perlinInitj                ; -- Begin function _Z10perlinInitj
	.type	__Z10perlinInitj,@function
__Z10perlinInitj:                       ; @_Z10perlinInitj
; %bb.0:
	ld	hl, -3
	call	__frameset
	ld	hl, (ix + 6)
	ld	de, 0
	push	de
	push	hl
	call	_srandom
	xor	a, a
	pop	hl
	pop	hl
	ld	bc, 256
	ld	de, 0
	.local	.LBB17_1
.LBB17_1:                               ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	or	a, a
	sbc	hl, bc
	jr	z, .LBB17_3
; %bb.2:                                ;   in Loop: Header=BB17_1 Depth=1
	ld	hl, _perm
	add	hl, de
	ld	(hl), a
	inc	de
	inc	a
	jr	.LBB17_1
	.local	.LBB17_3
.LBB17_3:
	ld	hl, 255
	ex	de, hl
	.local	.LBB17_4
.LBB17_4:                               ; %.preheader3
                                        ; =>This Inner Loop Header: Depth=1
	sbc	hl, hl
	adc	hl, de
	jr	z, .LBB17_6
; %bb.5:                                ;   in Loop: Header=BB17_4 Depth=1
	ld	(ix - 3), de
	call	_random
	ld	bc, (ix - 3)
	inc	bc
	call	__iremu
	ld	de, _perm
	push	de
	pop	iy
	ld	de, (ix - 3)
	add	iy, de
	ld	a, (iy)
	ld	bc, 255
	call	__iand
	inc	bc
	ex	de, hl
	ld	hl, _perm
	add	hl, de
	ld	e, (hl)
	ld	(iy), e
	ld	de, (ix - 3)
	ld	(hl), a
	dec	de
	jr	.LBB17_4
	.local	.LBB17_6
.LBB17_6:
	ld	de, 0
	.local	.LBB17_7
.LBB17_7:                               ; %.preheader
                                        ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	or	a, a
	sbc	hl, bc
	jr	z, .LBB17_9
; %bb.8:                                ;   in Loop: Header=BB17_7 Depth=1
	ld	hl, _perm
	add	hl, de
	ld	a, (hl)
	add	hl, bc
	ld	(hl), a
	inc	de
	jr	.LBB17_7
	.local	.LBB17_9
.LBB17_9:
	pop	hl
	pop	ix
	ret
	.local	.Lfunc_end17
.Lfunc_end17:
	.size	__Z10perlinInitj, .Lfunc_end17-__Z10perlinInitj
                                        ; -- End function
	.section	.text.__Z4fadei,"ax",@progbits
	.globl	__Z4fadei                       ; -- Begin function _Z4fadei
	.type	__Z4fadei,@function
__Z4fadei:                              ; @_Z4fadei
; %bb.0:
	call	__frameset0
	ld	de, (ix + 6)
	ld	bc, 6
	ld	iy, -3840
	push	de
	pop	hl
	call	__imulu
	lea	bc, iy + 0
	add	hl, bc
	push	de
	pop	bc
	call	__imulu
	ld	a, 8
	ld	c, a
	call	__ishrs
	ld	bc, 2560
	add	hl, bc
	push	de
	pop	bc
	call	__imulu
	ld	c, a
	call	__ishrs
	push	de
	pop	bc
	call	__imulu
	ld	c, a
	call	__ishrs
	push	de
	pop	bc
	call	__imulu
	ld	de, 128
	add	hl, de
	ld	c, a
	call	__ishrs
	pop	ix
	ret
	.local	.Lfunc_end18
.Lfunc_end18:
	.size	__Z4fadei, .Lfunc_end18-__Z4fadei
                                        ; -- End function
	.section	.text.__Z4lerpiii,"ax",@progbits
	.globl	__Z4lerpiii                     ; -- Begin function _Z4lerpiii
	.type	__Z4lerpiii,@function
__Z4lerpiii:                            ; @_Z4lerpiii
; %bb.0:
	call	__frameset0
	ld	bc, (ix + 6)
	ld	de, (ix + 9)
	ld	hl, (ix + 12)
	or	a, a
	sbc	hl, de
	call	__imulu
	ld	c, 8
	call	__ishrs
	add	hl, de
	pop	ix
	ret
	.local	.Lfunc_end19
.Lfunc_end19:
	.size	__Z4lerpiii, .Lfunc_end19-__Z4lerpiii
                                        ; -- End function
	.section	.text.__Z4gradhii,"ax",@progbits
	.globl	__Z4gradhii                     ; -- Begin function _Z4gradhii
	.type	__Z4gradhii,@function
__Z4gradhii:                            ; @_Z4gradhii
; %bb.0:
	call	__frameset0
	ld	a, (ix + 6)
	ld	de, (ix + 9)
	ld	iy, (ix + 12)
	ld	l, 7
	and	a, l
	ld	l, a
	ld	bc, 0
	ld	c, l
	ld	hl, JTI20_0
	add	hl, bc
	add	hl, bc
	add	hl, bc
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB20_1
.LBB20_1:
	add	iy, de
	.local	.LBB20_2
.LBB20_2:
	lea	de, iy + 0
	jr	.LBB20_11
	.local	.LBB20_3
.LBB20_3:
	lea	hl, iy + 0
	jr	.LBB20_5
	.local	.LBB20_4
.LBB20_4:
	ex	de, hl
	lea	de, iy + 0
	.local	.LBB20_5
.LBB20_5:
	or	a, a
	sbc	hl, de
	jr	.LBB20_10
	.local	.LBB20_6
.LBB20_6:
	lea	hl, iy + 0
	jr	.LBB20_9
	.local	.LBB20_7
.LBB20_7:
	ex	de, hl
	lea	de, iy + 0
	add	hl, de
	jr	.LBB20_9
	.local	.LBB20_8
.LBB20_8:
	ex	de, hl
	.local	.LBB20_9
.LBB20_9:
	call	__ineg
	.local	.LBB20_10
.LBB20_10:
	ex	de, hl
	.local	.LBB20_11
.LBB20_11:
	ex	de, hl
	pop	ix
	ret
	.local	.Lfunc_end20
.Lfunc_end20:
	.size	__Z4gradhii, .Lfunc_end20-__Z4gradhii
	.section	.rodata.__Z4gradhii,"a",@progbits
JTI20_0:
	d24	.LBB20_1
	d24	.LBB20_4
	d24	.LBB20_3
	d24	.LBB20_7
	d24	.LBB20_11
	d24	.LBB20_8
	d24	.LBB20_2
	d24	.LBB20_6
                                        ; -- End function
	.section	.text.__Z8perlin2djj,"ax",@progbits
	.globl	__Z8perlin2djj                  ; -- Begin function _Z8perlin2djj
	.type	__Z8perlin2djj,@function
__Z8perlin2djj:                         ; @_Z8perlin2djj
; %bb.0:
	ld	hl, -25
	call	__frameset
	ld	hl, (ix + 6)
	ld	c, 8
	call	__ishru
	ld	(ix - 18), hl
	ld	hl, (ix + 9)
	call	__ishru
	ld	(ix - 12), hl
	ld	hl, (ix + 6)
	ld	bc, 255
	call	__iand
	ld	(ix - 3), hl
	ld	hl, (ix + 9)
	call	__iand
	ld	(ix - 6), hl
	ld	hl, (ix - 3)
	push	hl
	call	__Z4fadei
	ld	(ix - 9), hl
	pop	hl
	ld	hl, (ix - 6)
	push	hl
	call	__Z4fadei
	ld	(ix - 15), hl
	pop	hl
	ld	hl, (ix - 18)
	ld	bc, 255
	call	__iand
	ex	de, hl
	ld	hl, _perm
	add	hl, de
	ld	(ix - 21), hl
	ld	a, (hl)
	ld	de, 0
	ld	e, a
	ld	hl, (ix - 12)
	call	__iand
	push	hl
	pop	iy
	add	iy, de
	ld	(ix - 12), iy
	ld	bc, _perm
	push	bc
	pop	iy
	ld	bc, (ix - 12)
	add	iy, bc
	ld	a, (iy)
	ld	c, (iy + 1)
	ld	(ix - 18), c
	ld	iy, (ix - 21)
	ld	e, (iy + 1)
	add	hl, de
	ex	de, hl
	ld	iy, _perm
	add	iy, de
	ld	l, (iy)
	ld	(ix - 25), l
	ld	l, (iy + 1)
	ld	(ix - 21), l
	ld	hl, (ix - 6)
	push	hl
	ld	hl, (ix - 3)
	push	hl
	ld	l, a
	push	hl
	call	__Z4gradhii
	ld	(ix - 12), hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix + 6)
	ld	bc, -256
	call	__ior
	ex	de, hl
	ld	(ix - 24), de
	ld	hl, (ix - 6)
	push	hl
	push	de
	ld	l, (ix - 25)                    ; 1-byte Folded Reload
	push	hl
	call	__Z4gradhii
	pop	de
	pop	de
	pop	de
	ld	de, (ix - 12)
	or	a, a
	sbc	hl, de
	ld	bc, (ix - 9)
	call	__imulu
	ld	c, 8
	call	__ishrs
	ld	de, (ix - 12)
	add	hl, de
	ld	(ix - 6), hl
	ld	hl, (ix + 9)
	ld	bc, -256
	call	__ior
	ld	(ix - 12), hl
	push	hl
	ld	hl, (ix - 3)
	push	hl
	ld	l, (ix - 18)                    ; 1-byte Folded Reload
	push	hl
	call	__Z4gradhii
	ld	(ix - 3), hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 12)
	push	hl
	ld	hl, (ix - 24)
	push	hl
	ld	l, (ix - 21)                    ; 1-byte Folded Reload
	push	hl
	call	__Z4gradhii
	pop	de
	pop	de
	pop	de
	ld	de, (ix - 3)
	or	a, a
	sbc	hl, de
	ld	bc, (ix - 9)
	call	__imulu
	ld	c, 8
	call	__ishru
	ex	de, hl
	ld	hl, (ix - 3)
	ld	bc, (ix - 6)
	or	a, a
	sbc	hl, bc
	add	hl, de
	ld	bc, (ix - 15)
	call	__imulu
	ld	a, h
	ld	hl, (ix - 6)
	add	a, l
	ld	l, a
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end21
.Lfunc_end21:
	.size	__Z8perlin2djj, .Lfunc_end21-__Z8perlin2djj
                                        ; -- End function
	.section	.text.__Z10hashCoordsjj,"ax",@progbits
	.globl	__Z10hashCoordsjj               ; -- Begin function _Z10hashCoordsjj
	.type	__Z10hashCoordsjj,@function
__Z10hashCoordsjj:                      ; @_Z10hashCoordsjj
; %bb.0:
	call	__frameset0
	ld	hl, (ix + 6)
	ld	bc, 3108411
	ld	iy, 2610411
	call	__imulu
	ex	de, hl
	ld	hl, (ix + 9)
	lea	bc, iy + 0
	call	__imulu
	add	hl, de
	pop	ix
	ret
	.local	.Lfunc_end22
.Lfunc_end22:
	.size	__Z10hashCoordsjj, .Lfunc_end22-__Z10hashCoordsjj
                                        ; -- End function
	.section	.text.__Z11hashTerrainjjjRN7tinystl13unordered_mapIjhNS_9allocatorEEE,"ax",@progbits
	.globl	__Z11hashTerrainjjjRN7tinystl13unordered_mapIjhNS_9allocatorEEE ; -- Begin function _Z11hashTerrainjjjRN7tinystl13unordered_mapIjhNS_9allocatorEEE
	.type	__Z11hashTerrainjjjRN7tinystl13unordered_mapIjhNS_9allocatorEEE,@function
__Z11hashTerrainjjjRN7tinystl13unordered_mapIjhNS_9allocatorEEE: ; @_Z11hashTerrainjjjRN7tinystl13unordered_mapIjhNS_9allocatorEEE
; %bb.0:
	ld	hl, -6
	call	__frameset
	ld	hl, (ix + 9)
	ld	iy, (ix + 12)
	ld	bc, 3108411
	call	__imulu
	ex	de, hl
	lea	hl, iy + 0
	ld	bc, 2610411
	call	__imulu
	add	hl, de
	ld	(ix - 3), hl
	pea	ix - 3
	ld	hl, (ix + 15)
	push	hl
	pea	ix - 6
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE4findERKj
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix - 6)
	lea	hl, iy + 0
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	nz, .LBB23_3
; %bb.1:
	ld	hl, (ix + 9)
	push	hl
	pop	iy
	add	iy, iy
	ld	hl, (ix + 12)
	add	hl, hl
	push	hl
	push	iy
	call	__Z8perlin2djj
	pop	hl
	pop	hl
	cp	a, 51
	jr	c, .LBB23_4
; %bb.2:
	xor	a, a
	jr	.LBB23_5
	.local	.LBB23_3
.LBB23_3:
	ld	a, (iy + 3)
	jr	.LBB23_5
	.local	.LBB23_4
.LBB23_4:
	ld	a, 28
	.local	.LBB23_5
.LBB23_5:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end23
.Lfunc_end23:
	.size	__Z11hashTerrainjjjRN7tinystl13unordered_mapIjhNS_9allocatorEEE, .Lfunc_end23-__Z11hashTerrainjjjRN7tinystl13unordered_mapIjhNS_9allocatorEEE
                                        ; -- End function
	.section	.text.__Z15create_randSeedv,"ax",@progbits
	.globl	__Z15create_randSeedv           ; -- Begin function _Z15create_randSeedv
	.type	__Z15create_randSeedv,@function
__Z15create_randSeedv:                  ; @_Z15create_randSeedv
; %bb.0:
	ld	hl, -20
	call	__frameset
	ld.sis	hl, 0
	ld	(ix - 1), h
	ld	(ix - 2), h
	ld	(ix - 5), l
	ld	(ix - 4), h
	pea	ix - 5
	pea	ix - 2
	pea	ix - 1
	call	_boot_GetDate
	pop	hl
	pop	hl
	pop	hl
	ld	(ix - 6), 0
	ld	(ix - 7), 0
	ld	(ix - 8), 0
	pea	ix - 8
	pea	ix - 7
	pea	ix - 6
	call	_boot_GetTime
	pop	hl
	pop	hl
	pop	hl
	ld	de, (ix - 5)
	or	a, a
	sbc	hl, hl
	ld	l, e
	ld	h, d
	ld	c, 8
	call	__ishl
	ld	(ix - 11), hl
	ld	a, (ix - 2)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	c, 20
	call	__ishl
	ld	(ix - 14), hl
	ld	a, (ix - 1)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	c, 14
	call	__ishl
	ld	(ix - 17), hl
	ld	a, (ix - 6)
	ld	de, 0
	ld	e, a
	ld	c, 9
	push	de
	pop	hl
	call	__ishl
	ld	(ix - 20), hl
	ld	a, (ix - 7)
	ld	e, a
	push	de
	pop	hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	hl
	pop	iy
	ld	a, (ix - 8)
	ld	e, a
	ld	hl, (ix - 11)
	ld	bc, (ix - 14)
	call	__ixor
	ld	bc, (ix - 17)
	call	__ixor
	ld	bc, (ix - 20)
	call	__ixor
	lea	bc, iy + 0
	call	__ixor
	push	de
	pop	bc
	call	__ixor
	ld	bc, 1153297
	call	__ixor
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end24
.Lfunc_end24:
	.size	__Z15create_randSeedv, .Lfunc_end24-__Z15create_randSeedv
                                        ; -- End function
	.section	.text.__Z14preload_valuesRN7tinystl13unordered_mapIjhNS_9allocatorEEE,"ax",@progbits
	.globl	__Z14preload_valuesRN7tinystl13unordered_mapIjhNS_9allocatorEEE ; -- Begin function _Z14preload_valuesRN7tinystl13unordered_mapIjhNS_9allocatorEEE
	.type	__Z14preload_valuesRN7tinystl13unordered_mapIjhNS_9allocatorEEE,@function
__Z14preload_valuesRN7tinystl13unordered_mapIjhNS_9allocatorEEE: ; @_Z14preload_valuesRN7tinystl13unordered_mapIjhNS_9allocatorEEE
; %bb.0:
	ld	hl, -6
	call	__frameset
	ld	bc, 255
	ld	iy, 0
	lea	hl, iy + 0
	.local	.LBB25_1
.LBB25_1:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB25_3 Depth 2
	call	__iand
	ld	(ix - 3), hl
	ld	a, l
	cp	a, -128
	lea	hl, iy + 0
	jr	nc, .LBB25_5
	jr	.LBB25_3
	.local	.LBB25_2
.LBB25_2:                               ;   in Loop: Header=BB25_3 Depth=2
	ld	iy, (_preloaded_x)
	ld	bc, (ix - 3)
	add	iy, bc
	ld	hl, (_preloaded_y)
	ld	(ix - 6), de
	add	hl, de
	ld	de, (ix + 6)
	push	de
	push	hl
	push	iy
	push	hl
	call	__Z11hashTerrainjjjRN7tinystl13unordered_mapIjhNS_9allocatorEEE
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 3)
	ld	c, 7
	call	__ishl
	ex	de, hl
	ld	hl, _tilemap_buffer
	add	hl, de
	ld	de, 0
	push	de
	pop	iy
	ld	bc, 255
	ld	de, (ix - 6)
	add	hl, de
	ld	(hl), a
	inc	de
	ex	de, hl
	.local	.LBB25_3
.LBB25_3:                               ; %.preheader
                                        ;   Parent Loop BB25_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	call	__iand
	push	hl
	pop	de
	ld	a, l
	cp	a, -128
	jr	c, .LBB25_2
; %bb.4:                                ;   in Loop: Header=BB25_1 Depth=1
	ld	hl, (ix - 3)
	inc	hl
	jr	.LBB25_1
	.local	.LBB25_5
.LBB25_5:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end25
.Lfunc_end25:
	.size	__Z14preload_valuesRN7tinystl13unordered_mapIjhNS_9allocatorEEE, .Lfunc_end25-__Z14preload_valuesRN7tinystl13unordered_mapIjhNS_9allocatorEEE
                                        ; -- End function
	.section	.text.__Z9writeSavejjjRhN7tinystl13unordered_mapIjhNS0_9allocatorEEE,"ax",@progbits
	.globl	__Z9writeSavejjjRhN7tinystl13unordered_mapIjhNS0_9allocatorEEE ; -- Begin function _Z9writeSavejjjRhN7tinystl13unordered_mapIjhNS0_9allocatorEEE
	.type	__Z9writeSavejjjRhN7tinystl13unordered_mapIjhNS0_9allocatorEEE,@function
__Z9writeSavejjjRhN7tinystl13unordered_mapIjhNS0_9allocatorEEE: ; @_Z9writeSavejjjRhN7tinystl13unordered_mapIjhNS0_9allocatorEEE
; %bb.0:
	ld	hl, -22
	call	__frameset
	ld	de, (ix + 9)
	ld	bc, (ix + 12)
	ld	iy, 1
	or	a, a
	sbc	hl, hl
	ld	(ix - 22), hl
	ld	hl, (ix + 6)
	ld	(ix - 3), hl
	ld	(ix - 6), de
	ld	(ix - 9), bc
	push	iy
	call	_gfx_SetDraw
	pop	hl
	call	_gfx_ZeroScreen
	ld	hl, 136
	push	hl
	ld	hl, 116
	push	hl
	ld	hl, _.str.20
	push	hl
	call	_gfx_PrintStringXY
	pop	hl
	pop	hl
	pop	hl
	call	_gfx_SwapDraw
	ld	hl, _.str.2
	push	hl
	ld	hl, _.str.1.21
	push	hl
	call	_ti_Open
	ld	e, a
	ld	(ix - 19), de
	pop	hl
	pop	hl
	push	de
	call	_ti_Rewind
	pop	hl
	ld	hl, (ix - 19)
	push	hl
	ld	hl, 1
	push	hl
	ld	hl, 3
	push	hl
	pea	ix - 3
	call	_ti_Write
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 19)
	push	hl
	ld	hl, 1
	push	hl
	ld	hl, 3
	push	hl
	pea	ix - 6
	call	_ti_Write
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 19)
	push	hl
	ld	hl, 1
	push	hl
	ld	hl, 3
	push	hl
	pea	ix - 9
	call	_ti_Write
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 19)
	push	hl
	ld	hl, 1
	push	hl
	push	hl
	ld	hl, (ix + 15)
	push	hl
	call	_ti_Write
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 18)
	ld	hl, (iy + 3)
	ld	bc, 0
	.local	.LBB26_1
.LBB26_1:                               ; =>This Inner Loop Header: Depth=1
	ld	iy, (hl)
	lea	hl, iy + 0
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	z, .LBB26_5
; %bb.2:                                ;   in Loop: Header=BB26_1 Depth=1
	ld	a, (iy + 3)
	or	a, a
	ld	de, 1
	jr	nz, .LBB26_4
; %bb.3:                                ;   in Loop: Header=BB26_1 Depth=1
	push	bc
	pop	de
	.local	.LBB26_4
.LBB26_4:                               ;   in Loop: Header=BB26_1 Depth=1
	ld	hl, (ix - 22)
	add	hl, de
	ld	(ix - 22), hl
	lea	hl, iy + 4
	jr	.LBB26_1
	.local	.LBB26_5
.LBB26_5:
	ld	hl, (ix - 22)
	ld	(ix - 12), hl
	ld	hl, (ix - 19)
	push	hl
	ld	hl, 1
	push	hl
	ld	hl, 3
	push	hl
	pea	ix - 12
	call	_ti_Write
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 18)
	ld	hl, (iy + 3)
	.local	.LBB26_6
.LBB26_6:                               ; =>This Inner Loop Header: Depth=1
	ld	iy, (hl)
	lea	hl, iy + 0
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	z, .LBB26_10
; %bb.7:                                ;   in Loop: Header=BB26_6 Depth=1
	ld	hl, (iy)
	ld	(ix - 15), hl
	ld	a, (iy + 3)
	ld	(ix - 16), a
	or	a, a
	jr	z, .LBB26_9
; %bb.8:                                ;   in Loop: Header=BB26_6 Depth=1
	ld	hl, (ix - 19)
	push	hl
	ld	hl, 1
	push	hl
	ld	hl, 3
	push	hl
	pea	ix - 15
	ld	(ix - 22), iy
	call	_ti_Write
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 19)
	push	hl
	ld	hl, 1
	push	hl
	push	hl
	pea	ix - 16
	call	_ti_Write
	ld	iy, (ix - 22)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB26_9
.LBB26_9:                               ;   in Loop: Header=BB26_6 Depth=1
	lea	hl, iy + 4
	jr	.LBB26_6
	.local	.LBB26_10
.LBB26_10:
	ld	hl, (ix - 19)
	push	hl
	call	_ti_Close
	pop	hl
	call	_gfx_SwapDraw
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end26
.Lfunc_end26:
	.size	__Z9writeSavejjjRhN7tinystl13unordered_mapIjhNS0_9allocatorEEE, .Lfunc_end26-__Z9writeSavejjjRhN7tinystl13unordered_mapIjhNS0_9allocatorEEE
                                        ; -- End function
	.section	.text.__Z8readSaveRjS_S_RhRN7tinystl13unordered_mapIjhNS1_9allocatorEEE,"ax",@progbits
	.globl	__Z8readSaveRjS_S_RhRN7tinystl13unordered_mapIjhNS1_9allocatorEEE ; -- Begin function _Z8readSaveRjS_S_RhRN7tinystl13unordered_mapIjhNS1_9allocatorEEE
	.type	__Z8readSaveRjS_S_RhRN7tinystl13unordered_mapIjhNS1_9allocatorEEE,@function
__Z8readSaveRjS_S_RhRN7tinystl13unordered_mapIjhNS1_9allocatorEEE: ; @_Z8readSaveRjS_S_RhRN7tinystl13unordered_mapIjhNS1_9allocatorEEE
; %bb.0:
	ld	hl, -24
	call	__frameset
	ld	bc, _.str.1.21
	ld	hl, _.str.3
	ld	de, 0
	ld	(ix - 21), de
	push	hl
	push	bc
	call	_ti_Open
	ld	e, a
	pop	hl
	pop	hl
	or	a, a
	jp	nz, .LBB27_2
; %bb.1:
	lea	hl, ix - 11
	ld	(ix - 24), hl
	call	__Z15create_randSeedv
	ld	de, (ix + 6)
	push	de
	pop	iy
	ld	(iy), hl
	ld	hl, _.str.2
	push	hl
	ld	hl, _.str.1.21
	push	hl
	call	_ti_Open
	ld	e, a
	ld	(ix - 18), de
	pop	hl
	pop	hl
	push	de
	call	_ti_Rewind
	pop	hl
	ld	hl, (ix - 18)
	push	hl
	ld	hl, 1
	push	hl
	ld	hl, 3
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_ti_Write
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	ld	(ix - 11), hl
	ld	(ix - 15), 1
	ld	hl, (ix - 18)
	push	hl
	ld	hl, 1
	push	hl
	ld	hl, 3
	push	hl
	ld	hl, (ix - 24)
	push	hl
	call	_ti_Write
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 18)
	push	hl
	ld	hl, 1
	push	hl
	ld	hl, 3
	push	hl
	ld	hl, (ix - 24)
	push	hl
	call	_ti_Write
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 18)
	push	hl
	ld	hl, 1
	push	hl
	push	hl
	pea	ix - 15
	call	_ti_Write
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 18)
	push	hl
	ld	hl, 1
	push	hl
	ld	hl, 3
	push	hl
	ld	hl, (ix - 24)
	push	hl
	call	_ti_Write
	ld	de, (ix - 18)
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	jp	.LBB27_6
	.local	.LBB27_2
.LBB27_2:
	push	de
	ld	(ix - 18), de
	call	_ti_Rewind
	pop	hl
	ld	hl, (ix - 18)
	push	hl
	ld	hl, 1
	push	hl
	ld	hl, 3
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	_ti_Read
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 18)
	push	hl
	ld	hl, 1
	push	hl
	ld	hl, 3
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	_ti_Read
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 18)
	push	hl
	ld	hl, 1
	push	hl
	ld	hl, 3
	push	hl
	ld	hl, (ix + 12)
	push	hl
	call	_ti_Read
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 18)
	push	hl
	ld	hl, 1
	push	hl
	push	hl
	ld	hl, (ix + 15)
	push	hl
	call	_ti_Read
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	ld	(ix - 3), hl
	ld	hl, (ix - 18)
	push	hl
	ld	hl, 1
	push	hl
	ld	hl, 3
	push	hl
	pea	ix - 3
	call	_ti_Read
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB27_3
.LBB27_3:                               ; =>This Inner Loop Header: Depth=1
	ld	de, (ix - 3)
	ld	hl, (ix - 21)
	or	a, a
	sbc	hl, de
	jr	nc, .LBB27_5
; %bb.4:                                ;   in Loop: Header=BB27_3 Depth=1
	ld	hl, (ix - 18)
	push	hl
	ld	hl, 1
	push	hl
	ld	hl, 3
	push	hl
	pea	ix - 6
	call	_ti_Read
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 18)
	push	hl
	ld	hl, 1
	push	hl
	push	hl
	pea	ix - 7
	call	_ti_Read
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 6)
	ld	(ix - 11), hl
	ld	a, (ix - 7)
	ld	(ix - 8), a
	pea	ix - 11
	ld	hl, (ix + 18)
	push	hl
	pea	ix - 15
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 21)
	inc	hl
	ld	(ix - 21), hl
	jr	.LBB27_3
	.local	.LBB27_5
.LBB27_5:
	ld	de, (ix - 18)
	.local	.LBB27_6
.LBB27_6:
	push	de
	call	_ti_Close
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end27
.Lfunc_end27:
	.size	__Z8readSaveRjS_S_RhRN7tinystl13unordered_mapIjhNS1_9allocatorEEE, .Lfunc_end27-__Z8readSaveRjS_S_RhRN7tinystl13unordered_mapIjhNS1_9allocatorEEE
                                        ; -- End function
	.section	.text.__Z9push_tile4Tile,"ax",@progbits
	.globl	__Z9push_tile4Tile              ; -- Begin function _Z9push_tile4Tile
	.type	__Z9push_tile4Tile,@function
__Z9push_tile4Tile:                     ; @_Z9push_tile4Tile
; %bb.0:
	ld	hl, -9
	call	__frameset
	ld	a, (_tile_count)
	ld	bc, 0
	push	bc
	pop	iy
	ld	(ix - 6), a                     ; 1-byte Folded Spill
	ld	iyl, a
	lea	de, iy + 0
	inc	de
	ld	a, (_tick_tile_count)
	ld	c, a
	push	de
	pop	hl
	ld	(ix - 3), bc
	or	a, a
	sbc	hl, bc
	jr	z, .LBB28_2
; %bb.1:
	ld	a, (ix - 6)                     ; 1-byte Folded Reload
	inc	a
	ld	(_tile_count), a
	lea	hl, iy + 0
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	hl
	pop	bc
	ld	hl, _to_update_tiles
	add	hl, bc
	push	hl
	pop	bc
	ld	iy, (ix + 6)
	ld	hl, (ix + 9)
	ld	(ix - 6), hl
	ld	hl, (ix + 12)
	ld	(ix - 9), hl
	push	bc
	pop	hl
	ld	(hl), iy
	push	bc
	pop	iy
	ld	hl, (ix - 6)
	ld	(iy + 3), hl
	ld	hl, (ix - 9)
	ld	(iy + 6), l
	ld	(iy + 7), h
	.local	.LBB28_2
.LBB28_2:
	ex	de, hl
	ld	de, (ix - 3)
	or	a, a
	sbc	hl, de
	jr	nz, .LBB28_4
; %bb.3:
	ld	a, 0
	jr	.LBB28_5
	.local	.LBB28_4
.LBB28_4:
	ld	a, -1
	.local	.LBB28_5
.LBB28_5:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end28
.Lfunc_end28:
	.size	__Z9push_tile4Tile, .Lfunc_end28-__Z9push_tile4Tile
                                        ; -- End function
	.section	.text.__Z13add_tick_tilejjh10Tick_Types,"ax",@progbits
	.globl	__Z13add_tick_tilejjh10Tick_Types ; -- Begin function _Z13add_tick_tilejjh10Tick_Types
	.type	__Z13add_tick_tilejjh10Tick_Types,@function
__Z13add_tick_tilejjh10Tick_Types:      ; @_Z13add_tick_tilejjh10Tick_Types
; %bb.0:
	ld	hl, -16
	call	__frameset
	ld	a, (_tile_count)
	ld	iyl, a
	ld	bc, 0
	push	bc
	pop	de
	ld	e, iyl
	push	de
	pop	hl
	inc	hl
	ld	a, (_tick_tile_count)
	ld	c, a
	or	a, a
	sbc	hl, bc
	jp	z, .LBB29_2
; %bb.1:
	ld	a, (ix + 15)
	ld	iyh, a
	ld	bc, _to_update_tiles
	inc	iyl
	ld	a, iyl
	ld	(_tile_count), a
	ex	de, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	push	bc
	pop	hl
	add	hl, de
	ld	(ix - 8), hl
	xor	a, a
	ld	(ix - 2), a
	ld	hl, (ix - 4)
	ld	h, a
	ex	de, hl
	ld	e, iyh
	ex	de, hl
	ld	de, 0
	ld	c, e
	ld	b, d
	ld	iy, 56
	push	iy
	push	bc
	pop	iy
	ld	(ix - 5), iy
	call	__llshl
	ld	(ix - 11), hl
	ld	(ix - 14), de
	ld	(ix - 16), c
	ld	(ix - 15), b
	pop	hl
	ld	(ix - 1), a
	ld	hl, (ix - 3)
	ld	h, a
	ld	l, (ix + 12)
	ld	de, 48
	push	de
	ld	de, 0
	ld	c, iyl
	ld	b, iyh
	call	__llshl
                                        ; kill: def $bc killed $bc def $ubc
	pop	iy
	push	bc
	push	de
	push	hl
	ld	hl, (ix - 11)
	ld	de, (ix - 14)
	ld	c, (ix - 16)
	ld	b, (ix - 15)
	call	__lladd
	ld	(ix - 11), hl
	ld	(ix - 14), de
	ld	(ix - 16), c
	ld	(ix - 15), b
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 24
	push	hl
	ld	hl, (ix + 9)
	ld	de, 0
	ld	bc, (ix - 5)
                                        ; kill: def $bc killed $bc killed $ubc
	call	__llshl
                                        ; kill: def $bc killed $bc def $ubc
	pop	iy
	push	bc
	push	de
	push	hl
	ld	hl, (ix - 11)
	ld	de, (ix - 14)
	ld	c, (ix - 16)
	ld	b, (ix - 15)
	call	__lladd
	pop	iy
	pop	iy
	pop	iy
	ld	iy, (ix - 5)
	push	iy
	ld	iy, 0
	push	iy
	ld	iy, (ix + 6)
	push	iy
	call	__lladd
	pop	iy
	pop	iy
	pop	iy
	ld	iy, (ix - 8)
	ld	(iy), hl
	ld	(iy + 3), de
	ld	(iy + 6), c
	ld	(iy + 7), b
	.local	.LBB29_2
.LBB29_2:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end29
.Lfunc_end29:
	.size	__Z13add_tick_tilejjh10Tick_Types, .Lfunc_end29-__Z13add_tick_tilejjh10Tick_Types
                                        ; -- End function
	.section	.text.__Z15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEE,"ax",@progbits
	.globl	__Z15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEE ; -- Begin function _Z15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEE
	.type	__Z15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEE,@function
__Z15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEE: ; @_Z15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEE
; %bb.0:
	ld	hl, -35
	call	__frameset
	ld	iy, _to_update_tiles
	ld	de, 1
	ld	a, (_tick_tile_count)
	or	a, a
	sbc	hl, hl
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	hl
	pop	bc
	add	iy, bc
	ld	hl, (iy)
	ld	(ix - 23), hl
	ld	hl, (iy + 3)
	ld	(ix - 20), hl
	ld	a, (iy + 6)
	ld	l, (iy + 7)
	ld	(ix - 35), l
	ld	hl, _tick_tile_count
	inc	(hl)
	ld	(ix - 1), a
	pea	ix - 1
	push	de
	ld	hl, __ZZ15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEEE15tiles_no_update
	push	hl
	call	__Z8containsIhhEbPKT_jRKT0_
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	nz, .LBB30_34
; %bb.1:
	ld	bc, 3108411
	lea	iy, ix - 8
	lea	hl, ix - 11
	ld	(ix - 17), hl
	ld	(ix - 2), 0
	ld	(ix - 3), 0
	ld	(ix - 4), 0
	ld	(ix - 5), 0
	ld	hl, (ix - 23)
	call	__imulu
	ex	de, hl
	ld	hl, (ix - 20)
	ld	bc, 2610411
	call	__imulu
	push	hl
	pop	bc
	ld	(ix - 26), de
	ex	de, hl
	ld	(ix - 29), bc
	add	hl, bc
	ld	de, -3108411
	add	hl, de
	ld	(ix - 11), hl
	pea	ix - 11
	ld	hl, (ix + 6)
	push	hl
	ld	(ix - 32), iy
	push	iy
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE4findERKj
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix - 8)
	lea	hl, iy + 0
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	z, .LBB30_3
; %bb.2:
	ld	a, (iy + 3)
	ld	(ix - 2), a
	.local	.LBB30_3
.LBB30_3:
	ld	hl, (ix - 26)
	ld	de, (ix - 29)
	add	hl, de
	ld	de, 3108411
	add	hl, de
	ld	(ix - 14), hl
	pea	ix - 14
	ld	hl, (ix + 6)
	push	hl
	ld	hl, (ix - 17)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE4findERKj
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 17)
	ld	a, (hl)
	ld	hl, (ix - 32)
	ld	(hl), a
	ld	a, (ix - 10)
	ld	(ix - 7), a
	ld	a, (ix - 9)
	ld	(ix - 6), a
	ld	iy, (ix - 8)
	lea	hl, iy + 0
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	z, .LBB30_5
; %bb.4:
	ld	a, (iy + 3)
	ld	(ix - 3), a
	.local	.LBB30_5
.LBB30_5:
	ld	hl, (ix - 26)
	ld	de, (ix - 29)
	add	hl, de
	ld	de, 2610411
	add	hl, de
	ld	(ix - 14), hl
	pea	ix - 14
	ld	hl, (ix + 6)
	push	hl
	ld	hl, (ix - 17)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE4findERKj
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 17)
	ld	a, (hl)
	ld	hl, (ix - 32)
	ld	(hl), a
	ld	a, (ix - 10)
	ld	(ix - 7), a
	ld	a, (ix - 9)
	ld	(ix - 6), a
	ld	iy, (ix - 8)
	lea	hl, iy + 0
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	z, .LBB30_7
; %bb.6:
	ld	a, (iy + 3)
	ld	(ix - 4), a
	.local	.LBB30_7
.LBB30_7:
	ld	hl, (ix - 26)
	ld	de, (ix - 29)
	add	hl, de
	ld	de, -2610411
	add	hl, de
	ld	(ix - 14), hl
	pea	ix - 14
	ld	hl, (ix + 6)
	push	hl
	ld	hl, (ix - 17)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE4findERKj
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 17)
	ld	a, (hl)
	ld	hl, (ix - 32)
	ld	(hl), a
	ld	a, (ix - 10)
	ld	(ix - 7), a
	ld	a, (ix - 9)
	ld	(ix - 6), a
	ld	iy, (ix - 8)
	lea	hl, iy + 0
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	z, .LBB30_9
; %bb.8:
	ld	a, (iy + 3)
	ld	(ix - 5), a
	.local	.LBB30_9
.LBB30_9:
	ld	a, (ix - 35)                    ; 1-byte Folded Reload
	or	a, a
	jp	nz, .LBB30_33
; %bb.10:
	ld	b, (ix - 1)
	ld	a, b
	cp	a, 7
	jp	nc, .LBB30_33
; %bb.11:
	ld	iy, 3
	lea	de, ix - 2
	lea	hl, ix - 3
	ld	(ix - 35), hl
	lea	hl, ix - 4
	ld	(ix - 17), hl
	lea	hl, ix - 5
	ld	(ix - 32), hl
	ld	a, 1
	call	__bshl
	ld	l, 42
	and	a, l
	ld	l, a
	or	a, a
	jr	z, .LBB30_17
; %bb.12:
	ld	hl, __ZZ15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEEE15dead_wire_tiles
	push	de
	push	iy
	push	hl
	call	__Z8containsIhhEbPKT_jRKT0_
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jr	nz, .LBB30_14
; %bb.13:
	ld	hl, (ix - 35)
	push	hl
	ld	hl, 3
	push	hl
	ld	hl, __ZZ15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEEE15dead_wire_tiles
	push	hl
	call	__Z8containsIhhEbPKT_jRKT0_
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB30_23
	.local	.LBB30_14
.LBB30_14:
	ld	hl, (ix - 17)
	push	hl
	ld	hl, 3
	push	hl
	ld	hl, __ZZ15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEEE15dead_wire_tiles
	push	hl
	call	__Z8containsIhhEbPKT_jRKT0_
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	nz, .LBB30_26
; %bb.15:
	ld	hl, (ix - 32)
	push	hl
	ld	hl, 3
	push	hl
	ld	hl, __ZZ15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEEE15dead_wire_tiles
	push	hl
	call	__Z8containsIhhEbPKT_jRKT0_
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	nz, .LBB30_26
; %bb.16:
	ld	hl, (ix - 29)
	ld	de, (ix - 26)
	add	hl, de
	ld	(ix - 11), hl
	pea	ix - 11
	ld	hl, (ix + 6)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	ld	a, 3
	jp	.LBB30_30
	.local	.LBB30_17
.LBB30_17:
	ld	a, 1
	call	__bshl
	ld	l, 84
	and	a, l
	ld	l, a
	or	a, a
	jp	z, .LBB30_33
; %bb.18:
	ld	hl, __ZZ15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEEE15live_wire_tiles
	push	de
	push	iy
	push	hl
	call	__Z8containsIhhEbPKT_jRKT0_
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jr	nz, .LBB30_20
; %bb.19:
	ld	hl, (ix - 35)
	push	hl
	ld	hl, 3
	push	hl
	ld	hl, __ZZ15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEEE15live_wire_tiles
	push	hl
	call	__Z8containsIhhEbPKT_jRKT0_
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	z, .LBB30_27
	.local	.LBB30_20
.LBB30_20:
	ld	hl, (ix - 17)
	push	hl
	ld	hl, 3
	push	hl
	ld	hl, __ZZ15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEEE15live_wire_tiles
	push	hl
	call	__Z8containsIhhEbPKT_jRKT0_
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	nz, .LBB30_31
; %bb.21:
	ld	hl, (ix - 32)
	push	hl
	ld	hl, 3
	push	hl
	ld	hl, __ZZ15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEEE15live_wire_tiles
	push	hl
	call	__Z8containsIhhEbPKT_jRKT0_
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jp	nz, .LBB30_31
; %bb.22:
	ld	hl, (ix - 29)
	ld	de, (ix - 26)
	add	hl, de
	ld	(ix - 11), hl
	pea	ix - 11
	ld	hl, (ix + 6)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	ld	a, 4
	jp	.LBB30_30
	.local	.LBB30_23
.LBB30_23:
	ld	hl, (ix - 17)
	push	hl
	ld	hl, 3
	push	hl
	ld	hl, __ZZ15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEEE15dead_wire_tiles
	push	hl
	call	__Z8containsIhhEbPKT_jRKT0_
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jr	nz, .LBB30_25
; %bb.24:
	ld	hl, (ix - 32)
	push	hl
	ld	hl, 3
	push	hl
	ld	hl, __ZZ15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEEE15dead_wire_tiles
	push	hl
	call	__Z8containsIhhEbPKT_jRKT0_
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jr	z, .LBB30_26
	.local	.LBB30_25
.LBB30_25:
	ld	hl, (ix - 29)
	ld	de, (ix - 26)
	add	hl, de
	ld	(ix - 11), hl
	pea	ix - 11
	ld	hl, (ix + 6)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	ld	a, 5
	jr	.LBB30_30
	.local	.LBB30_26
.LBB30_26:
	ld	hl, (ix - 29)
	ld	de, (ix - 26)
	add	hl, de
	ld	(ix - 11), hl
	pea	ix - 11
	ld	hl, (ix + 6)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	(hl), 1
	ld	a, 1
	jr	.LBB30_32
	.local	.LBB30_27
.LBB30_27:
	ld	hl, (ix - 17)
	push	hl
	ld	hl, 3
	push	hl
	ld	hl, __ZZ15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEEE15live_wire_tiles
	push	hl
	call	__Z8containsIhhEbPKT_jRKT0_
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jr	nz, .LBB30_29
; %bb.28:
	ld	hl, (ix - 32)
	push	hl
	ld	hl, 3
	push	hl
	ld	hl, __ZZ15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEEE15live_wire_tiles
	push	hl
	call	__Z8containsIhhEbPKT_jRKT0_
	pop	hl
	pop	hl
	pop	hl
	bit	0, a
	jr	z, .LBB30_31
	.local	.LBB30_29
.LBB30_29:
	ld	hl, (ix - 29)
	ld	de, (ix - 26)
	add	hl, de
	ld	(ix - 11), hl
	pea	ix - 11
	ld	hl, (ix + 6)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	ld	a, 6
	.local	.LBB30_30
.LBB30_30:
	pop	de
	pop	de
	ld	(hl), a
	jr	.LBB30_32
	.local	.LBB30_31
.LBB30_31:
	ld	hl, (ix - 29)
	ld	de, (ix - 26)
	add	hl, de
	ld	(ix - 11), hl
	pea	ix - 11
	ld	hl, (ix + 6)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	(hl), 2
	ld	a, 2
	.local	.LBB30_32
.LBB30_32:
	ld	hl, (ix - 23)
	ld	bc, 127
	call	__iand
	ex	de, hl
	ld	hl, (ix - 20)
	call	__iand
	push	hl
	pop	iy
	ld	c, 7
	ex	de, hl
	call	__ishl
	ex	de, hl
	ld	hl, _tilemap_buffer
	add	hl, de
	lea	de, iy + 0
	add	hl, de
	ld	(hl), a
	.local	.LBB30_33
.LBB30_33:
	or	a, a
	sbc	hl, hl
	push	hl
	call	_gfx_SetDraw
	pop	hl
	ld	hl, (ix - 23)
	ld	bc, 127
	call	__iand
	ex	de, hl
	ld	hl, (ix - 20)
	call	__iand
	push	hl
	pop	iy
	ld	c, 7
	ex	de, hl
	call	__ishl
	ex	de, hl
	ld	hl, _tilemap_buffer
	add	hl, de
	lea	de, iy + 0
	add	hl, de
	ld	a, (hl)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	bc, 3
	call	__imulu
	ex	de, hl
	ld	hl, _gameTiles_tiles_data
	add	hl, de
	ld	hl, (hl)
	ld	(ix - 17), hl
	ld	de, (_x)
	ld	hl, (ix - 23)
	or	a, a
	sbc	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	ld	bc, (_y)
	ld	hl, (ix - 20)
	or	a, a
	sbc	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	hl
	push	de
	ld	hl, (ix - 17)
	push	hl
	call	_gfx_Sprite
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 1
	push	hl
	call	_gfx_SetDraw
	pop	hl
	.local	.LBB30_34
.LBB30_34:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end30
.Lfunc_end30:
	.size	__Z15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEE, .Lfunc_end30-__Z15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEE
                                        ; -- End function
	.section	.text.__Z8containsIhhEbPKT_jRKT0_,"ax",@progbits
	.weak	__Z8containsIhhEbPKT_jRKT0_     ; -- Begin function _Z8containsIhhEbPKT_jRKT0_
	.type	__Z8containsIhhEbPKT_jRKT0_,@function
__Z8containsIhhEbPKT_jRKT0_:            ; @_Z8containsIhhEbPKT_jRKT0_
; %bb.0:
	ld	hl, -1
	call	__frameset
	ld	iy, (ix + 9)
	ld	hl, (ix + 12)
	ld	bc, 0
	ld	a, (hl)
	.local	.LBB31_1
.LBB31_1:                               ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	de
	lea	hl, iy + 0
	or	a, a
	sbc	hl, de
	lea	bc, iy + 0
	jr	z, .LBB31_4
; %bb.2:                                ;   in Loop: Header=BB31_1 Depth=1
	ld	hl, (ix + 6)
	add	hl, de
	push	bc
	pop	iy
	push	de
	pop	bc
	inc	bc
	ld	(ix - 1), a                     ; 1-byte Folded Spill
	ld	a, (hl)
	ld	l, (ix - 1)
	cp	a, l
	ld	a, (ix - 1)                     ; 1-byte Folded Reload
	jr	nz, .LBB31_1
; %bb.3:                                ; %._crit_edge
	lea	bc, iy + 0
	jr	.LBB31_5
	.local	.LBB31_4
.LBB31_4:
	push	bc
	pop	de
	.local	.LBB31_5
.LBB31_5:
	ex	de, hl
	or	a, a
	sbc	hl, bc
                                        ; kill: def $a killed $a
	sbc	a, a
	inc	sp
	pop	ix
	ret
	.local	.Lfunc_end31
.Lfunc_end31:
	.size	__Z8containsIhhEbPKT_jRKT0_, .Lfunc_end31-__Z8containsIhhEbPKT_jRKT0_
                                        ; -- End function
	.section	.text.__Z4tickRN7tinystl13unordered_mapIjhNS_9allocatorEEES3_,"ax",@progbits
	.globl	__Z4tickRN7tinystl13unordered_mapIjhNS_9allocatorEEES3_ ; -- Begin function _Z4tickRN7tinystl13unordered_mapIjhNS_9allocatorEEES3_
	.type	__Z4tickRN7tinystl13unordered_mapIjhNS_9allocatorEEES3_,@function
__Z4tickRN7tinystl13unordered_mapIjhNS_9allocatorEEES3_: ; @_Z4tickRN7tinystl13unordered_mapIjhNS_9allocatorEEES3_
; %bb.0:
	ld	hl, -55
	call	__frameset
	ld	iy, (ix + 6)
	ld	hl, (iy)
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jp	z, .LBB32_75
; %bb.1:
	ld	de, (ix + 9)
	lea	bc, ix - 3
	ld	hl, (iy + 3)
	ld	hl, (hl)
	ld	(ix - 32), hl
	ld	hl, (hl)
	ld	(ix - 3), hl
	ld	(ix - 35), bc
	push	bc
	push	de
	pea	ix - 22
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE4findERKj
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 22)
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	nz, .LBB32_3
; %bb.2:
	lea	hl, ix - 6
	ld	de, (ix - 32)
	ld	(ix - 6), de
	push	de
	ld	iy, 0
	add	iy, sp
	ld	a, (hl)
	ld	(iy), a
	ld	a, (ix - 5)
	ld	(iy + 1), a
	ld	a, (ix - 4)
	ld	(iy + 2), a
	ld	hl, (ix + 6)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE5eraseENS_23unordered_hash_iteratorIKNS_19unordered_hash_nodeIjhEEEE
	jp	.LBB32_74
	.local	.LBB32_3
.LBB32_3:
	lea	hl, ix - 29
	ld	(ix - 38), hl
	ld	hl, (ix - 35)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	pea	ix - 22
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE4findERKj
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix - 22)
	ld	d, (iy + 3)
	ld	iy, (ix - 32)
	ld	e, (iy + 3)
	ld	iy, (ix - 3)
	lea	hl, iy + 0
	ld	bc, -3108411
	add	hl, bc
	ld	(ix - 9), hl
	lea	hl, iy + 0
	ld	bc, 3108411
	add	hl, bc
	ld	(ix - 12), hl
	lea	hl, iy + 0
	ld	bc, -2610411
	add	hl, bc
	ld	(ix - 15), hl
	ld	bc, 2610411
	add	iy, bc
	ld	(ix - 18), iy
	ld	a, e
	or	a, a
	jp	z, .LBB32_73
; %bb.4:
	ld	a, d
	or	a, a
	jp	z, .LBB32_73
; %bb.5:
	dec	e
	ld	a, e
	cp	a, 4
	jp	nc, .LBB32_65
; %bb.6:
	lea	hl, ix - 9
	ld	(ix - 44), hl
	lea	hl, ix - 12
	ld	(ix - 50), hl
	lea	hl, ix - 15
	ld	(ix - 47), hl
	lea	iy, ix - 18
	ld	bc, 0
	ld	c, e
	ld	hl, JTI32_0
	add	hl, bc
	add	hl, bc
	add	hl, bc
	ld	b, d
	ld	hl, (hl)
	ld	c, 84
	ld	de, (ix + 6)
	jp	(hl)
	.local	.LBB32_7
.LBB32_7:
	ld	hl, (ix - 35)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 9
	jr	nz, .LBB32_9
; %bb.8:
	ld	hl, (ix - 9)
	ld	(ix - 22), hl
	ld	(ix - 19), 4
	pea	ix - 22
	ld	hl, (ix + 6)
	push	hl
	pea	ix - 26
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 12)
	ld	(ix - 22), hl
	ld	(ix - 19), 4
	pea	ix - 22
	ld	hl, (ix + 6)
	push	hl
	pea	ix - 26
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 15)
	ld	(ix - 22), hl
	ld	(ix - 19), 4
	pea	ix - 22
	ld	hl, (ix + 6)
	push	hl
	pea	ix - 26
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 18)
	ld	(ix - 22), hl
	ld	(ix - 19), 4
	pea	ix - 22
	ld	hl, (ix + 6)
	push	hl
	pea	ix - 26
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB32_9
.LBB32_9:
	ld	hl, (ix - 35)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	(hl), 0
	ld	hl, (ix - 9)
	ld	(ix - 22), hl
	ld	(ix - 19), 1
	pea	ix - 22
	ld	hl, (ix + 6)
	push	hl
	jp	.LBB32_64
	.local	.LBB32_10
.LBB32_10:
	ld	a, b
	cp	a, 6
	jp	nc, .LBB32_18
; %bb.11:
	ld	a, 1
	call	__bshl
	ld	l, 42
	and	a, l
	ld	l, a
	or	a, a
	jp	z, .LBB32_18
; %bb.12:
	inc	b
	ld	(ix - 41), b
	ld	hl, (ix - 35)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	ld	(ix - 53), iy
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (ix - 41)
	ld	(hl), a
	ld	hl, (ix - 9)
	ld	(ix - 22), hl
	ld	(ix - 19), 3
	pea	ix - 22
	ld	hl, (ix + 6)
	push	hl
	pea	ix - 26
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 12)
	ld	(ix - 22), hl
	ld	(ix - 19), 3
	pea	ix - 22
	ld	hl, (ix + 6)
	push	hl
	pea	ix - 26
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 15)
	ld	(ix - 22), hl
	ld	(ix - 19), 3
	pea	ix - 22
	ld	hl, (ix + 6)
	push	hl
	pea	ix - 26
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 18)
	ld	(ix - 22), hl
	ld	(ix - 19), 3
	pea	ix - 22
	ld	hl, (ix + 6)
	push	hl
	pea	ix - 26
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 35)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	pea	ix - 22
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE4findERKj
	ld	c, 84
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix - 22)
	ld	b, (iy + 3)
	ld	iy, (ix - 53)
	jp	.LBB32_18
	.local	.LBB32_13
.LBB32_13:
	ld	a, b
	cp	a, 7
	jp	nc, .LBB32_16
; %bb.14:
	ld	a, 1
	call	__bshl
	and	a, c
	ld	l, a
	or	a, a
	jp	z, .LBB32_16
; %bb.15:
	dec	b
	ld	(ix - 41), b
	ld	hl, (ix - 35)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	ld	(ix - 53), iy
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (ix - 41)
	ld	(hl), a
	ld	hl, (ix - 9)
	ld	(ix - 22), hl
	ld	(ix - 19), 4
	pea	ix - 22
	ld	hl, (ix + 6)
	push	hl
	pea	ix - 26
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 12)
	ld	(ix - 22), hl
	ld	(ix - 19), 4
	pea	ix - 22
	ld	hl, (ix + 6)
	push	hl
	pea	ix - 26
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 15)
	ld	(ix - 22), hl
	ld	(ix - 19), 4
	pea	ix - 22
	ld	hl, (ix + 6)
	push	hl
	pea	ix - 26
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 18)
	ld	(ix - 22), hl
	ld	(ix - 19), 4
	pea	ix - 22
	ld	hl, (ix + 6)
	push	hl
	pea	ix - 26
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 35)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	pea	ix - 22
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE4findERKj
	ld	c, 84
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix - 22)
	ld	b, (iy + 3)
	ld	iy, (ix - 53)
	ld	de, (ix + 6)
	.local	.LBB32_16
.LBB32_16:
	ld	a, b
	cp	a, 9
	jr	nz, .LBB32_18
; %bb.17:
	ld	a, 9
	ld	(ix - 41), a
	ld	hl, (ix - 44)
	push	hl
	push	de
	ld	(ix - 53), iy
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	(hl), 3
	ld	hl, (ix - 50)
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	(hl), 3
	ld	hl, (ix - 47)
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	(hl), 3
	ld	hl, (ix - 53)
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	(hl), 3
	jp	.LBB32_60
	.local	.LBB32_18
.LBB32_18:
	ld	a, b
	cp	a, 7
	ld	(ix - 41), b
	jp	nc, .LBB32_60
; %bb.19:
	ld	a, 1
	call	__bshl
	ld	l, 42
	and	a, l
	ld	l, a
	or	a, a
	ld	(ix - 53), iy
	ld	a, 1
	jp	z, .LBB32_33
; %bb.20:
	ld	(ix - 54), a
	ld	hl, (ix - 44)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 1
	jr	z, .LBB32_26
; %bb.21:
	ld	hl, (ix - 44)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 3
	jr	z, .LBB32_26
; %bb.22:
	ld	hl, (ix - 44)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 5
	jr	z, .LBB32_26
; %bb.23:
	ld	hl, (ix - 50)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 1
	jr	z, .LBB32_26
; %bb.24:
	ld	hl, (ix - 50)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 3
	jr	z, .LBB32_26
; %bb.25:
	ld	hl, (ix - 50)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 5
	jp	nz, .LBB32_34
	.local	.LBB32_26
.LBB32_26:
	ld	hl, (ix - 47)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 1
	jp	z, .LBB32_41
; %bb.27:
	ld	hl, (ix - 47)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 3
	jp	z, .LBB32_41
; %bb.28:
	ld	hl, (ix - 47)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 5
	jp	z, .LBB32_41
; %bb.29:
	ld	hl, (ix - 53)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 1
	jp	z, .LBB32_41
; %bb.30:
	ld	hl, (ix - 53)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 3
	jp	z, .LBB32_41
; %bb.31:
	ld	hl, (ix - 53)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 5
	jp	z, .LBB32_41
; %bb.32:
	ld	a, 3
	jr	.LBB32_40
	.local	.LBB32_33
.LBB32_33:
	call	__bshl
	and	a, c
	ld	l, a
	or	a, a
	ld	hl, (ix - 44)
	jp	nz, .LBB32_43
	jp	.LBB32_60
	.local	.LBB32_34
.LBB32_34:
	ld	a, 5
	ld	(ix - 55), a
	ld	hl, (ix - 47)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 1
	jr	z, .LBB32_39
; %bb.35:
	ld	hl, (ix - 47)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 3
	jr	z, .LBB32_39
; %bb.36:
	ld	hl, (ix - 47)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 5
	jr	z, .LBB32_39
; %bb.37:
	ld	hl, (ix - 53)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 1
	jr	z, .LBB32_39
; %bb.38:
	ld	hl, (ix - 53)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 3
	jp	nz, .LBB32_86
	.local	.LBB32_39
.LBB32_39:
	ld	a, 5
	.local	.LBB32_40
.LBB32_40:
	ld	(ix - 54), a
	.local	.LBB32_41
.LBB32_41:
	ld	hl, (ix - 35)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (ix - 54)
	ld	(hl), a
	ld	b, (ix - 41)                    ; 1-byte Folded Reload
	ld	a, b
	cp	a, 2
	ld	hl, (ix - 44)
	jr	z, .LBB32_43
; %bb.42:
	ld	a, b
	cp	a, 4
	jp	nz, .LBB32_60
	.local	.LBB32_43
.LBB32_43:
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 2
	jp	z, .LBB32_51
; %bb.44:
	ld	hl, (ix - 44)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 4
	jr	z, .LBB32_51
; %bb.45:
	ld	hl, (ix - 44)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 6
	jr	z, .LBB32_51
; %bb.46:
	ld	hl, (ix - 44)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 9
	jr	z, .LBB32_51
; %bb.47:
	ld	hl, (ix - 50)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 2
	jr	z, .LBB32_51
; %bb.48:
	ld	hl, (ix - 50)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 4
	jr	z, .LBB32_51
; %bb.49:
	ld	hl, (ix - 50)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 6
	jr	z, .LBB32_51
; %bb.50:
	ld	hl, (ix - 50)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 9
	jp	nz, .LBB32_76
	.local	.LBB32_51
.LBB32_51:
	ld	hl, (ix - 47)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 2
	jp	z, .LBB32_59
; %bb.52:
	ld	hl, (ix - 47)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 4
	jr	z, .LBB32_59
; %bb.53:
	ld	hl, (ix - 47)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 6
	jr	z, .LBB32_59
; %bb.54:
	ld	hl, (ix - 47)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 9
	jr	z, .LBB32_59
; %bb.55:
	ld	hl, (ix - 53)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 2
	jr	z, .LBB32_59
; %bb.56:
	ld	hl, (ix - 53)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 4
	jr	z, .LBB32_59
; %bb.57:
	ld	hl, (ix - 53)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 6
	jr	z, .LBB32_59
; %bb.58:
	ld	hl, (ix - 53)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 9
	jp	nz, .LBB32_85
	.local	.LBB32_59
.LBB32_59:
	ld	hl, (ix - 35)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	(hl), 2
	.local	.LBB32_60
.LBB32_60:
	ld	hl, (ix + 9)
	ld	de, (ix - 35)
	push	de
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	ld	l, (ix - 41)                    ; 1-byte Folded Reload
	cp	a, l
	jp	z, .LBB32_65
; %bb.61:
	ld	a, l
	cp	a, 9
	ld	de, (ix + 6)
	jr	nz, .LBB32_63
; %bb.62:
	ld	hl, (ix - 9)
	ld	(ix - 22), hl
	ld	(ix - 19), 3
	pea	ix - 22
	push	de
	pea	ix - 26
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 12)
	ld	(ix - 22), hl
	ld	(ix - 19), 3
	pea	ix - 22
	ld	hl, (ix + 6)
	push	hl
	pea	ix - 26
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 15)
	ld	(ix - 22), hl
	ld	(ix - 19), 3
	pea	ix - 22
	ld	hl, (ix + 6)
	push	hl
	pea	ix - 26
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 18)
	ld	(ix - 22), hl
	ld	(ix - 19), 3
	pea	ix - 22
	ld	hl, (ix + 6)
	push	hl
	pea	ix - 26
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE
	ld	de, (ix + 6)
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB32_63
.LBB32_63:
	ld	hl, (ix - 9)
	ld	(ix - 22), hl
	ld	(ix - 19), 1
	pea	ix - 22
	push	de
	.local	.LBB32_64
.LBB32_64:                              ; %.preheader
	pea	ix - 26
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 12)
	ld	(ix - 22), hl
	ld	(ix - 19), 1
	pea	ix - 22
	ld	hl, (ix + 6)
	push	hl
	pea	ix - 26
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 15)
	ld	(ix - 22), hl
	ld	(ix - 19), 1
	pea	ix - 22
	ld	hl, (ix + 6)
	push	hl
	pea	ix - 26
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 18)
	ld	(ix - 22), hl
	ld	(ix - 19), 1
	pea	ix - 22
	ld	hl, (ix + 6)
	push	hl
	pea	ix - 26
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6insertERKNS_4pairIjhEE
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB32_65
.LBB32_65:                              ; %.preheader
	ld	iy, 0
	xor	a, a
	ld	bc, 20
	lea	de, iy + 0
	.local	.LBB32_66
.LBB32_66:                              ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB32_68 Depth 2
	push	de
	pop	hl
	or	a, a
	sbc	hl, bc
	jp	z, .LBB32_73
; %bb.67:                               ;   in Loop: Header=BB32_66 Depth=1
	ld	(ix - 44), de
	ex	de, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	(ix - 53), hl
	ld	l, a
	ld	(ix - 41), hl
	.local	.LBB32_68
.LBB32_68:                              ;   Parent Loop BB32_66 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lea	hl, iy + 0
	ld	de, 15
	or	a, a
	sbc	hl, de
	jp	z, .LBB32_72
; %bb.69:                               ;   in Loop: Header=BB32_68 Depth=2
	ld	hl, (ix - 3)
	ld	(ix - 50), hl
	ld	hl, (_x)
	ld	de, (ix - 44)
	add	hl, de
	ld	bc, 3108411
	call	__imulu
	ex	de, hl
	ld	bc, (_y)
	ld	(ix - 47), iy
	add	iy, bc
	lea	hl, iy + 0
	ld	bc, 2610411
	call	__imulu
	add	hl, de
	ex	de, hl
	ld	hl, (ix - 50)
	or	a, a
	sbc	hl, de
	jr	nz, .LBB32_71
; %bb.70:                               ;   in Loop: Header=BB32_68 Depth=2
	ld	hl, (ix - 35)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	bc, 3
	call	__imulu
	ex	de, hl
	ld	hl, _gameTiles_tiles_data
	add	hl, de
	ld	hl, (hl)
	ld	de, (ix - 41)
	push	de
	ld	de, (ix - 53)
	push	de
	push	hl
	call	_gfx_Sprite_NoClip
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB32_71
.LBB32_71:                              ;   in Loop: Header=BB32_68 Depth=2
	ld	iy, (ix - 47)
	inc	iy
	ld	a, 16
	ld	l, a
	ld	de, (ix - 41)
	ld	a, e
	add	a, l
	ld	e, a
	ld	(ix - 41), de
	xor	a, a
	ld	bc, 20
	jp	.LBB32_68
	.local	.LBB32_72
.LBB32_72:                              ;   in Loop: Header=BB32_66 Depth=1
	ld	de, (ix - 44)
	inc	de
	ld	iy, 0
	jp	.LBB32_66
	.local	.LBB32_73
.LBB32_73:                              ; %.loopexit
	ld	hl, (ix - 32)
	ld	(ix - 29), hl
	push	hl
	ld	iy, 0
	add	iy, sp
	ld	hl, (ix - 38)
	ld	a, (hl)
	ld	(iy), a
	ld	a, (ix - 28)
	ld	(iy + 1), a
	ld	a, (ix - 27)
	ld	(iy + 2), a
	ld	hl, (ix + 6)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE5eraseENS_23unordered_hash_iteratorIKNS_19unordered_hash_nodeIjhEEEE
	pop	hl
	pop	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE5clearEv
	pop	hl
	ld	hl, 96
	push	hl
	ld	hl, 48
	push	hl
	call	_gfx_SetTextXY
	pop	hl
	pop	hl
	ld	hl, (ix + 6)
	ld	hl, (hl)
	ld	de, 3
	push	de
	push	hl
	call	_gfx_PrintUInt
	.local	.LBB32_74
.LBB32_74:
	pop	hl
	pop	hl
	.local	.LBB32_75
.LBB32_75:
	ld	sp, ix
	pop	ix
	ret
	.local	.LBB32_76
.LBB32_76:
	ld	hl, (ix - 47)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 2
	jp	z, .LBB32_84
; %bb.77:
	ld	hl, (ix - 47)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 4
	jr	z, .LBB32_84
; %bb.78:
	ld	hl, (ix - 47)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 6
	jr	z, .LBB32_84
; %bb.79:
	ld	hl, (ix - 47)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 9
	jr	z, .LBB32_84
; %bb.80:
	ld	hl, (ix - 53)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 2
	jr	z, .LBB32_84
; %bb.81:
	ld	hl, (ix - 53)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 4
	jr	z, .LBB32_84
; %bb.82:
	ld	hl, (ix - 53)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 6
	jr	z, .LBB32_84
; %bb.83:
	ld	hl, (ix - 53)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 9
	jp	nz, .LBB32_59
	.local	.LBB32_84
.LBB32_84:
	ld	hl, (ix - 35)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	(hl), 6
	jp	.LBB32_60
	.local	.LBB32_85
.LBB32_85:
	ld	hl, (ix - 35)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	(hl), 4
	jp	.LBB32_60
	.local	.LBB32_86
.LBB32_86:
	ld	hl, (ix - 53)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 5
	jr	z, .LBB32_88
; %bb.87:
	ld	a, 1
	ld	(ix - 55), a                    ; 1-byte Folded Spill
	.local	.LBB32_88
.LBB32_88:
	ld	a, (ix - 55)
	jp	.LBB32_40
	.local	.Lfunc_end32
.Lfunc_end32:
	.size	__Z4tickRN7tinystl13unordered_mapIjhNS_9allocatorEEES3_, .Lfunc_end32-__Z4tickRN7tinystl13unordered_mapIjhNS_9allocatorEEES3_
	.section	.rodata.__Z4tickRN7tinystl13unordered_mapIjhNS_9allocatorEEES3_,"a",@progbits
JTI32_0:
	d24	.LBB32_18
	d24	.LBB32_7
	d24	.LBB32_10
	d24	.LBB32_13
                                        ; -- End function
	.section	.text.__ZN7tinystl13unordered_mapIjhNS_9allocatorEE5eraseENS_23unordered_hash_iteratorIKNS_19unordered_hash_nodeIjhEEEE,"ax",@progbits
	.weak	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE5eraseENS_23unordered_hash_iteratorIKNS_19unordered_hash_nodeIjhEEEE ; -- Begin function _ZN7tinystl13unordered_mapIjhNS_9allocatorEE5eraseENS_23unordered_hash_iteratorIKNS_19unordered_hash_nodeIjhEEEE
	.type	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE5eraseENS_23unordered_hash_iteratorIKNS_19unordered_hash_nodeIjhEEEE,@function
__ZN7tinystl13unordered_mapIjhNS_9allocatorEE5eraseENS_23unordered_hash_iteratorIKNS_19unordered_hash_nodeIjhEEEE: ; @_ZN7tinystl13unordered_mapIjhNS_9allocatorEE5eraseENS_23unordered_hash_iteratorIKNS_19unordered_hash_nodeIjhEEEE
; %bb.0:
	ld	hl, -6
	call	__frameset
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl4hashIjEEjRKT_
	ld	(ix - 3), hl
	pop	hl
	ld	iy, (ix + 6)
	ld	bc, (iy + 3)
	ld	(ix - 6), bc
	ld	hl, (iy + 6)
	or	a, a
	sbc	hl, bc
	ld	bc, 3
	call	__idivs
	ld	de, -2
	add	hl, de
	ld	bc, (ix - 3)
	call	__iand
	ld	iy, (ix + 9)
	ld	de, (iy + 4)
	ld	iy, (ix - 6)
	ld	(ix - 3), de
	push	hl
	pop	de
	inc	de
	ld	bc, 3
	call	__imulu
	push	hl
	pop	bc
	add	iy, bc
	.local	.LBB33_1
.LBB33_1:                               ; =>This Inner Loop Header: Depth=1
	ld	hl, (iy)
	ld	bc, (ix + 9)
	or	a, a
	sbc	hl, bc
	jr	nz, .LBB33_3
; %bb.2:                                ;   in Loop: Header=BB33_1 Depth=1
	ld	hl, (ix - 3)
	ld	(iy), hl
	dec	de
	lea	iy, iy - 3
	sbc	hl, hl
	adc	hl, de
	jr	nz, .LBB33_1
	.local	.LBB33_3
.LBB33_3:
	ld	iy, (ix + 9)
	ld	de, (iy + 7)
	sbc	hl, hl
	adc	hl, de
	jr	z, .LBB33_5
; %bb.4:
	ld	hl, (iy + 4)
	lea	bc, iy + 0
	push	de
	pop	iy
	ld	(iy + 4), hl
	push	bc
	pop	iy
	.local	.LBB33_5
.LBB33_5:
	ld	hl, (ix - 3)
	push	hl
	pop	bc
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	z, .LBB33_7
; %bb.6:
	lea	hl, iy + 0
	push	bc
	pop	iy
	ld	(iy + 7), de
	push	hl
	pop	iy
	.local	.LBB33_7
.LBB33_7:
	push	iy
	call	__ZdlPv
	pop	hl
	ld	iy, (ix + 6)
	ld	hl, (iy)
	dec	hl
	ld	(iy), hl
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end33
.Lfunc_end33:
	.size	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE5eraseENS_23unordered_hash_iteratorIKNS_19unordered_hash_nodeIjhEEEE, .Lfunc_end33-__ZN7tinystl13unordered_mapIjhNS_9allocatorEE5eraseENS_23unordered_hash_iteratorIKNS_19unordered_hash_nodeIjhEEEE
                                        ; -- End function
	.section	.data._gameTiles_tile_0_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_0_data
_gameTiles_tile_0_data:
	.ascii	"\020\020\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001"

	.section	.data._gameTiles_tile_1_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_1_data
_gameTiles_tile_1_data:
	.ascii	"\020\020\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003"

	.section	.data._gameTiles_tile_2_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_2_data
_gameTiles_tile_2_data:
	.ascii	"\020\020\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003"

	.section	.data._gameTiles_tile_3_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_3_data
_gameTiles_tile_3_data:
	.ascii	"\020\020\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003"

	.section	.data._gameTiles_tile_4_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_4_data
_gameTiles_tile_4_data:
	.ascii	"\020\020\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\005\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003"

	.section	.data._gameTiles_tile_5_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_5_data
_gameTiles_tile_5_data:
	.ascii	"\020\020\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\003\003\003\003\003"

	.section	.data._gameTiles_tile_6_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_6_data
_gameTiles_tile_6_data:
	.ascii	"\020\020\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003"

	.section	.data._gameTiles_tile_7_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_7_data
_gameTiles_tile_7_data:
	.ascii	"\020\020\000\000\000\000\000\000\004\004\004\004\000\000\000\000\000\000\000\003\003\003\003\003\003\003\003\003\003\003\003\003\003\000\000\003\003\003\004\004\004\004\004\004\004\004\003\003\003\000\000\003\003\004\004\004\004\004\004\004\004\004\004\003\003\000\000\003\004\004\004\001\004\004\004\001\001\004\004\004\003\000\000\003\004\004\001\004\001\004\004\001\004\001\004\004\003\000\000\003\004\004\001\004\001\004\004\001\001\001\004\004\003\000\000\003\004\004\001\004\001\004\004\001\001\004\004\004\003\000\000\003\004\004\004\001\004\004\004\001\004\001\004\004\003\000\000\003\004\004\004\004\004\004\004\004\004\004\004\004\003\000\000\003\004\004\003\003\003\003\003\003\003\003\004\004\003\000\000\003\004\003\003\003\004\003\003\004\003\003\003\004\003\000\000\003\003\003\003\003\004\003\003\004\003\003\003\003\003\000\004\004\004\004\004\004\004\003\003\004\004\004\004\004\004\004\000\003\003\003\003\003\003\003\003\003\003\003\003\003\003"
	.zero	17

	.section	.data._gameTiles_tile_8_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_8_data
_gameTiles_tile_8_data:
	.ascii	"\020\020\000\000\000\000\000\000\004\004\004\004\000\000\000\000\000\000\000\003\003\003\003\003\003\003\003\003\003\003\003\003\003\000\000\003\003\003\004\004\004\004\004\004\004\004\003\003\003\000\000\003\003\004\004\004\004\004\004\004\004\004\004\003\003\000\000\003\004\001\004\004\001\004\004\001\004\001\001\004\003\000\000\003\001\004\001\004\001\001\004\001\004\001\004\001\003\000\000\003\001\001\001\004\001\004\001\001\004\001\004\001\003\000\000\003\001\004\001\004\001\004\004\001\004\001\004\001\003\000\000\003\001\004\001\004\001\004\004\001\004\001\001\004\003\000\000\003\004\004\004\004\004\004\004\004\004\004\004\004\003\000\000\003\003\003\003\003\003\003\003\003\003\003\003\003\003\000\000\003\003\003\003\003\004\003\003\004\003\003\003\003\003\000\000\003\003\003\003\003\004\003\003\004\003\003\003\003\003\000\004\004\004\004\004\004\004\003\003\004\004\004\004\004\004\004\000\003\003\003\003\003\003\003\003\003\003\003\003\003\003"
	.zero	17

	.section	.data._gameTiles_tile_9_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_9_data
_gameTiles_tile_9_data:
	.ascii	"\020\020\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003\003\005\005\005\005\005\005\005\005\005\005\005\005\005\005\003\003\005\005\005\005\005\005\005\005\005\005\005\005\005\005\003\003\005\005\004\004\004\004\004\004\004\004\004\004\005\005\003\003\005\005\004\004\004\004\004\004\004\004\004\004\005\005\003\005\005\005\004\004\005\005\005\005\005\005\004\004\005\005\005\005\005\005\004\004\005\005\005\005\005\005\004\004\005\005\005\005\005\005\004\004\005\005\005\005\005\005\004\004\005\005\005\005\005\005\004\004\005\005\005\005\005\005\004\004\005\005\005\005\005\005\004\004\005\005\005\005\005\005\004\004\005\005\005\005\005\005\004\004\005\005\005\005\005\005\004\004\005\005\005\003\005\005\004\004\004\004\004\004\004\004\004\004\005\005\003\003\005\005\004\004\004\004\004\004\004\004\004\004\005\005\003\003\005\005\005\005\005\005\005\005\005\005\005\005\005\005\003\003\005\005\005\005\005\005\005\005\005\005\005\005\005\005\003\003\003\003\003\003\005\005\005\005\005\005\003\003\003\003\003"

	.section	.data._gameTiles_tile_10_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_10_data
_gameTiles_tile_10_data:
	.asciz	"\020\020\000\000\000\000\000\004\004\004\004\004\004\000\000\000\000\000\000\003\003\003\003\004\004\004\004\004\004\003\003\003\003\000\000\003\003\003\003\004\004\004\004\004\004\003\003\003\003\000\000\003\003\003\003\003\004\004\004\004\004\004\003\003\003\000\000\003\003\003\003\003\003\004\004\004\004\004\004\003\003\000\004\004\004\004\004\004\004\000\004\004\004\004\004\000\004\004\004\004\004\004\004\004\004\000\004\004\004\004\004\000\004\004\004\004\004\004\004\004\004\000\004\004\004\004\004\000\004\004\004\004\004\004\004\004\004\000\004\004\004\004\004\000\004\004\004\004\004\004\004\004\004\000\004\004\004\004\004\000\004\004\004\004\004\004\004\004\004\000\004\004\004\004\004\000\004\004\000\003\003\003\003\003\003\004\004\004\004\004\004\003\003\000\000\003\003\003\003\003\004\004\004\004\004\004\003\003\003\000\000\003\003\003\003\004\004\004\004\004\004\003\003\003\003\000\000\003\003\003\003\004\004\004\004\004\004\003\003\003\003\000\000\000\000\000\000\004\004\004\004\004\004\000\000\000\000"

	.section	.data._gameTiles_tile_11_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_11_data
_gameTiles_tile_11_data:
	.asciz	"\020\020\000\000\000\000\000\004\004\004\004\004\004\000\000\000\000\000\000\003\003\003\003\004\004\004\004\004\004\003\003\003\003\000\000\003\003\003\003\004\004\004\004\004\004\003\003\003\003\000\000\003\003\003\003\003\004\004\004\004\004\004\003\003\003\000\000\003\003\003\003\003\003\004\004\004\004\004\004\003\003\000\005\005\005\005\005\005\005\000\004\004\004\004\004\000\005\005\005\005\005\005\005\005\005\000\004\004\004\004\004\000\005\005\005\005\005\005\005\005\005\000\004\004\004\004\004\000\005\005\005\005\005\005\005\005\005\000\004\004\004\004\004\000\005\005\005\005\005\005\005\005\005\000\004\004\004\004\004\000\005\005\005\005\005\005\005\005\005\000\004\004\004\004\004\000\005\005\000\003\003\003\003\003\003\004\004\004\004\004\004\003\003\000\000\003\003\003\003\003\004\004\004\004\004\004\003\003\003\000\000\003\003\003\003\004\004\004\004\004\004\003\003\003\003\000\000\003\003\003\003\004\004\004\004\004\004\003\003\003\003\000\000\000\000\000\000\004\004\004\004\004\004\000\000\000\000"

	.section	.data._gameTiles_tile_12_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_12_data
_gameTiles_tile_12_data:
	.asciz	"\020\020\000\000\000\000\000\005\005\005\005\005\005\000\000\000\000\000\000\003\003\003\003\005\005\005\005\005\005\003\003\003\003\000\000\003\003\003\003\005\005\005\005\005\005\003\003\003\003\000\000\003\003\003\003\003\005\005\005\005\005\005\003\003\003\000\000\003\003\003\003\003\003\005\005\005\005\005\005\003\003\000\004\004\004\004\004\004\004\000\005\005\005\005\005\000\004\004\004\004\004\004\004\004\004\000\005\005\005\005\005\000\004\004\004\004\004\004\004\004\004\000\005\005\005\005\005\000\004\004\004\004\004\004\004\004\004\000\005\005\005\005\005\000\004\004\004\004\004\004\004\004\004\000\005\005\005\005\005\000\004\004\004\004\004\004\004\004\004\000\005\005\005\005\005\000\004\004\000\003\003\003\003\003\003\005\005\005\005\005\005\003\003\000\000\003\003\003\003\003\005\005\005\005\005\005\003\003\003\000\000\003\003\003\003\005\005\005\005\005\005\003\003\003\003\000\000\003\003\003\003\005\005\005\005\005\005\003\003\003\003\000\000\000\000\000\000\005\005\005\005\005\005\000\000\000\000"

	.section	.data._gameTiles_tile_13_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_13_data
_gameTiles_tile_13_data:
	.asciz	"\020\020\000\000\000\000\000\005\005\005\005\005\005\000\000\000\000\000\000\003\003\003\003\005\005\005\005\005\005\003\003\003\003\000\000\003\003\003\003\005\005\005\005\005\005\003\003\003\003\000\000\003\003\003\003\003\005\005\005\005\005\005\003\003\003\000\000\003\003\003\003\003\003\005\005\005\005\005\005\003\003\000\005\005\005\005\005\005\005\000\005\005\005\005\005\000\005\005\005\005\005\005\005\005\005\000\005\005\005\005\005\000\005\005\005\005\005\005\005\005\005\000\005\005\005\005\005\000\005\005\005\005\005\005\005\005\005\000\005\005\005\005\005\000\005\005\005\005\005\005\005\005\005\000\005\005\005\005\005\000\005\005\005\005\005\005\005\005\005\000\005\005\005\005\005\000\005\005\000\003\003\003\003\003\003\005\005\005\005\005\005\003\003\000\000\003\003\003\003\003\005\005\005\005\005\005\003\003\003\000\000\003\003\003\003\005\005\005\005\005\005\003\003\003\003\000\000\003\003\003\003\005\005\005\005\005\005\003\003\003\003\000\000\000\000\000\000\005\005\005\005\005\005\000\000\000\000"

	.section	.data._gameTiles_tile_14_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_14_data
_gameTiles_tile_14_data:
	.ascii	"\020\020\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\004\000\000\004\004\000\000\000\000\000\000\000\000\004\004\004\004\000\000\004\004\004\004\000\000\000\000\000\004\004\004\004\004\000\000\004\004\004\004\004\000\000\000\000\004\004\004\004\004\000\000\004\004\004\004\004\000\000\000\004\004\004\004\000\000\000\000\000\000\004\004\004\004\000\000\004\004\004\004\000\000\000\000\000\000\004\004\004\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\004\004\004\000\000\000\000\000\000\004\004\004\004\000\000\004\004\004\004\000\000\000\000\000\000\004\004\004\004\000\000\000\004\004\004\004\004\000\000\004\004\004\004\004\000\000\000\000\004\004\004\004\004\000\000\004\004\004\004\004\000\000\000\000\000\004\004\004\004\000\000\004\004\004\004\000\000\000\000\000\000\000\000\004\004\000\000\004\004"
	.zero	21

	.section	.data._gameTiles_tile_15_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_15_data
_gameTiles_tile_15_data:
	.ascii	"\020\020\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\000\000\005\005\000\000\005\005\000\000\000\003\000\000\000\000\005\005\005\005\000\000\005\005\005\005\000\000\000\000\000\005\005\005\005\005\000\000\005\005\005\005\005\000\000\000\000\005\005\005\005\005\000\000\005\005\005\005\005\000\000\000\005\005\005\005\000\000\000\000\000\000\005\005\005\005\000\000\005\005\005\005\000\003\003\003\003\000\005\005\005\005\000\000\000\000\000\000\000\003\003\003\003\000\000\000\000\000\000\000\000\000\000\000\000\003\003\003\003\000\000\000\000\000\000\000\005\005\005\005\000\003\003\003\003\000\005\005\005\005\000\000\005\005\005\005\000\000\000\000\000\000\005\005\005\005\000\000\000\005\005\005\005\005\000\000\005\005\005\005\005\000\000\000\000\005\005\005\005\005\000\000\005\005\005\005\005\000\000\000\000\000\005\005\005\005\000\000\005\005\005\005\000\000\000\000\003\000\000\000\005\005\000\000\005\005\000\000\000\003"
	.zero	17

	.section	.data._gameTiles_tile_16_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_16_data
_gameTiles_tile_16_data:
	.ascii	"\020\020\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\001\001\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\001\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\001\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\001\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\001\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\001\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\001\003\003\001\001\001\003\003\003\003\003\003\003\003\003\001\001\001\001\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003"

	.section	.data._gameTiles_tile_17_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_17_data
_gameTiles_tile_17_data:
	.ascii	"\020\020\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\001\001\001\001\003\003\003\003\001\001\001\001\001\001\001\001\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\001\001\001\001\001\003\003\003\003\003\003\003\001\003\001\001\003\003\003\003\003\003\003\001\001\001\001\001\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003"

	.section	.data._gameTiles_tile_18_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_18_data
_gameTiles_tile_18_data:
	.ascii	"\020\020\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\001\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003"

	.section	.data._gameTiles_tile_19_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_19_data
_gameTiles_tile_19_data:
	.ascii	"\020\020\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\001\001\001\001\001\001\001\001\001\001\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003"

	.section	.data._gameTiles_tile_20_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_20_data
_gameTiles_tile_20_data:
	.ascii	"\020\020\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\001\001\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\001\001\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\001\001\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\001\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\001\003\003\003\003\003\001\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\001\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\001\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\001\003\003\001\001\001\003\003\003\003"

	.section	.data._gameTiles_tile_21_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_21_data
_gameTiles_tile_21_data:
	.ascii	"\020\020\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\001\003\003\003\003\003\003\003\001\003\001\003\003\003\003\003\001\003\003\003\003\003\003\003\001\003\001\003\003\003\003\003\001\003\003\003\003\003\003\003\001\001\003\001\003\003\003\003\003\001\003\003\003\003\003\003\001\001\003\001\003\003\003\003\003\001\003\003\003\003\003\003\001\001\003\001\003\003\003\003\003\001\003\003\003\003\003\003\001\001\003\003\001\003\003\003\003\001\003\003\003\003\003\003\001\001\003\003\003\001\003\003\003\001\003\003\003\003\003\003\001\003\001\003\003\001\003\003\003\001\003\003\003\003\003\003\001\003\001\003\003\003\001\003\003\001\003\003\003\003\003\003\003\001\001\003\003\003\003\001\003\001\003\003\003\003\003\003\003\001\001\003\003\003\003\003\001\001\003\003"

	.section	.data._gameTiles_tile_22_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_22_data
_gameTiles_tile_22_data:
	.ascii	"\020\020\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\001\001\001\001\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\001\001\001\003\003\003\003\003\003\003\003"

	.section	.data._gameTiles_tile_23_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_23_data
_gameTiles_tile_23_data:
	.ascii	"\020\020\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\001\003\003\003\003\001\003\003\003\003\003\003\001\003\003\001\001\001\001\003\003\001\003\003\003\003\003\003\001\003\003\003\001\001\003\003\003\001\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\001\003\003\003\001\001\003\003\003\001\001\001\001\003\003\003\001\003\003\003\001\001\001\003\003\001\001\001\001\001\003\003\001\003\003\003\001\001\001\003\003\001\001\001\003\001\003\003\001\003\003\003\001\001\003\003\003\003\003\001\001\001\003\003\001\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\001\001\001\001\001\001\001\001\001\001\003\003\003"

	.section	.data._gameTiles_tile_24_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_24_data
_gameTiles_tile_24_data:
	.ascii	"\020\020\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\001\003\003\003\003\003\003\003\003\003\001\001\001\003\003\003\001\003\003\003\003\003\003\003\003\003\003\001\003\001\001\001\001\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\001\001\001\001\001\001\001\003\003\003\003\003\003\003\003\003"

	.section	.data._gameTiles_tile_25_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_25_data
_gameTiles_tile_25_data:
	.ascii	"\020\020\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\001\001\001\001\001\001\001\001\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\001\001\001\001\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\001\001\001\001\001\003\003\003\003\003\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001"

	.section	.data._gameTiles_tile_26_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_26_data
_gameTiles_tile_26_data:
	.ascii	"\020\020\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\001\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\001\003\003\003\003\003\003\003\003\003\003\001\001\001\001\001\001\001\003\003\003\003\003\003\003\003\001\001\003\003\003\003\001\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\001\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\001\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\001\003\003\003\003\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001"

	.section	.data._gameTiles_tile_27_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_27_data
_gameTiles_tile_27_data:
	.ascii	"\020\020\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\001\001\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\001\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\001\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\001\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\001\003\001\003\003\003\003\003\003\003\003\001\001\003\003\001\001\003\001\003\003\003\003\003\003\003\001\001\001\003\001\003\003\001\003\003\003\003\003\003\003\003\001\001\001\001\003\003\003\001\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\001\001\001\003\003\003\003\001\001\003\003\003\001\001\001\001\003\003\001\001\001\001\001\001\001\001\001\001"

	.section	.data._gameTiles_tile_28_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_28_data
_gameTiles_tile_28_data:
	.ascii	"\020\020\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\006\007\007\007\007\007\007\007\007\006\006\006\006\007\007\007\007\006\007\007\007\007\006\006\006\006\007\007\006\006\007\007\007\007\006\006\006\006\006\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\006\006\006\006\006\006\006\007\007\007\007\007\006\006\007\006\006\007\007\007\007\007\007\006\006\006\006\006\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\006\006\006\006\007\007\007\007\006\006\007\007\007\006\006\006\006\007\007\006\006\007\007\007\007\006\006\006\006\006\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007"

	.section	.data._gameTiles_tile_29_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_29_data
_gameTiles_tile_29_data:
	.ascii	"\020\020\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\001\001\003\003\001\003\003\003\003\003\001\001\001\003\003\003\003\003\001\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\001\001\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003"

	.section	.data._gameTiles_tile_30_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_30_data
_gameTiles_tile_30_data:
	.ascii	"\020\020\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\001\001\003\003\003\001\001\003\001\001\001\001\001\001\003\003\003\003\003\003\001\001\003\001\003\003\001\003\003\003\003\003\003\003\003\003\001\003\003\001\003\003\001\003\003\003\003\003\003\003\003\003\001\003\003\001\003\003\003\001\003\003\003\003\003\003\003\001\001\003\001\003\003\003\003\001\003\003\003\003\003\003\003\001\001\001\001\003\003\003\003\001\003\003\003\003\003\003\003\001\001\003\001\003\003\003\003\003\001\003\003\003\003\003\003\001\001\003\003\001\003\003\003\001\001\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003"

	.section	.data._gameTiles_tile_31_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tile_31_data
_gameTiles_tile_31_data:
	.ascii	"\020\020\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\001\001\003\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\003\001\003\001\001\003\003\003\003\003\003\003\003\001\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\001\001\001\001\001\001\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\001\003\003\003\003\003\003\003\003\003\003\001\003\003\003\003\001\003\003\003\003\001\003\003\003\003\003\001\003\003\003\003\003\001\003\003\003\003\001\001\003\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\001\003\003\001\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003"

	.section	.rodata._.str,"a",@progbits
	.balign	1
	.local	_.str
_.str:
	.asciz	"Loading"

	.section	.bss._seed,"aw",@nobits
	.balign	1
	.globl	_seed
_seed:
	.zero	3

	.section	.data._game8,"aw",@progbits
	.balign	1
	.globl	_game8
_game8:
	.ascii	"\000\000\377\377\t|Pw\000<\000`V\222\333\222"

	.section	.rodata._.str.11,"a",@progbits
	.balign	1
	.local	_.str.11
_.str.11:
	.asciz	"x:"

	.section	.rodata._.str.1,"a",@progbits
	.balign	1
	.local	_.str.1
_.str.1:
	.asciz	"y:"

	.section	.data._cursor_data,"aw",@progbits
	.balign	1
	.globl	_cursor_data
_cursor_data:
	.ascii	"\020\020\002\002\002\002\002\377\377\002\002\377\377\002\002\002\002\002\002\002\002\002\002\377\377\002\002\377\377\002\002\002\002\002\002\002\377\377\377\377\377\377\377\377\377\377\377\377\002\002\002\002\377\377\377\377\377\377\377\377\377\377\377\377\002\002\002\002\377\377\377\377\377\377\377\377\377\377\377\377\002\002\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\002\002\377\377\377\377\377\377\377\377\377\377\377\377\002\002\002\002\377\377\377\377\377\377\377\377\377\377\377\377\002\002\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\377\002\002\377\377\377\377\377\377\377\377\377\377\377\377\002\002\002\002\377\377\377\377\377\377\377\377\377\377\377\377\002\002\002\002\377\377\377\377\377\377\377\377\377\377\377\377\002\002\002\002\002\002\002\377\377\002\002\377\377\002\002\002\002\002\002\002\002\002\002\377\377\002\002\377\377\002\002\002\002\002"

	.section	.rodata.___const._Z19tile_selection_menuRhN7tinystl13unordered_mapIjhNS0_9allocatorEEEjj.possible_tile_selections,"a",@progbits
	.balign	1
	.local	___const._Z19tile_selection_menuRhN7tinystl13unordered_mapIjhNS0_9allocatorEEEjj.possible_tile_selections
___const._Z19tile_selection_menuRhN7tinystl13unordered_mapIjhNS0_9allocatorEEEjj.possible_tile_selections:
	.ascii	"\000\001\007\b\t\n\016"

	.section	.bss._perm,"aw",@nobits
	.balign	1
	.globl	_perm
_perm:
	.zero	512

	.section	.bss._preloaded_x,"aw",@nobits
	.balign	1
	.globl	_preloaded_x
_preloaded_x:
	.zero	3

	.section	.bss._preloaded_y,"aw",@nobits
	.balign	1
	.globl	_preloaded_y
_preloaded_y:
	.zero	3

	.section	.rodata._.str.20,"a",@progbits
	.balign	1
	.local	_.str.20
_.str.20:
	.asciz	"Saving"

	.section	.rodata._.str.1.21,"a",@progbits
	.balign	1
	.local	_.str.1.21
_.str.1.21:
	.asciz	"Techsav"

	.section	.rodata._.str.2,"a",@progbits
	.balign	1
	.local	_.str.2
_.str.2:
	.asciz	"w+"

	.section	.rodata._.str.3,"a",@progbits
	.balign	1
	.local	_.str.3
_.str.3:
	.asciz	"r+"

	.section	.bss._to_update_tiles,"aw",@nobits
	.balign	1
	.globl	_to_update_tiles
_to_update_tiles:
	.zero	2048

	.section	.bss._tile_count,"aw",@nobits
	.balign	1
	.globl	_tile_count
_tile_count:
	.zero	1

	.section	.bss._tick_tile_count,"aw",@nobits
	.balign	1
	.globl	_tick_tile_count
_tick_tile_count:
	.zero	1

	.section	.rodata.__ZZ15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEEE15tiles_no_update,"a",@progbits
	.balign	1
	.local	__ZZ15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEEE15tiles_no_update
__ZZ15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEEE15tiles_no_update:
	.zero	1

	.section	.rodata.__ZZ15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEEE15dead_wire_tiles,"a",@progbits
	.balign	1
	.local	__ZZ15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEEE15dead_wire_tiles
__ZZ15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEEE15dead_wire_tiles:
	.ascii	"\001\003\005"

	.section	.rodata.__ZZ15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEEE15live_wire_tiles,"a",@progbits
	.balign	1
	.local	__ZZ15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEEE15live_wire_tiles
__ZZ15concurrent_tickRN7tinystl13unordered_mapIjhNS_9allocatorEEEE15live_wire_tiles:
	.ascii	"\002\004\006"

	.section	.bss._tilemap_buffer,"aw",@nobits
	.balign	1
	.globl	_tilemap_buffer
_tilemap_buffer:
	.zero	16384

	.section	.data._gameTiles_tiles_data,"aw",@progbits
	.balign	1
	.globl	_gameTiles_tiles_data
_gameTiles_tiles_data:
	d24	_gameTiles_tile_0_data
	d24	_gameTiles_tile_1_data
	d24	_gameTiles_tile_2_data
	d24	_gameTiles_tile_3_data
	d24	_gameTiles_tile_4_data
	d24	_gameTiles_tile_5_data
	d24	_gameTiles_tile_6_data
	d24	_gameTiles_tile_7_data
	d24	_gameTiles_tile_8_data
	d24	_gameTiles_tile_9_data
	d24	_gameTiles_tile_10_data
	d24	_gameTiles_tile_11_data
	d24	_gameTiles_tile_12_data
	d24	_gameTiles_tile_13_data
	d24	_gameTiles_tile_14_data
	d24	_gameTiles_tile_15_data
	d24	_gameTiles_tile_16_data
	d24	_gameTiles_tile_17_data
	d24	_gameTiles_tile_18_data
	d24	_gameTiles_tile_19_data
	d24	_gameTiles_tile_20_data
	d24	_gameTiles_tile_21_data
	d24	_gameTiles_tile_22_data
	d24	_gameTiles_tile_23_data
	d24	_gameTiles_tile_24_data
	d24	_gameTiles_tile_25_data
	d24	_gameTiles_tile_26_data
	d24	_gameTiles_tile_27_data
	d24	_gameTiles_tile_28_data
	d24	_gameTiles_tile_29_data
	d24	_gameTiles_tile_30_data
	d24	_gameTiles_tile_31_data

	.section	.bss._x,"aw",@nobits
	.balign	1
	.globl	_x
_x:
	.zero	3

	.section	.bss._y,"aw",@nobits
	.balign	1
	.globl	_y
_y:
	.zero	3

	.ident	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)"
	.ident	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)"
	.ident	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)"
	.ident	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)"
	.ident	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)"
	.ident	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)"
	.ident	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)"
	.ident	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)"
	.ident	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)"
	.ident	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)"
	.ident	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)"
	.section	".note.GNU-stack","",@progbits
	.extern	_llvm.eh.sjlj.functioncontext
	.extern	__iremu
	.extern	_llvm.lifetime.end.p0
	.extern	_gfx_SetPalette
	.extern	__ishru
	.extern	__Unwind_SjLj_Unregister
	.extern	__idivs
	.extern	_boot_GetDate
	.extern	_gfx_FillRectangle_NoClip
	.extern	_boot_GetTime
	.extern	_gfx_PrintStringXY
	.extern	_llvm.memset.p0.i64
	.extern	__ineg
	.extern	_llvm.umin.i8
	.extern	__ior
	.extern	_gfx_SetColor
	.extern	_llvm.memset.p0.i24
	.extern	_llvm.memcpy.p0.p0.i24
	.extern	_gfx_End
	.extern	_llvm.eh.sjlj.setup.dispatch
	.extern	_ti_Read
	.extern	_malloc
	.extern	_llvm.frameaddress.p0
	.extern	__sand
	.extern	_gfx_SetTextXY
	.extern	_llvm.stackrestore.p0
	.extern	_ti_Open
	.extern	_srandom
	.extern	_kb_AnyKey
	.extern	__ZdlPv
	.extern	_gfx_SetTextFGColor
	.extern	_gfx_GetSprite
	.extern	__Znwj
	.extern	_gfx_Begin
	.extern	_gfx_AllocSprite
	.extern	__bdivu
	.extern	_gfx_SetTransparentColor
	.extern	__lladd
	.extern	_msleep
	.extern	_gfx_SetTextBGColor
	.extern	_gfx_SwapDraw
	.extern	_llvm.eh.sjlj.lsda
	.extern	__sshru
	.extern	_free
	.extern	_gfx_Sprite_NoClip
	.extern	__frameset
	.extern	__llshl
	.extern	__iand
	.extern	_random
	.extern	__imulu
	.extern	_ti_Rewind
	.extern	_gfx_TransparentSprite_NoClip
	.extern	_llvm.eh.sjlj.callsite
	.extern	_gfx_Sprite
	.extern	_ti_Write
	.extern	_llvm.stacksave.p0
	.extern	_ti_Close
	.extern	_llvm.lifetime.start.p0
	.extern	_gfx_ZeroScreen
	.extern	_gfx_SetClipRegion
	.extern	__frameset0
	.extern	_gfx_PrintUInt
	.extern	__Unwind_SjLj_Register
	.extern	_gfx_SetMonospaceFont
	.extern	__bshl
	.extern	__ishrs
	.extern	_gfx_SetDraw
	.extern	__ixor
	.extern	__ishl
	.extern	_gfx_CopyRectangle
