	.section	.text,"ax",@progbits
	.assume	ADL = 1
	.file	"llvm-link"
	.section	.text.__Z3popPhh,"ax",@progbits
	.globl	__Z3popPhh                      ; -- Begin function _Z3popPhh
	.type	__Z3popPhh,@function
__Z3popPhh:                             ; @_Z3popPhh
; %bb.0:
	ld	hl, -6
	call	__frameset
	ld	hl, (ix + 6)
	ld	a, (ix + 9)
	ld	de, 0
	ld	e, a
	inc	hl
	ld	(ix - 3), hl
	ld	(ix - 6), de
	.local	.LBB0_1
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	sbc	hl, hl
	adc	hl, de
	jr	z, .LBB0_6
; %bb.2:                                ;   in Loop: Header=BB0_1 Depth=1
	push	de
	pop	hl
	ld	bc, 1
	or	a, a
	sbc	hl, bc
	jr	nz, .LBB0_4
; %bb.3:                                ;   in Loop: Header=BB0_1 Depth=1
	ld	iy, (ix + 6)
	ld	bc, (ix - 6)
	add	iy, bc
	ld	(iy - 1), 0
	ld	iy, (ix - 3)
	jr	.LBB0_5
	.local	.LBB0_4
.LBB0_4:                                ;   in Loop: Header=BB0_1 Depth=1
	ld	iy, (ix - 3)
	ld	a, (iy)
	ld	(iy - 1), a
	.local	.LBB0_5
.LBB0_5:                                ;   in Loop: Header=BB0_1 Depth=1
	inc	iy
	ld	(ix - 3), iy
	dec	de
	jr	.LBB0_1
	.local	.LBB0_6
.LBB0_6:
	ld	hl, (ix + 6)
	ld	a, (hl)
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end0
.Lfunc_end0:
	.size	__Z3popPhh, .Lfunc_end0-__Z3popPhh
                                        ; -- End function
	.section	.text.__Z4pushPhhh,"ax",@progbits
	.globl	__Z4pushPhhh                    ; -- Begin function _Z4pushPhhh
	.type	__Z4pushPhhh,@function
__Z4pushPhhh:                           ; @_Z4pushPhhh
; %bb.0:
	call	__frameset0
	ld	iy, (ix + 6)
	ld	c, (ix + 9)
	ld	b, 0
	ld	de, 0
	ld	e, c
	.local	.LBB1_1
.LBB1_1:                                ; =>This Inner Loop Header: Depth=1
	sbc	hl, hl
	adc	hl, de
	jr	z, .LBB1_4
; %bb.2:                                ;   in Loop: Header=BB1_1 Depth=1
	ld	a, (iy)
	or	a, a
	jr	z, .LBB1_5
; %bb.3:                                ;   in Loop: Header=BB1_1 Depth=1
	inc	iy
	inc	b
	dec	de
	jr	.LBB1_1
	.local	.LBB1_4
.LBB1_4:
	dec	c
	ld	b, c
	jr	.LBB1_6
	.local	.LBB1_5
.LBB1_5:
	ld	a, (ix + 12)
	ld	(iy), a
	.local	.LBB1_6
.LBB1_6:
	ld	a, b
	pop	ix
	ret
	.local	.Lfunc_end1
.Lfunc_end1:
	.size	__Z4pushPhhh, .Lfunc_end1-__Z4pushPhhh
                                        ; -- End function
	.section	.text.__Z12render_leveljN7tinystl13unordered_mapIjhNS_9allocatorEEEjjbbbhhh,"ax",@progbits
	.globl	__Z12render_leveljN7tinystl13unordered_mapIjhNS_9allocatorEEEjjbbbhhh ; -- Begin function _Z12render_leveljN7tinystl13unordered_mapIjhNS_9allocatorEEEjjbbbhhh
	.type	__Z12render_leveljN7tinystl13unordered_mapIjhNS_9allocatorEEEjjbbbhhh,@function
__Z12render_leveljN7tinystl13unordered_mapIjhNS_9allocatorEEEjjbbbhhh: ; @_Z12render_leveljN7tinystl13unordered_mapIjhNS_9allocatorEEEjjbbbhhh
; %bb.0:
	ld	hl, -107
	call	__frameset
	ld	hl, 1
	ld	iy, 0
	bit	0, (ix + 18)
	jp	z, .LBB2_7
; %bb.1:
	lea	de, ix - 12
	ld	(ix - 83), de
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
	ld	iy, 0
	.local	.LBB2_2
.LBB2_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_4 Depth 2
	lea	hl, iy + 0
	ld	bc, 15
	or	a, a
	sbc	hl, bc
	jp	z, .LBB2_46
; %bb.3:                                ;   in Loop: Header=BB2_2 Depth=1
	lea	hl, iy + 0
	ld	bc, (ix + 12)
	add	hl, bc
	ld	(ix - 92), hl
	lea	hl, iy + 0
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	(ix - 95), hl
	xor	a, a
	ld	l, a
	ld	(ix - 86), hl
	ld	bc, 0
	.local	.LBB2_4
.LBB2_4:                                ;   Parent Loop BB2_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	push	bc
	pop	de
	push	bc
	pop	hl
	ld	bc, 15
	or	a, a
	sbc	hl, bc
	jr	z, .LBB2_6
; %bb.5:                                ;   in Loop: Header=BB2_4 Depth=2
	ld	hl, (ix + 15)
	ld	(ix - 98), de
	add	hl, de
	ld	(ix - 101), hl
	ld	hl, (ix + 9)
	push	hl
	ld	hl, (ix - 83)
	push	hl
	ld	(ix - 89), iy
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_
	pop	hl
	pop	hl
	ld	hl, (ix - 83)
	push	hl
	ld	hl, (ix - 101)
	push	hl
	ld	hl, (ix - 92)
	push	hl
	push	hl
	call	__Z11hashTerrainjjjN7tinystl13unordered_mapIjhNS_9allocatorEEE
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	bc, 3
	call	__imulu
	ex	de, hl
	ld	hl, _gameTiles_tiles_data
	add	hl, de
	ld	hl, (hl)
	ld	de, (ix - 86)
	push	de
	ld	de, (ix - 95)
	push	de
	push	hl
	call	_gfx_Sprite_NoClip
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 83)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEED2Ev
	ld	bc, (ix - 98)
	ld	iy, (ix - 89)
	pop	hl
	inc	bc
	ld	l, 16
	ld	de, (ix - 86)
	ld	a, e
	add	a, l
	ld	e, a
	ld	(ix - 86), de
	jr	.LBB2_4
	.local	.LBB2_6
.LBB2_6:                                ;   in Loop: Header=BB2_2 Depth=1
	inc	iy
	jp	.LBB2_2
	.local	.LBB2_7
.LBB2_7:
	ld	a, (ix + 24)
	ld	b, (ix + 33)
	bit	0, (ix + 21)
	jp	z, .LBB2_12
; %bb.8:
	ld	c, (ix + 30)
	or	a, a
	sbc	hl, hl
	ex	de, hl
	ld	e, c
	bit	0, a
	ld	(ix - 86), c
	ld	(ix - 85), b
	ld	(ix - 89), de
	lea	hl, ix - 32
	jp	z, .LBB2_16
; %bb.9:
	ld	(ix - 95), hl
	lea	hl, ix - 44
	ld	(ix - 92), hl
	ld	hl, (ix + 15)
	or	a, a
	sbc	hl, de
	ld	(ix - 98), hl
	ld	(ix - 83), iy
	.local	.LBB2_10
.LBB2_10:                               ; =>This Inner Loop Header: Depth=1
	ld	hl, (ix - 83)
	ld	de, 20
	or	a, a
	sbc	hl, de
	jp	z, .LBB2_19
; %bb.11:                               ;   in Loop: Header=BB2_10 Depth=1
	ld	hl, (ix + 12)
	ld	de, (ix - 83)
	add	hl, de
	ld	(ix - 101), hl
	ld	hl, (ix + 9)
	push	hl
	ld	hl, (ix - 92)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_
	pop	hl
	pop	hl
	ld	hl, (ix - 92)
	push	hl
	ld	hl, (ix - 98)
	push	hl
	ld	hl, (ix - 101)
	push	hl
	push	hl
	call	__Z11hashTerrainjjjN7tinystl13unordered_mapIjhNS_9allocatorEEE
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 95)
	ld	de, (ix - 83)
	add	hl, de
	ld	(hl), a
	ld	hl, (ix - 92)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEED2Ev
	ld	c, (ix - 86)
	ld	b, (ix - 85)
	ld	iy, 0
	pop	hl
	ld	hl, (ix - 83)
	inc	hl
	ld	(ix - 83), hl
	jr	.LBB2_10
	.local	.LBB2_12
.LBB2_12:
	ld	de, 0
	ld	e, (ix + 27)
	bit	0, a
	ld	(ix - 86), de
	jp	z, .LBB2_25
; %bb.13:
	lea	hl, ix - 32
	ld	(ix - 92), hl
	lea	hl, ix - 68
	ld	(ix - 89), hl
	ld	hl, (ix + 12)
	or	a, a
	sbc	hl, de
	ld	(ix - 95), hl
	ld	(ix - 83), iy
	.local	.LBB2_14
.LBB2_14:                               ; =>This Inner Loop Header: Depth=1
	ld	hl, (ix - 83)
	ld	de, 14
	or	a, a
	sbc	hl, de
	jp	z, .LBB2_28
; %bb.15:                               ;   in Loop: Header=BB2_14 Depth=1
	ld	hl, (ix + 15)
	ld	de, (ix - 83)
	add	hl, de
	ld	(ix - 98), hl
	ld	hl, (ix + 9)
	push	hl
	ld	hl, (ix - 89)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_
	pop	hl
	pop	hl
	ld	hl, (ix - 89)
	push	hl
	ld	hl, (ix - 98)
	push	hl
	ld	hl, (ix - 95)
	push	hl
	push	hl
	call	__Z11hashTerrainjjjN7tinystl13unordered_mapIjhNS_9allocatorEEE
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 92)
	ld	de, (ix - 83)
	add	hl, de
	ld	(hl), a
	ld	hl, (ix - 89)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEED2Ev
	ld	b, (ix + 33)
	ld	iy, 0
	pop	hl
	ld	hl, (ix - 83)
	inc	hl
	ld	(ix - 83), hl
	jr	.LBB2_14
	.local	.LBB2_16
.LBB2_16:
	ld	(ix - 95), hl
	lea	hl, ix - 56
	ld	(ix - 92), hl
	ld	hl, (ix + 15)
	add	hl, de
	ld	de, 15
	add	hl, de
	ld	(ix - 98), hl
	ld	(ix - 83), iy
	.local	.LBB2_17
.LBB2_17:                               ; =>This Inner Loop Header: Depth=1
	ld	hl, (ix - 83)
	ld	de, 20
	or	a, a
	sbc	hl, de
	jp	z, .LBB2_34
; %bb.18:                               ;   in Loop: Header=BB2_17 Depth=1
	ld	hl, (ix + 12)
	ld	de, (ix - 83)
	add	hl, de
	ld	(ix - 101), hl
	ld	hl, (ix + 9)
	push	hl
	ld	hl, (ix - 92)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_
	pop	hl
	pop	hl
	ld	hl, (ix - 92)
	push	hl
	ld	hl, (ix - 98)
	push	hl
	ld	hl, (ix - 101)
	push	hl
	push	hl
	call	__Z11hashTerrainjjjN7tinystl13unordered_mapIjhNS_9allocatorEEE
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 95)
	ld	de, (ix - 83)
	add	hl, de
	ld	(hl), a
	ld	hl, (ix - 92)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEED2Ev
	ld	c, (ix - 86)
	ld	b, (ix - 85)
	ld	iy, 0
	pop	hl
	ld	hl, (ix - 83)
	inc	hl
	ld	(ix - 83), hl
	jr	.LBB2_17
	.local	.LBB2_19
.LBB2_19:
	ld	e, c
	ld	d, b
	mlt	de
	ld	a, -16
	ld	(ix - 83), de
	sub	a, e
	ld	l, a
	ld	(ix - 92), hl
	ld	c, b
	.local	.LBB2_20
.LBB2_20:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_22 Depth 2
	ld	a, c
	cp	a, 17
	ld	de, 240
	jp	nc, .LBB2_46
; %bb.21:                               ;   in Loop: Header=BB2_20 Depth=1
	or	a, a
	sbc	hl, hl
	ld	(ix - 98), c                    ; 1-byte Folded Spill
	ld	l, c
	ld	(ix - 101), hl
	ld	bc, (ix - 92)
	push	bc
	push	de
	ld	bc, (ix - 83)
	push	bc
	push	iy
	ld	bc, 0
	push	bc
	push	iy
	ld	hl, 1
	push	hl
	push	iy
	call	_gfx_CopyRectangle
	ld	hl, 24
	add	hl, sp
	ld	sp, hl
	ld	hl, (ix - 101)
	ld	bc, (ix - 89)
	call	__imulu
	ld	de, -16
	add	hl, de
	ld	de, 240
	ld	(ix - 101), hl
	ld	iy, 0
	ld	bc, (ix - 95)
	.local	.LBB2_22
.LBB2_22:                               ;   Parent Loop BB2_20 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lea	hl, iy + 0
	or	a, a
	sbc	hl, de
	jr	z, .LBB2_24
; %bb.23:                               ;   in Loop: Header=BB2_22 Depth=2
	push	bc
	pop	hl
	ld	(ix - 107), hl
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
	ld	de, (ix - 101)
	push	de
	push	iy
	push	hl
	ld	(ix - 104), iy
	call	_gfx_Sprite
	ld	iy, (ix - 104)
	pop	hl
	pop	hl
	pop	hl
	ld	bc, (ix - 107)
	inc	bc
	ld	de, 16
	add	iy, de
	ld	hl, 240
	ex	de, hl
	jr	.LBB2_22
	.local	.LBB2_24
.LBB2_24:                               ;   in Loop: Header=BB2_20 Depth=1
	call	_gfx_SwapDraw
	ld	l, (ix - 86)
	ld	h, (ix - 85)
	ld	c, (ix - 98)                    ; 1-byte Folded Reload
	ld	a, c
	add	a, h
	ld	c, a
	ld	iy, 0
	jp	.LBB2_20
	.local	.LBB2_25
.LBB2_25:
	ld	bc, 19
	lea	hl, ix - 32
	ld	(ix - 89), hl
	lea	hl, ix - 80
	ld	(ix - 83), hl
	ld	hl, (ix + 12)
	add	hl, de
	add	hl, bc
	ld	(ix - 95), hl
	ld	de, 14
	lea	bc, iy + 0
	.local	.LBB2_26
.LBB2_26:                               ; =>This Inner Loop Header: Depth=1
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	jp	z, .LBB2_40
; %bb.27:                               ;   in Loop: Header=BB2_26 Depth=1
	ld	hl, (ix + 15)
	add	hl, bc
	ld	(ix - 98), hl
	ld	hl, (ix + 9)
	push	hl
	ld	hl, (ix - 83)
	push	hl
	ld	(ix - 92), bc
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_
	pop	hl
	pop	hl
	ld	hl, (ix - 83)
	push	hl
	ld	hl, (ix - 98)
	push	hl
	ld	hl, (ix - 95)
	push	hl
	push	hl
	call	__Z11hashTerrainjjjN7tinystl13unordered_mapIjhNS_9allocatorEEE
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 89)
	ld	de, (ix - 92)
	add	hl, de
	ld	(hl), a
	ld	hl, (ix - 83)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEED2Ev
	ld	bc, (ix - 92)
	ld	iy, 0
	ld	de, 14
	pop	hl
	inc	bc
	jr	.LBB2_26
	.local	.LBB2_28
.LBB2_28:
	or	a, a
	sbc	hl, hl
	ld	l, b
	ld	bc, (ix - 86)
	call	__imulu
	ex	de, hl
	ld	hl, 320
	ld	(ix - 83), de
	or	a, a
	sbc	hl, de
	ld	(ix - 89), hl
	ld	h, (ix + 33)
	ld	c, h
	.local	.LBB2_29
.LBB2_29:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_31 Depth 2
	ld	a, c
	cp	a, 17
	ld	hl, 1
	jp	nc, .LBB2_46
; %bb.30:                               ;   in Loop: Header=BB2_29 Depth=1
	ld	de, 0
	ld	(ix - 95), c                    ; 1-byte Folded Spill
	ld	e, c
	ld	(ix - 98), de
	ld	de, 216
	push	de
	ld	de, (ix - 89)
	push	de
	ld	bc, 0
	push	bc
	ld	de, (ix - 83)
	push	de
	push	bc
	push	iy
	push	hl
	push	iy
	call	_gfx_CopyRectangle
	ld	hl, 24
	add	hl, sp
	ld	sp, hl
	ld	hl, (ix - 98)
	ld	bc, (ix - 86)
	call	__imulu
	ld	de, -16
	add	hl, de
	ld	(ix - 98), hl
	ld	iy, 0
	ld	bc, (ix - 92)
	.local	.LBB2_31
.LBB2_31:                               ;   Parent Loop BB2_29 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lea	hl, iy + 0
	ld	de, 224
	or	a, a
	sbc	hl, de
	jr	z, .LBB2_33
; %bb.32:                               ;   in Loop: Header=BB2_31 Depth=2
	push	bc
	pop	hl
	ld	(ix - 104), hl
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
	push	iy
	ld	de, (ix - 98)
	push	de
	push	hl
	ld	(ix - 101), iy
	call	_gfx_Sprite
	ld	iy, (ix - 101)
	pop	hl
	pop	hl
	pop	hl
	ld	bc, (ix - 104)
	inc	bc
	ld	de, 16
	add	iy, de
	jr	.LBB2_31
	.local	.LBB2_33
.LBB2_33:                               ;   in Loop: Header=BB2_29 Depth=1
	call	_gfx_SwapDraw
	ld	h, (ix + 33)
	ld	c, (ix - 95)                    ; 1-byte Folded Reload
	ld	a, c
	add	a, h
	ld	c, a
	ld	iy, 0
	jp	.LBB2_29
	.local	.LBB2_34
.LBB2_34:
	ld	e, c
	ld	d, b
	mlt	de
	ld	a, -16
	ld	(ix - 92), de
	sub	a, e
	ld	l, a
	ld	(ix - 98), hl
	ld	c, b
	.local	.LBB2_35
.LBB2_35:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_37 Depth 2
	ld	a, c
	cp	a, 17
	ld	de, 240
	jp	nc, .LBB2_46
; %bb.36:                               ;   in Loop: Header=BB2_35 Depth=1
	or	a, a
	sbc	hl, hl
	ld	(ix - 101), c                   ; 1-byte Folded Spill
	ld	l, c
	ld	(ix - 83), hl
	ld	bc, (ix - 98)
	push	bc
	push	de
	ld	de, 0
	push	de
	push	iy
	ld	de, (ix - 92)
	push	de
	push	iy
	ld	hl, 1
	push	hl
	push	iy
	call	_gfx_CopyRectangle
	ld	hl, 24
	add	hl, sp
	ld	sp, hl
	ld	hl, (ix - 83)
	ld	bc, (ix - 89)
	call	__imulu
	ld	bc, 240
	ex	de, hl
	push	bc
	pop	hl
	or	a, a
	sbc	hl, de
	ld	(ix - 104), hl
	ld	iy, 0
	ld	hl, (ix - 95)
	ld	(ix - 83), hl
	.local	.LBB2_37
.LBB2_37:                               ;   Parent Loop BB2_35 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lea	hl, iy + 0
	or	a, a
	sbc	hl, bc
	jr	z, .LBB2_39
; %bb.38:                               ;   in Loop: Header=BB2_37 Depth=2
	ld	hl, (ix - 83)
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
	ld	de, (ix - 104)
	push	de
	push	iy
	push	hl
	ld	(ix - 107), iy
	call	_gfx_Sprite
	ld	iy, (ix - 107)
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 83)
	inc	hl
	ld	(ix - 83), hl
	ld	de, 16
	add	iy, de
	ld	bc, 240
	jr	.LBB2_37
	.local	.LBB2_39
.LBB2_39:                               ;   in Loop: Header=BB2_35 Depth=1
	call	_gfx_SwapDraw
	ld	l, (ix - 86)
	ld	h, (ix - 85)
	ld	c, (ix - 101)                   ; 1-byte Folded Reload
	ld	a, c
	add	a, h
	ld	c, a
	ld	iy, 0
	jp	.LBB2_35
	.local	.LBB2_40
.LBB2_40:
	or	a, a
	sbc	hl, hl
	ld	b, (ix + 33)
	ld	e, c
	ld	d, b
	ld	l, d
	ld	bc, (ix - 86)
	call	__imulu
	push	hl
	pop	bc
	ld	hl, 320
	ld	(ix - 83), bc
	or	a, a
	sbc	hl, bc
	ld	(ix - 92), hl
	ld	c, d
	.local	.LBB2_41
.LBB2_41:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_43 Depth 2
	ld	a, c
	cp	a, 17
	ld	hl, 1
	jp	nc, .LBB2_46
; %bb.42:                               ;   in Loop: Header=BB2_41 Depth=1
	ld	de, 0
	ld	(ix - 95), c                    ; 1-byte Folded Spill
	ld	e, c
	ld	(ix - 98), de
	ld	de, 216
	push	de
	ld	de, (ix - 92)
	push	de
	ld	bc, 0
	push	bc
	push	iy
	push	bc
	ld	de, (ix - 83)
	push	de
	push	hl
	push	iy
	call	_gfx_CopyRectangle
	ld	hl, 24
	add	hl, sp
	ld	sp, hl
	ld	hl, (ix - 98)
	ld	bc, (ix - 86)
	call	__imulu
	ex	de, hl
	ld	hl, 320
	or	a, a
	sbc	hl, de
	ld	(ix - 98), hl
	ld	iy, 0
	ld	bc, (ix - 89)
	.local	.LBB2_43
.LBB2_43:                               ;   Parent Loop BB2_41 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	lea	hl, iy + 0
	ld	de, 224
	or	a, a
	sbc	hl, de
	jr	z, .LBB2_45
; %bb.44:                               ;   in Loop: Header=BB2_43 Depth=2
	push	bc
	pop	hl
	ld	(ix - 104), hl
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
	push	iy
	ld	de, (ix - 98)
	push	de
	push	hl
	ld	(ix - 101), iy
	call	_gfx_Sprite
	ld	iy, (ix - 101)
	pop	hl
	pop	hl
	pop	hl
	ld	bc, (ix - 104)
	inc	bc
	ld	de, 16
	add	iy, de
	jr	.LBB2_43
	.local	.LBB2_45
.LBB2_45:                               ;   in Loop: Header=BB2_41 Depth=1
	call	_gfx_SwapDraw
	ld	h, (ix + 33)
	ld	c, (ix - 95)                    ; 1-byte Folded Reload
	ld	a, c
	add	a, h
	ld	c, a
	ld	iy, 0
	jp	.LBB2_41
	.local	.LBB2_46
.LBB2_46:                               ; %.loopexit
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end2
.Lfunc_end2:
	.size	__Z12render_leveljN7tinystl13unordered_mapIjhNS_9allocatorEEEjjbbbhhh, .Lfunc_end2-__Z12render_leveljN7tinystl13unordered_mapIjhNS_9allocatorEEEjjbbbhhh
                                        ; -- End function
	.section	.text.__ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_,"ax",@progbits
	.weak	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_ ; -- Begin function _ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_
	.type	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_,@function
__ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_: ; @_ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_
; %bb.0:
	ld	hl, -27
	call	__frameset
	ld	iy, (ix + 6)
	ld	hl, (ix + 9)
	ld	bc, 3
	ld	hl, (hl)
	ld	(iy), hl
	ld	iy, (ix + 9)
	ld	hl, (iy + 6)
	ld	de, (iy + 3)
	or	a, a
	sbc	hl, de
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
	ld	iy, (iy + 3)
	ld	de, -2
	ld	hl, (ix - 9)
	add	hl, de
	ld	(ix - 9), hl
	.local	.LBB3_1
.LBB3_1:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_4 Depth 2
                                        ;     Child Loop BB3_10 Depth 2
                                        ;     Child Loop BB3_16 Depth 2
	ld	de, (iy)
	push	de
	pop	hl
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jp	z, .LBB3_19
; %bb.2:                                ;   in Loop: Header=BB3_1 Depth=1
	ld	hl, 10
	push	hl
	ld	(ix - 6), de
	call	__Znwj
	push	hl
	pop	iy
	ld	(ix - 12), iy
	pop	hl
	ld	hl, (ix - 6)
	ld	hl, (hl)
	ld	(iy), hl
	lea	hl, iy + 0
	ld	iy, (ix - 6)
	ld	a, (iy + 3)
	push	hl
	pop	iy
	ld	(iy + 3), a
	or	a, a
	sbc	hl, hl
	ld	(iy + 7), hl
	ld	(iy + 4), hl
	ld	hl, (ix - 6)
	push	hl
	call	__ZN7tinystl4hashIjEEjRKT_
	pop	de
	ld	iy, (ix + 6)
	ld	iy, (iy + 3)
	ld	bc, (ix - 9)
	call	__iand
	push	hl
	pop	de
	ld	bc, 3
	call	__imulu
	push	hl
	pop	bc
	ld	(ix - 24), iy
	add	iy, bc
	ld	(ix - 18), iy
	ld	bc, (iy + 3)
	push	bc
	pop	hl
	ld	iy, (ix - 12)
	ld	(iy + 4), hl
	add	hl, bc
	or	a, a
	sbc	hl, bc
	push	bc
	pop	hl
	ld	(ix - 15), bc
	jr	nz, .LBB3_6
; %bb.3:                                ; %.preheader.preheader
                                        ;   in Loop: Header=BB3_1 Depth=1
	push	de
	pop	hl
	ld	bc, 3
	call	__imulu
	ld	(ix - 21), hl
	ld	(ix - 27), de
	inc	de
	.local	.LBB3_4
.LBB3_4:                                ; %.preheader
                                        ;   Parent Loop BB3_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ld	iy, (ix - 21)
	ld	bc, -3
	add	iy, bc
	dec	de
	sbc	hl, hl
	adc	hl, de
	jr	z, .LBB3_8
; %bb.5:                                ;   in Loop: Header=BB3_4 Depth=2
	ld	hl, (ix - 24)
	ld	bc, (ix - 21)
	add	hl, bc
	ld	bc, (hl)
	sbc	hl, hl
	adc	hl, bc
	ld	(ix - 21), iy
	jr	z, .LBB3_4
	jr	.LBB3_9
	.local	.LBB3_6
.LBB3_6:                                ;   in Loop: Header=BB3_1 Depth=1
	push	hl
	pop	iy
	ld	hl, (iy + 7)
	ld	bc, (ix - 12)
	push	bc
	pop	iy
	ld	(iy + 7), hl
	push	bc
	pop	hl
	ld	iy, (ix - 15)
	ld	(iy + 7), hl
	push	bc
	pop	iy
	ld	iy, (iy + 7)
	lea	hl, iy + 0
	add	hl, bc
	or	a, a
	sbc	hl, bc
	push	de
	pop	bc
	jr	z, .LBB3_15
; %bb.7:                                ;   in Loop: Header=BB3_1 Depth=1
	ld	hl, (ix - 12)
	ld	(iy + 4), hl
	jr	.LBB3_15
	.local	.LBB3_8
.LBB3_8:                                ;   in Loop: Header=BB3_1 Depth=1
	ld	hl, (ix - 24)
	ld	bc, (hl)
	.local	.LBB3_9
.LBB3_9:                                ; %.loopexit.preheader
                                        ;   in Loop: Header=BB3_1 Depth=1
	ld	(ix - 21), bc
	.local	.LBB3_10
.LBB3_10:                               ; %.loopexit
                                        ;   Parent Loop BB3_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ld	iy, (ix - 21)
	lea	hl, iy + 0
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	z, .LBB3_13
; %bb.11:                               ;   in Loop: Header=BB3_10 Depth=2
	ld	de, (iy + 4)
	sbc	hl, hl
	adc	hl, de
	ld	(ix - 21), de
	jr	nz, .LBB3_10
; %bb.12:                               ;   in Loop: Header=BB3_1 Depth=1
	lea	hl, iy + 0
	ld	de, (ix - 12)
	lea	bc, iy + 0
	push	de
	pop	iy
	ld	(iy + 7), hl
	ex	de, hl
	push	bc
	pop	iy
	ld	(iy + 4), hl
	jr	.LBB3_14
	.local	.LBB3_13
.LBB3_13:                               ;   in Loop: Header=BB3_1 Depth=1
	or	a, a
	sbc	hl, hl
	ld	iy, (ix - 12)
	ld	(iy + 7), hl
	.local	.LBB3_14
.LBB3_14:                               ; %.preheader19
                                        ;   in Loop: Header=BB3_1 Depth=1
	ld	bc, (ix - 27)
	.local	.LBB3_15
.LBB3_15:                               ; %.preheader19
                                        ;   in Loop: Header=BB3_1 Depth=1
	inc	bc
	ld	iy, (ix - 18)
	.local	.LBB3_16
.LBB3_16:                               ;   Parent Loop BB3_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ld	de, (iy)
	ld	hl, (ix - 15)
	or	a, a
	sbc	hl, de
	jr	nz, .LBB3_18
; %bb.17:                               ;   in Loop: Header=BB3_16 Depth=2
	ld	hl, (ix - 12)
	ld	(iy), hl
	push	bc
	pop	hl
	dec	hl
	lea	iy, iy - 3
	push	hl
	pop	bc
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	nz, .LBB3_16
	.local	.LBB3_18
.LBB3_18:                               ;   in Loop: Header=BB3_1 Depth=1
	ld	iy, (ix - 6)
	lea	iy, iy + 4
	jp	.LBB3_1
	.local	.LBB3_19
.LBB3_19:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end3
.Lfunc_end3:
	.size	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_, .Lfunc_end3-__ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_
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
	jr	z, .LBB4_2
; %bb.1:
	push	iy
	ld	(ix - 3), iy
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE5clearEv
	pop	hl
	ld	iy, (ix - 3)
	ld	de, (iy + 3)
	.local	.LBB4_2
.LBB4_2:
	ld	(ix + 6), de
	pop	hl
	pop	ix
	jp	__ZdlPv
	.local	.Lfunc_end4
.Lfunc_end4:
	.size	__ZN7tinystl13unordered_mapIjhNS_9allocatorEED2Ev, .Lfunc_end4-__ZN7tinystl13unordered_mapIjhNS_9allocatorEED2Ev
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
	.local	.LBB5_1
.LBB5_1:                                ; =>This Inner Loop Header: Depth=1
	lea	hl, iy + 0
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	z, .LBB5_3
; %bb.2:                                ;   in Loop: Header=BB5_1 Depth=1
	ld	hl, (iy + 4)
	ld	(ix - 6), hl
	push	iy
	call	__ZdlPv
	pop	hl
	ld	iy, (ix - 6)
	jr	.LBB5_1
	.local	.LBB5_3
.LBB5_3:
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
	.local	.Lfunc_end5
.Lfunc_end5:
	.size	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE5clearEv, .Lfunc_end5-__ZN7tinystl13unordered_mapIjhNS_9allocatorEE5clearEv
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
	jr	z, .LBB6_2
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
	jp	nc, .LBB6_6
	.local	.LBB6_2
.LBB6_2:
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
	.local	.LBB6_3
.LBB6_3:                                ; =>This Inner Loop Header: Depth=1
	push	de
	pop	iy
	ld	bc, (ix - 6)
	add	iy, bc
	lea	hl, iy + 0
	ld	bc, (ix - 12)
	or	a, a
	sbc	hl, bc
	jr	z, .LBB6_5
; %bb.4:                                ;   in Loop: Header=BB6_3 Depth=1
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
	jr	.LBB6_3
	.local	.LBB6_5
.LBB6_5:
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
	jr	.LBB6_7
	.local	.LBB6_6
.LBB6_6:
	ld	iy, (iy + 3)
	.local	.LBB6_7
.LBB6_7:
	ld	bc, 3
	ex	de, hl
	call	__imulu
	ex	de, hl
	ld	hl, (ix - 3)
	add	hl, de
	ex	de, hl
	.local	.LBB6_8
.LBB6_8:                                ; =>This Inner Loop Header: Depth=1
	lea	hl, iy + 0
	or	a, a
	sbc	hl, de
	jr	nc, .LBB6_10
; %bb.9:                                ;   in Loop: Header=BB6_8 Depth=1
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(iy), hl
	lea	iy, iy + 3
	jr	.LBB6_8
	.local	.LBB6_10
.LBB6_10:
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
	.local	.Lfunc_end6
.Lfunc_end6:
	.size	__ZN7tinystlL13buffer_resizeIPNS_19unordered_hash_nodeIjhEENS_9allocatorEEEvPNS_6bufferIT_T0_EEjRKS6_, .Lfunc_end6-__ZN7tinystlL13buffer_resizeIPNS_19unordered_hash_nodeIjhEENS_9allocatorEEEvPNS_6bufferIT_T0_EEjRKS6_
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
	.local	.LBB7_1
.LBB7_1:                                ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	push	bc
	pop	iy
	or	a, a
	sbc	hl, bc
	jr	z, .LBB7_3
; %bb.2:                                ;   in Loop: Header=BB7_1 Depth=1
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
	jr	.LBB7_1
	.local	.LBB7_3
.LBB7_3:
	ld	hl, (ix - 6)
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end7
.Lfunc_end7:
	.size	__ZN7tinystl4hashIjEEjRKT_, .Lfunc_end7-__ZN7tinystl4hashIjEEjRKT_
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
	jr	c, .LBB8_2
; %bb.1:
	ld	a, 63
	.local	.LBB8_2
.LBB8_2:
	ld	e, 112
	ld	iyl, 0
	ld	c, 8
	or	a, a
	sbc	hl, hl
	ld	l, a
	ld	iyh, c
	.local	.LBB8_3
.LBB8_3:                                ; =>This Inner Loop Header: Depth=1
	ld	b, iyl
	ld	c, 9
	call	__bdivu
	ld	d, a
	ld	(ix - 7), hl
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jp	z, .LBB8_5
; %bb.4:                                ;   in Loop: Header=BB8_3 Depth=1
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
	jp	.LBB8_3
	.local	.LBB8_5
.LBB8_5:
	call	_gfx_SwapDraw
	ld	(ix + 6), 0
	ld	sp, ix
	pop	ix
	jp	_gfx_SetDraw
	.local	.Lfunc_end8
.Lfunc_end8:
	.size	__Z26render_tile_selection_menuhPhh, .Lfunc_end8-__Z26render_tile_selection_menuhPhh
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
	.local	.Lfunc_end9
.Lfunc_end9:
	.size	__Z4initv, .Lfunc_end9-__Z4initv
                                        ; -- End function
	.section	.text.__Z4gamev,"ax",@progbits
	.globl	__Z4gamev                       ; -- Begin function _Z4gamev
	.type	__Z4gamev,@function
__Z4gamev:                              ; @_Z4gamev
; %bb.0:
	ld	hl, -113
	call	__frameset
	lea	iy, ix - 12
	lea	hl, ix - 24
	ld	(ix - 91), hl
	lea	hl, ix - 28
	ld	(ix - 94), hl
	lea	hl, ix - 40
	ld	(ix - 85), hl
	lea	hl, ix - 52
	ld	(ix - 106), hl
	lea	hl, ix - 64
	ld	(ix - 100), hl
	lea	hl, ix - 76
	ld	(ix - 82), hl
	ld	(ix - 12), 0
	lea	de, iy + 0
	inc	de
	lea	hl, iy + 0
	ld	(ix - 79), iy
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
	ld	iy, (ix - 91)
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
	ld	(ix - 88), hl
	pop	hl
	pop	hl
	pop	hl
	ld	(ix - 28), 1
	ld	hl, (ix - 79)
	push	hl
	ld	hl, (ix - 94)
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
	ld	(ix - 97), hl
	ld	hl, (ix - 79)
	push	hl
	ld	hl, (ix - 85)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_
	pop	hl
	pop	hl
	ld	iy, (_x)
	ld	de, (_y)
	ld	bc, 1
	push	bc
	or	a, a
	sbc	hl, hl
	push	hl
	push	hl
	push	hl
	push	hl
	push	bc
	push	de
	push	iy
	ld	hl, (ix - 85)
	push	hl
	ld	hl, (ix - 97)
	push	hl
	call	__Z12render_leveljN7tinystl13unordered_mapIjhNS_9allocatorEEEjjbbbhhh
	ld	hl, 30
	add	hl, sp
	ld	sp, hl
	ld	hl, (ix - 85)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEED2Ev
	pop	hl
	ld	hl, 96
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, _.str.1
	push	hl
	call	_gfx_PrintStringXY
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 96
	push	hl
	ld	hl, 48
	push	hl
	call	_gfx_SetTextXY
	pop	hl
	pop	hl
	ld	hl, 3
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	call	_gfx_PrintUInt
	pop	hl
	pop	hl
	ld	hl, 104
	push	hl
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, _.str.1.2
	push	hl
	call	_gfx_PrintStringXY
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 104
	push	hl
	ld	hl, 16
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
	or	a, a
	sbc	hl, hl
	push	hl
	ld	hl, _.str.2
	push	hl
	call	_gfx_PrintStringXY
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 112
	push	hl
	ld	hl, 16
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
	ld	hl, (ix - 88)
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
	xor	a, a
	ld	(ix - 97), a                    ; 1-byte Folded Spill
	ld	(ix - 85), a                    ; 1-byte Folded Spill
	.local	.LBB10_1
.LBB10_1:                               ; =>This Inner Loop Header: Depth=1
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
	jp	nz, .LBB10_25
; %bb.2:                                ;   in Loop: Header=BB10_1 Depth=1
	call	_kb_AnyKey
	or	a, a
	jr	z, .LBB10_1
; %bb.3:                                ;   in Loop: Header=BB10_1 Depth=1
	ld	hl, 20
	push	hl
	call	_msleep
	pop	hl
	ld	iy, -720866
	ld	l, (iy)
	ld	h, (iy + 1)
	ld.sis	bc, 8
	call	__sand
	ld	e, l
	ld	d, h
	ld	c, 3
	call	__sshru
                                        ; kill: def $hl killed $hl def $uhl
	ld	(ix - 103), hl
	ld	a, e
	or	a, a
	ld	a, -1
	ld	e, a
	jr	nz, .LBB10_5
; %bb.4:                                ;   in Loop: Header=BB10_1 Depth=1
	ld	a, 0
	ld	e, a
	.local	.LBB10_5
.LBB10_5:                               ;   in Loop: Header=BB10_1 Depth=1
	ld	l, (iy)
	ld	h, (iy + 1)
	ld.sis	bc, 1
	call	__sand
	bit	0, l
	jr	nz, .LBB10_7
; %bb.6:                                ;   in Loop: Header=BB10_1 Depth=1
	ld	l, (ix - 97)
	ld	a, e
	or	a, l
	ld	l, a
	ld	(ix - 97), l
	ld	l, (ix - 85)
	ld	(ix - 109), e                   ; 1-byte Folded Spill
	ld	a, e
	or	a, l
	ld	l, a
	ld	(ix - 85), l
	jr	.LBB10_8
	.local	.LBB10_7
.LBB10_7:                               ;   in Loop: Header=BB10_1 Depth=1
	ld	a, 1
	ld	l, a
	ld	(ix - 103), hl
	ld	(ix - 109), a                   ; 1-byte Folded Spill
	ld	(ix - 97), a                    ; 1-byte Folded Spill
	dec	a
	ld	(ix - 85), a                    ; 1-byte Folded Spill
	.local	.LBB10_8
.LBB10_8:                               ;   in Loop: Header=BB10_1 Depth=1
	ld	l, (iy)
	ld	h, (iy + 1)
	ld	a, l
	bit	1, a
	ld	a, 0
	ld	e, a
	jr	z, .LBB10_10
; %bb.9:                                ;   in Loop: Header=BB10_1 Depth=1
	ld	a, 1
	ld	e, a
	dec	a
	ld	l, a
	ld	(ix - 103), hl
	inc	a
	ld	(ix - 109), a                   ; 1-byte Folded Spill
	ld	l, 0
	ld	(ix - 97), l                    ; 1-byte Folded Spill
	ld	(ix - 85), a                    ; 1-byte Folded Spill
	.local	.LBB10_10
.LBB10_10:                              ;   in Loop: Header=BB10_1 Depth=1
	ld	l, (iy)
	ld	h, (iy + 1)
	ld	a, l
	bit	2, a
	jr	z, .LBB10_12
; %bb.11:                               ;   in Loop: Header=BB10_1 Depth=1
	ld	a, 1
	ld	e, a
	dec	a
	ld	l, a
	ld	(ix - 103), hl
	inc	a
	ld	(ix - 109), a                   ; 1-byte Folded Spill
	dec	a
	ld	(ix - 97), a                    ; 1-byte Folded Spill
	ld	(ix - 85), a                    ; 1-byte Folded Spill
	.local	.LBB10_12
.LBB10_12:                              ;   in Loop: Header=BB10_1 Depth=1
	ld	(ix - 112), de
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
	jp	z, .LBB10_14
; %bb.13:                               ;   in Loop: Header=BB10_1 Depth=1
	or	a, a
	sbc	hl, hl
	push	hl
	call	_gfx_SetDraw
	pop	hl
	ld	a, (ix - 28)
	ld	(ix - 113), a
	ld	hl, (_x)
	ld	de, 3108411
	push	de
	pop	bc
	call	__imulu
	push	hl
	pop	iy
	ld	hl, (_y)
	ld	de, 2610411
	push	de
	pop	bc
	call	__imulu
	ex	de, hl
	add	iy, de
	ld	hl, 877250
	ex	de, hl
	add	iy, de
	ld	(ix - 27), iy
	pea	ix - 27
	ld	hl, (ix - 79)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (ix - 113)
	ld	(hl), a
	ld	hl, (_x)
	ld	bc, 3108411
	call	__imulu
	push	hl
	pop	iy
	ld	hl, (_y)
	ld	bc, 2610411
	call	__imulu
	ex	de, hl
	add	iy, de
	ld	de, 877250
	add	iy, de
	ld	(ix - 27), iy
	pea	ix - 27
	ld	hl, (ix - 91)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	(hl), 1
	ld	hl, (_x)
	ld	de, (_y)
	push	de
	push	hl
	ld	hl, (ix - 79)
	push	hl
	ld	hl, (ix - 91)
	push	hl
	call	__Z4tickRN7tinystl13unordered_mapIjhNS_9allocatorEEES3_jj
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 32
	push	hl
	ld	hl, 64
	push	hl
	ld	hl, (ix - 88)
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
	.local	.LBB10_14
.LBB10_14:                              ;   in Loop: Header=BB10_1 Depth=1
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
	jp	z, .LBB10_17
; %bb.15:                               ;   in Loop: Header=BB10_1 Depth=1
	ld	hl, (_x)
	ld	bc, 3108411
	call	__imulu
	push	hl
	pop	iy
	ld	hl, (_y)
	ld	bc, 2610411
	call	__imulu
	ex	de, hl
	add	iy, de
	ld	de, 877250
	add	iy, de
	ld	(ix - 27), iy
	pea	ix - 27
	ld	hl, (ix - 79)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	or	a, a
	jp	z, .LBB10_17
; %bb.16:                               ;   in Loop: Header=BB10_1 Depth=1
	or	a, a
	sbc	hl, hl
	push	hl
	call	_gfx_SetDraw
	pop	hl
	ld	hl, (_x)
	ld	de, 3108411
	push	de
	pop	bc
	call	__imulu
	push	hl
	pop	iy
	ld	hl, (_y)
	ld	de, 2610411
	push	de
	pop	bc
	call	__imulu
	ex	de, hl
	add	iy, de
	ld	hl, 877250
	ex	de, hl
	add	iy, de
	ld	(ix - 27), iy
	pea	ix - 27
	ld	hl, (ix - 91)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	(hl), 2
	ld	hl, (_x)
	ld	de, (_y)
	push	de
	push	hl
	ld	hl, (ix - 79)
	push	hl
	ld	hl, (ix - 91)
	push	hl
	call	__Z4tickRN7tinystl13unordered_mapIjhNS_9allocatorEEES3_jj
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (_x)
	ld	bc, 3108411
	call	__imulu
	push	hl
	pop	iy
	ld	hl, (_y)
	ld	bc, 2610411
	call	__imulu
	ex	de, hl
	add	iy, de
	ld	de, 877250
	add	iy, de
	ld	(ix - 27), iy
	pea	ix - 27
	ld	hl, (ix - 79)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	(hl), 0
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
	ld	hl, (ix - 88)
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
	.local	.LBB10_17
.LBB10_17:                              ;   in Loop: Header=BB10_1 Depth=1
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
	jr	z, .LBB10_19
; %bb.18:                               ;   in Loop: Header=BB10_1 Depth=1
	ld	hl, (ix - 79)
	push	hl
	ld	hl, (ix - 106)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_
	pop	hl
	pop	hl
	push	hl
	push	hl
	push	hl
	ld	hl, (ix - 94)
	push	hl
	call	__Z19tile_selection_menuRhN7tinystl13unordered_mapIjhNS0_9allocatorEEEjj
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 106)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEED2Ev
	pop	hl
	.local	.LBB10_19
.LBB10_19:                              ;   in Loop: Header=BB10_1 Depth=1
	bit	0, (ix - 109)                   ; 1-byte Folded Reload
	jp	z, .LBB10_1
; %bb.20:                               ;   in Loop: Header=BB10_1 Depth=1
	or	a, a
	sbc	hl, hl
	push	hl
	call	_gfx_SetDraw
	pop	hl
	ld	hl, 32
	push	hl
	ld	hl, 64
	push	hl
	ld	hl, (ix - 88)
	push	hl
	call	_gfx_Sprite_NoClip
	pop	hl
	pop	hl
	pop	hl
	ld	hl, 1
	push	hl
	call	_gfx_SetDraw
	pop	hl
	ld	hl, (_seed)
	ld	(ix - 109), hl
	ld	hl, (ix - 79)
	push	hl
	ld	hl, (ix - 100)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_
	pop	hl
	pop	hl
	ld	hl, (_x)
	ld	de, (_y)
	ld	bc, 2
	push	bc
	ld	bc, (ix - 103)
	push	bc
	ld	bc, (ix - 112)
	push	bc
	ld	c, (ix - 85)                    ; 1-byte Folded Reload
	push	bc
	ld	c, (ix - 97)                    ; 1-byte Folded Reload
	push	bc
	ld	bc, 0
	push	bc
	push	de
	push	hl
	ld	hl, (ix - 100)
	push	hl
	ld	hl, (ix - 109)
	push	hl
	call	__Z12render_leveljN7tinystl13unordered_mapIjhNS_9allocatorEEEjjbbbhhh
	ld	hl, 30
	add	hl, sp
	ld	sp, hl
	ld	hl, (ix - 100)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEED2Ev
	pop	hl
	ld	de, 0
	ld	hl, (ix - 112)
	ld	e, l
	push	de
	pop	hl
	call	__ineg
	push	hl
	pop	bc
	bit	0, (ix - 85)                    ; 1-byte Folded Reload
	jr	nz, .LBB10_22
; %bb.21:                               ;   in Loop: Header=BB10_1 Depth=1
	push	de
	pop	bc
	.local	.LBB10_22
.LBB10_22:                              ;   in Loop: Header=BB10_1 Depth=1
	ld	hl, (_x)
	add	hl, bc
	ld	(_x), hl
	ld	de, 0
	ld	hl, (ix - 103)
	ld	e, l
	push	de
	pop	hl
	call	__ineg
	push	hl
	pop	bc
	bit	0, (ix - 85)                    ; 1-byte Folded Reload
	jr	nz, .LBB10_24
; %bb.23:                               ;   in Loop: Header=BB10_1 Depth=1
	push	de
	pop	bc
	.local	.LBB10_24
.LBB10_24:                              ;   in Loop: Header=BB10_1 Depth=1
	ld	hl, (_y)
	add	hl, bc
	ld	(_y), hl
	or	a, a
	sbc	hl, hl
	push	hl
	call	_gfx_SetDraw
	pop	hl
	ld	hl, 104
	push	hl
	ld	hl, 16
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
	ld	hl, 16
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
	ld	hl, (ix - 88)
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
	jp	.LBB10_1
	.local	.LBB10_25
.LBB10_25:
	ld	hl, (_seed)
	ld	(ix - 85), hl
	ld	hl, (_x)
	ld	(ix - 97), hl
	ld	hl, (_y)
	ld	(ix - 100), hl
	ld	hl, (ix - 79)
	push	hl
	ld	hl, (ix - 82)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEC2ERKS2_
	pop	hl
	pop	hl
	ld	hl, (ix - 82)
	push	hl
	ld	hl, (ix - 94)
	push	hl
	ld	hl, (ix - 100)
	push	hl
	ld	hl, (ix - 97)
	push	hl
	ld	hl, (ix - 85)
	push	hl
	call	__Z9writeSavejjjRhN7tinystl13unordered_mapIjhNS0_9allocatorEEE
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 82)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEED2Ev
	pop	hl
	ld	hl, (ix - 88)
	push	hl
	call	_free
	pop	hl
	ld	hl, (ix - 79)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE5clearEv
	pop	hl
	ld	hl, (ix - 91)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEED2Ev
	pop	hl
	ld	hl, (ix - 79)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEED2Ev
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end10
.Lfunc_end10:
	.size	__Z4gamev, .Lfunc_end10-__Z4gamev
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
	.local	.Lfunc_end11
.Lfunc_end11:
	.size	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj, .Lfunc_end11-__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
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
	.local	.LBB12_1
.LBB12_1:                               ; =>This Inner Loop Header: Depth=1
	ld	(ix - 3), a                     ; 1-byte Folded Spill
	push	de
	pop	hl
	ld	bc, 7
	or	a, a
	sbc	hl, bc
	jr	z, .LBB12_5
; %bb.2:                                ;   in Loop: Header=BB12_1 Depth=1
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
	jr	z, .LBB12_4
; %bb.3:                                ;   in Loop: Header=BB12_1 Depth=1
	ld	a, (ix - 3)                     ; 1-byte Folded Reload
	.local	.LBB12_4
.LBB12_4:                               ;   in Loop: Header=BB12_1 Depth=1
	push	bc
	pop	de
	inc	de
	inc	iyl
	jr	.LBB12_1
	.local	.LBB12_5
.LBB12_5:
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
	.local	.LBB12_6
.LBB12_6:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB12_7 Depth 2
	ld	e, -128
	.local	.LBB12_7
.LBB12_7:                               ;   Parent Loop BB12_6 Depth=1
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
	jp	nz, .LBB12_26
; %bb.8:                                ;   in Loop: Header=BB12_7 Depth=2
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
	jp	nz, .LBB12_26
; %bb.9:                                ;   in Loop: Header=BB12_7 Depth=2
	call	_kb_AnyKey
	ld	iyh, 2
	ld	iyl, 0
	ld	d, -1
	ld	e, -128
	or	a, a
	jr	z, .LBB12_7
; %bb.10:                               ;   in Loop: Header=BB12_6 Depth=1
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
	jr	nz, .LBB12_12
; %bb.11:                               ;   in Loop: Header=BB12_6 Depth=1
	ex	de, hl
	ld	e, iyl
	ex	de, hl
	.local	.LBB12_12
.LBB12_12:                              ;   in Loop: Header=BB12_6 Depth=1
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
	jr	z, .LBB12_14
; %bb.13:                               ;   in Loop: Header=BB12_6 Depth=1
	ld	l, 9
	ld	a, iyl
	add	a, l
	ld	iyl, a
	.local	.LBB12_14
.LBB12_14:                              ;   in Loop: Header=BB12_6 Depth=1
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
	jr	z, .LBB12_16
; %bb.15:                               ;   in Loop: Header=BB12_6 Depth=1
	ld	c, (ix - 17)
	ld	b, (ix - 16)
	ld	a, iyl
	add	a, c
	ld	iyl, a
	.local	.LBB12_16
.LBB12_16:                              ;   in Loop: Header=BB12_6 Depth=1
	ld	a, iyl
	cp	a, 6
	ld	c, iyl
	jr	c, .LBB12_18
; %bb.17:                               ;   in Loop: Header=BB12_6 Depth=1
	ld	c, 6
	.local	.LBB12_18
.LBB12_18:                              ;   in Loop: Header=BB12_6 Depth=1
	ld	a, iyl
	cp	a, -1
	ld	a, 0
	ld	(ix - 12), a                    ; 1-byte Folded Spill
	jr	z, .LBB12_20
; %bb.19:                               ;   in Loop: Header=BB12_6 Depth=1
	ld	(ix - 12), c                    ; 1-byte Folded Spill
	.local	.LBB12_20
.LBB12_20:                              ;   in Loop: Header=BB12_6 Depth=1
	ld	a, l
	or	a, a
	jr	nz, .LBB12_24
; %bb.21:                               ;   in Loop: Header=BB12_6 Depth=1
	bit	0, e
	jr	nz, .LBB12_24
; %bb.22:                               ;   in Loop: Header=BB12_6 Depth=1
	ld	l, (ix - 15)
	ld	h, (ix - 14)
	ld	a, l
	or	a, a
	jr	nz, .LBB12_24
; %bb.23:                               ;   in Loop: Header=BB12_6 Depth=1
	ld	l, (ix - 19)
	ld	h, (ix - 18)
	ld	a, l
	or	a, a
	jr	z, .LBB12_25
	.local	.LBB12_24
.LBB12_24:                              ;   in Loop: Header=BB12_6 Depth=1
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
	.local	.LBB12_25
.LBB12_25:                              ;   in Loop: Header=BB12_6 Depth=1
	ld	hl, 200
	push	hl
	call	_msleep
	pop	hl
	ld	a, (ix - 12)
	ld	(ix - 3), a                     ; 1-byte Folded Spill
	jp	.LBB12_6
	.local	.LBB12_26
.LBB12_26:
	or	a, a
	sbc	hl, hl
	ex	de, hl
	ld	e, (ix - 3)                     ; 1-byte Folded Reload
	ld	hl, ___const._Z19tile_selection_menuRhN7tinystl13unordered_mapIjhNS0_9allocatorEEEjj.possible_tile_selections
	add	hl, de
	ld	a, (hl)
	ld	hl, (ix - 9)
	ld	(hl), a
	.local	.LBB12_27
.LBB12_27:                              ; =>This Inner Loop Header: Depth=1
	call	_kb_AnyKey
	or	a, a
	jr	nz, .LBB12_27
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
	.local	.Lfunc_end12
.Lfunc_end12:
	.size	__Z19tile_selection_menuRhN7tinystl13unordered_mapIjhNS0_9allocatorEEEjj, .Lfunc_end12-__Z19tile_selection_menuRhN7tinystl13unordered_mapIjhNS0_9allocatorEEEjj
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
	call	__ZN7tinystlL13buffer_resizeIPNS_19unordered_hash_nodeIjhEENS_9allocatorEEEvPNS_6bufferIT_T0_EEjRKS6_.3
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
	.section	.text.__ZN7tinystlL13buffer_resizeIPNS_19unordered_hash_nodeIjhEENS_9allocatorEEEvPNS_6bufferIT_T0_EEjRKS6_.3,"ax",@progbits
	.type	__ZN7tinystlL13buffer_resizeIPNS_19unordered_hash_nodeIjhEENS_9allocatorEEEvPNS_6bufferIT_T0_EEjRKS6_.3,@function ; -- Begin function _ZN7tinystlL13buffer_resizeIPNS_19unordered_hash_nodeIjhEENS_9allocatorEEEvPNS_6bufferIT_T0_EEjRKS6_.3
__ZN7tinystlL13buffer_resizeIPNS_19unordered_hash_nodeIjhEENS_9allocatorEEEvPNS_6bufferIT_T0_EEjRKS6_.3: ; @_ZN7tinystlL13buffer_resizeIPNS_19unordered_hash_nodeIjhEENS_9allocatorEEEvPNS_6bufferIT_T0_EEjRKS6_.3
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
	jr	z, .LBB15_2
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
	jp	nc, .LBB15_6
	.local	.LBB15_2
.LBB15_2:
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
	.local	.LBB15_3
.LBB15_3:                               ; =>This Inner Loop Header: Depth=1
	push	de
	pop	iy
	ld	bc, (ix - 6)
	add	iy, bc
	lea	hl, iy + 0
	ld	bc, (ix - 12)
	or	a, a
	sbc	hl, bc
	jr	z, .LBB15_5
; %bb.4:                                ;   in Loop: Header=BB15_3 Depth=1
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
	jr	.LBB15_3
	.local	.LBB15_5
.LBB15_5:
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
	jr	.LBB15_7
	.local	.LBB15_6
.LBB15_6:
	ld	iy, (iy + 3)
	.local	.LBB15_7
.LBB15_7:
	ld	bc, 3
	ex	de, hl
	call	__imulu
	ex	de, hl
	ld	hl, (ix - 3)
	add	hl, de
	ex	de, hl
	.local	.LBB15_8
.LBB15_8:                               ; =>This Inner Loop Header: Depth=1
	lea	hl, iy + 0
	or	a, a
	sbc	hl, de
	jr	nc, .LBB15_10
; %bb.9:                                ;   in Loop: Header=BB15_8 Depth=1
	ld	hl, (ix + 12)
	ld	hl, (hl)
	ld	(iy), hl
	lea	iy, iy + 3
	jr	.LBB15_8
	.local	.LBB15_10
.LBB15_10:
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
	.local	.Lfunc_end15
.Lfunc_end15:
	.size	__ZN7tinystlL13buffer_resizeIPNS_19unordered_hash_nodeIjhEENS_9allocatorEEEvPNS_6bufferIT_T0_EEjRKS6_.3, .Lfunc_end15-__ZN7tinystlL13buffer_resizeIPNS_19unordered_hash_nodeIjhEENS_9allocatorEEEvPNS_6bufferIT_T0_EEjRKS6_.3
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
	jr	nz, .LBB16_4
; %bb.1:                                ; %.preheader.preheader
	ld	bc, 3
	ld	de, (ix - 3)
	push	de
	pop	hl
	call	__imulu
	ld	(ix - 12), hl
	inc	de
	.local	.LBB16_2
.LBB16_2:                               ; %.preheader
                                        ; =>This Inner Loop Header: Depth=1
	ld	iy, (ix - 12)
	ld	hl, -3
	push	hl
	pop	bc
	add	iy, bc
	dec	de
	sbc	hl, hl
	adc	hl, de
	jr	z, .LBB16_6
; %bb.3:                                ;   in Loop: Header=BB16_2 Depth=1
	ld	hl, (ix + 12)
	ld	bc, (ix - 12)
	add	hl, bc
	ld	bc, (hl)
	sbc	hl, hl
	adc	hl, bc
	ld	(ix - 12), iy
	jr	z, .LBB16_2
	jr	.LBB16_7
	.local	.LBB16_4
.LBB16_4:
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
	jr	z, .LBB16_13
; %bb.5:
	ld	hl, (ix + 6)
	ld	(iy + 4), hl
	jr	.LBB16_13
	.local	.LBB16_6
.LBB16_6:
	ld	hl, (ix + 12)
	ld	bc, (hl)
	.local	.LBB16_7
.LBB16_7:                               ; %.loopexit.preheader
	ld	(ix - 12), bc
	.local	.LBB16_8
.LBB16_8:                               ; %.loopexit
                                        ; =>This Inner Loop Header: Depth=1
	ld	iy, (ix - 12)
	lea	hl, iy + 0
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	z, .LBB16_11
; %bb.9:                                ;   in Loop: Header=BB16_8 Depth=1
	ld	de, (iy + 4)
	sbc	hl, hl
	adc	hl, de
	ld	(ix - 12), de
	jr	nz, .LBB16_8
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
	jr	.LBB16_12
	.local	.LBB16_11
.LBB16_11:
	ld	iy, (ix + 6)
	or	a, a
	sbc	hl, hl
	ld	(iy + 7), hl
	.local	.LBB16_12
.LBB16_12:                              ; %.preheader14
	ld	de, (ix - 3)
	.local	.LBB16_13
.LBB16_13:                              ; %.preheader14
	inc	de
	ld	(ix - 3), de
	ld	bc, (ix + 6)
	ld	iy, (ix - 9)
	.local	.LBB16_14
.LBB16_14:                              ; =>This Inner Loop Header: Depth=1
	ld	de, (iy)
	ld	hl, (ix - 6)
	or	a, a
	sbc	hl, de
	jr	nz, .LBB16_16
; %bb.15:                               ;   in Loop: Header=BB16_14 Depth=1
	ld	(iy), bc
	ld	hl, (ix - 3)
	dec	hl
	lea	iy, iy - 3
	ld	(ix - 3), hl
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	nz, .LBB16_14
	.local	.LBB16_16
.LBB16_16:
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end16
.Lfunc_end16:
	.size	__ZN7tinystlL26unordered_hash_node_insertIjhEEvPNS_19unordered_hash_nodeIT_T0_EEjPS5_j, .Lfunc_end16-__ZN7tinystlL26unordered_hash_node_insertIjhEEvPNS_19unordered_hash_nodeIT_T0_EEjPS5_j
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
	jp	nc, .LBB17_4
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
	call	__ZN7tinystlL13buffer_resizeIPNS_19unordered_hash_nodeIjhEENS_9allocatorEEEvPNS_6bufferIT_T0_EEjRKS6_.3
	ld	de, (ix - 6)
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix + 6)
	ld	hl, (iy + 3)
	ld	(ix - 9), hl
	.local	.LBB17_2
.LBB17_2:                               ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	z, .LBB17_4
; %bb.3:                                ;   in Loop: Header=BB17_2 Depth=1
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
	jr	.LBB17_2
	.local	.LBB17_4
.LBB17_4:                               ; %.loopexit
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end17
.Lfunc_end17:
	.size	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6rehashEj, .Lfunc_end17-__ZN7tinystl13unordered_mapIjhNS_9allocatorEE6rehashEj
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
	.local	.Lfunc_end18
.Lfunc_end18:
	.size	_main, .Lfunc_end18-_main
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
	.local	.LBB19_1
.LBB19_1:                               ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	or	a, a
	sbc	hl, bc
	jr	z, .LBB19_3
; %bb.2:                                ;   in Loop: Header=BB19_1 Depth=1
	ld	hl, _perm
	add	hl, de
	ld	(hl), a
	inc	de
	inc	a
	jr	.LBB19_1
	.local	.LBB19_3
.LBB19_3:
	ld	hl, 255
	ex	de, hl
	.local	.LBB19_4
.LBB19_4:                               ; %.preheader3
                                        ; =>This Inner Loop Header: Depth=1
	sbc	hl, hl
	adc	hl, de
	jr	z, .LBB19_6
; %bb.5:                                ;   in Loop: Header=BB19_4 Depth=1
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
	jr	.LBB19_4
	.local	.LBB19_6
.LBB19_6:
	ld	de, 0
	.local	.LBB19_7
.LBB19_7:                               ; %.preheader
                                        ; =>This Inner Loop Header: Depth=1
	push	de
	pop	hl
	or	a, a
	sbc	hl, bc
	jr	z, .LBB19_9
; %bb.8:                                ;   in Loop: Header=BB19_7 Depth=1
	ld	hl, _perm
	add	hl, de
	ld	a, (hl)
	add	hl, bc
	ld	(hl), a
	inc	de
	jr	.LBB19_7
	.local	.LBB19_9
.LBB19_9:
	pop	hl
	pop	ix
	ret
	.local	.Lfunc_end19
.Lfunc_end19:
	.size	__Z10perlinInitj, .Lfunc_end19-__Z10perlinInitj
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
	.local	.Lfunc_end20
.Lfunc_end20:
	.size	__Z4fadei, .Lfunc_end20-__Z4fadei
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
	.local	.Lfunc_end21
.Lfunc_end21:
	.size	__Z4lerpiii, .Lfunc_end21-__Z4lerpiii
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
	ld	hl, JTI22_0
	add	hl, bc
	add	hl, bc
	add	hl, bc
	ld	hl, (hl)
	jp	(hl)
	.local	.LBB22_1
.LBB22_1:
	add	iy, de
	.local	.LBB22_2
.LBB22_2:
	lea	de, iy + 0
	jr	.LBB22_11
	.local	.LBB22_3
.LBB22_3:
	lea	hl, iy + 0
	jr	.LBB22_5
	.local	.LBB22_4
.LBB22_4:
	ex	de, hl
	lea	de, iy + 0
	.local	.LBB22_5
.LBB22_5:
	or	a, a
	sbc	hl, de
	jr	.LBB22_10
	.local	.LBB22_6
.LBB22_6:
	lea	hl, iy + 0
	jr	.LBB22_9
	.local	.LBB22_7
.LBB22_7:
	ex	de, hl
	lea	de, iy + 0
	add	hl, de
	jr	.LBB22_9
	.local	.LBB22_8
.LBB22_8:
	ex	de, hl
	.local	.LBB22_9
.LBB22_9:
	call	__ineg
	.local	.LBB22_10
.LBB22_10:
	ex	de, hl
	.local	.LBB22_11
.LBB22_11:
	ex	de, hl
	pop	ix
	ret
	.local	.Lfunc_end22
.Lfunc_end22:
	.size	__Z4gradhii, .Lfunc_end22-__Z4gradhii
	.section	.rodata.__Z4gradhii,"a",@progbits
JTI22_0:
	d24	.LBB22_1
	d24	.LBB22_4
	d24	.LBB22_3
	d24	.LBB22_7
	d24	.LBB22_11
	d24	.LBB22_8
	d24	.LBB22_2
	d24	.LBB22_6
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
	.local	.Lfunc_end23
.Lfunc_end23:
	.size	__Z8perlin2djj, .Lfunc_end23-__Z8perlin2djj
                                        ; -- End function
	.section	.text.__Z11hashTerrainjjjN7tinystl13unordered_mapIjhNS_9allocatorEEE,"ax",@progbits
	.globl	__Z11hashTerrainjjjN7tinystl13unordered_mapIjhNS_9allocatorEEE ; -- Begin function _Z11hashTerrainjjjN7tinystl13unordered_mapIjhNS_9allocatorEEE
	.type	__Z11hashTerrainjjjN7tinystl13unordered_mapIjhNS_9allocatorEEE,@function
__Z11hashTerrainjjjN7tinystl13unordered_mapIjhNS_9allocatorEEE: ; @_Z11hashTerrainjjjN7tinystl13unordered_mapIjhNS_9allocatorEEE
; %bb.0:
	ld	hl, -3
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
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	l, (hl)
	ld	a, l
	or	a, a
	jr	nz, .LBB24_4
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
	jr	c, .LBB24_3
; %bb.2:
	ld	l, 0
	jr	.LBB24_4
	.local	.LBB24_3
.LBB24_3:
	ld	l, 28
	.local	.LBB24_4
.LBB24_4:
	ld	a, l
	pop	hl
	pop	ix
	ret
	.local	.Lfunc_end24
.Lfunc_end24:
	.size	__Z11hashTerrainjjjN7tinystl13unordered_mapIjhNS_9allocatorEEE, .Lfunc_end24-__Z11hashTerrainjjjN7tinystl13unordered_mapIjhNS_9allocatorEEE
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
	.local	.Lfunc_end25
.Lfunc_end25:
	.size	__Z15create_randSeedv, .Lfunc_end25-__Z15create_randSeedv
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
	ld	hl, _.str.10
	push	hl
	call	_gfx_PrintStringXY
	pop	hl
	pop	hl
	pop	hl
	call	_gfx_SwapDraw
	ld	hl, _.str.2.12
	push	hl
	ld	hl, _.str.1.11
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
	ld	bc, _.str.1.11
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
	ld	hl, _.str.2.12
	push	hl
	ld	hl, _.str.1.11
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
	.section	.text.__Z4tickRN7tinystl13unordered_mapIjhNS_9allocatorEEES3_jj,"ax",@progbits
	.globl	__Z4tickRN7tinystl13unordered_mapIjhNS_9allocatorEEES3_jj ; -- Begin function _Z4tickRN7tinystl13unordered_mapIjhNS_9allocatorEEES3_jj
	.type	__Z4tickRN7tinystl13unordered_mapIjhNS_9allocatorEEES3_jj,@function
__Z4tickRN7tinystl13unordered_mapIjhNS_9allocatorEEES3_jj: ; @_Z4tickRN7tinystl13unordered_mapIjhNS_9allocatorEEES3_jj
; %bb.0:
	ld	hl, -74
	call	__frameset
	ld	hl, (ix + 12)
	ld	bc, 3108411
	ld	a, 1
	ld	(ix - 44), a
	lea	de, ix - 3
	ld	(ix - 32), de
	lea	de, ix - 6
	ld	(ix - 38), de
	lea	de, ix - 9
	ld	(ix - 50), de
	lea	de, ix - 12
	ld	(ix - 56), de
	lea	de, ix - 15
	ld	(ix - 53), de
	lea	de, ix - 18
	ld	(ix - 59), de
	lea	de, ix - 29
	ld	(ix - 41), de
	call	__imulu
	push	hl
	pop	iy
	ld	hl, (ix + 15)
	ld	bc, 2610411
	call	__imulu
	ex	de, hl
	add	iy, de
	ld	(ix - 47), iy
	.local	.LBB28_1
.LBB28_1:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB28_2 Depth 2
                                        ;       Child Loop BB28_71 Depth 3
                                        ;         Child Loop BB28_73 Depth 4
	ld	iy, (ix + 6)
	.local	.LBB28_2
.LBB28_2:                               ;   Parent Loop BB28_1 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB28_71 Depth 3
                                        ;         Child Loop BB28_73 Depth 4
	ld	hl, (iy)
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jp	z, .LBB28_92
; %bb.3:                                ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (iy + 3)
	ld	hl, (hl)
	ld	(ix - 35), hl
	ld	hl, (hl)
	ld	(ix - 3), hl
	ld	hl, (ix - 32)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	pea	ix - 22
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE4findERKj
	pop	hl
	pop	hl
	pop	hl
	ld	hl, (ix - 22)
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jp	z, .LBB28_91
; %bb.4:                                ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 32)
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
	ld	iy, (ix - 35)
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
	jp	z, .LBB28_79
; %bb.5:                                ;   in Loop: Header=BB28_2 Depth=2
	ld	a, d
	or	a, a
	jp	z, .LBB28_79
; %bb.6:                                ;   in Loop: Header=BB28_2 Depth=2
	ld	(ix - 62), d                    ; 1-byte Folded Spill
	dec	e
	ld	a, e
	cp	a, 4
	ld	iy, (ix + 6)
	jp	nc, .LBB28_70
; %bb.7:                                ;   in Loop: Header=BB28_2 Depth=2
	ld	bc, 0
	ld	c, e
	ld	hl, JTI28_0
	add	hl, bc
	add	hl, bc
	add	hl, bc
	ld	hl, (hl)
	ld	de, (ix - 32)
	jp	(hl)
	.local	.LBB28_8
.LBB28_8:                               ;   in Loop: Header=BB28_2 Depth=2
	push	de
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 9
	jr	nz, .LBB28_10
; %bb.9:                                ;   in Loop: Header=BB28_2 Depth=2
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
	.local	.LBB28_10
.LBB28_10:                              ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 32)
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
	jp	.LBB28_69
	.local	.LBB28_11
.LBB28_11:                              ;   in Loop: Header=BB28_2 Depth=2
	ld	b, (ix - 62)                    ; 1-byte Folded Reload
	ld	a, b
	cp	a, 6
	jp	nc, .LBB28_19
; %bb.12:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	a, 1
	call	__bshl
	ld	l, 42
	and	a, l
	ld	l, a
	or	a, a
	jp	z, .LBB28_19
; %bb.13:                               ;   in Loop: Header=BB28_2 Depth=2
	inc	b
	ld	(ix - 62), b
	push	de
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (ix - 62)
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
	ld	hl, (ix - 32)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	pea	ix - 22
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE4findERKj
	ld	de, (ix - 32)
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix - 22)
	ld	a, (iy + 3)
	ld	(ix - 62), a
	jp	.LBB28_19
	.local	.LBB28_14
.LBB28_14:                              ;   in Loop: Header=BB28_2 Depth=2
	ld	b, (ix - 62)                    ; 1-byte Folded Reload
	ld	a, b
	cp	a, 7
	jp	nc, .LBB28_17
; %bb.15:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	a, 1
	call	__bshl
	ld	l, 84
	and	a, l
	ld	l, a
	or	a, a
	jp	z, .LBB28_17
; %bb.16:                               ;   in Loop: Header=BB28_2 Depth=2
	dec	b
	ld	(ix - 62), b
	push	de
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (ix - 62)
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
	ld	hl, (ix - 32)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	pea	ix - 22
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE4findERKj
	ld	de, (ix - 32)
	pop	hl
	pop	hl
	pop	hl
	ld	iy, (ix - 22)
	ld	a, (iy + 3)
	ld	(ix - 62), a
	ld	iy, (ix + 6)
	.local	.LBB28_17
.LBB28_17:                              ;   in Loop: Header=BB28_2 Depth=2
	ld	a, (ix - 62)                    ; 1-byte Folded Reload
	cp	a, 9
	jr	nz, .LBB28_19
; %bb.18:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 50)
	push	hl
	push	iy
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	(hl), 3
	ld	hl, (ix - 56)
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
	ld	hl, (ix - 59)
	push	hl
	ld	hl, (ix + 6)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	de, (ix - 32)
	ld	(hl), 3
	ld	a, 9
	ld	(ix - 62), a                    ; 1-byte Folded Spill
	jp	.LBB28_63
	.local	.LBB28_19
.LBB28_19:                              ;   in Loop: Header=BB28_2 Depth=2
	ld	b, (ix - 62)                    ; 1-byte Folded Reload
	ld	a, b
	cp	a, 7
	jp	nc, .LBB28_63
; %bb.20:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	e, 1
	ld	a, e
	call	__bshl
	ld	l, 42
	and	a, l
	ld	l, a
	or	a, a
	jp	z, .LBB28_35
; %bb.21:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 50)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 1
	jr	z, .LBB28_27
; %bb.22:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 50)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 3
	jr	z, .LBB28_27
; %bb.23:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 50)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 5
	jr	z, .LBB28_27
; %bb.24:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 56)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 1
	jr	z, .LBB28_27
; %bb.25:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 56)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 3
	jr	z, .LBB28_27
; %bb.26:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 56)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 5
	jp	nz, .LBB28_36
	.local	.LBB28_27
.LBB28_27:                              ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 53)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 1
	ld	a, 1
	ld	e, a
	ld	hl, (ix + 9)
	jp	z, .LBB28_44
; %bb.28:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	de, (ix - 53)
	push	de
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	ld	hl, (ix + 9)
	cp	a, 3
	ld	a, 1
	ld	e, a
	jp	z, .LBB28_44
; %bb.29:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	de, (ix - 53)
	push	de
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	ld	hl, (ix + 9)
	cp	a, 5
	ld	a, 1
	ld	e, a
	jp	z, .LBB28_44
; %bb.30:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	de, (ix - 59)
	push	de
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	ld	hl, (ix + 9)
	cp	a, 1
	ld	a, 1
	ld	e, a
	jp	z, .LBB28_44
; %bb.31:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	de, (ix - 59)
	push	de
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	ld	hl, (ix + 9)
	cp	a, 3
	ld	a, 1
	ld	e, a
	jp	z, .LBB28_44
; %bb.32:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	de, (ix - 59)
	push	de
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 5
	ld	e, 1
	jr	z, .LBB28_34
; %bb.33:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	a, 3
	ld	e, a
	.local	.LBB28_34
.LBB28_34:                              ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix + 9)
	jp	.LBB28_44
	.local	.LBB28_35
.LBB28_35:                              ;   in Loop: Header=BB28_2 Depth=2
	ld	a, e
	call	__bshl
	ld	l, 84
	and	a, l
	ld	l, a
	or	a, a
	jp	nz, .LBB28_46
	jp	.LBB28_80
	.local	.LBB28_36
.LBB28_36:                              ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 53)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 1
	ld	a, 5
	ld	e, a
	ld	hl, (ix + 9)
	jr	z, .LBB28_44
; %bb.37:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	de, (ix - 53)
	push	de
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	ld	hl, (ix + 9)
	cp	a, 3
	ld	a, 5
	ld	e, a
	jr	z, .LBB28_44
; %bb.38:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	de, (ix - 53)
	push	de
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	ld	hl, (ix + 9)
	cp	a, 5
	ld	a, 5
	ld	e, a
	jr	z, .LBB28_44
; %bb.39:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	de, (ix - 59)
	push	de
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	ld	hl, (ix + 9)
	cp	a, 1
	ld	a, 5
	ld	e, a
	jr	z, .LBB28_44
; %bb.40:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	de, (ix - 59)
	push	de
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	ld	hl, (ix + 9)
	cp	a, 3
	ld	a, 5
	ld	e, a
	jr	z, .LBB28_44
; %bb.41:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	de, (ix - 59)
	push	de
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 5
	ld	a, 5
	jr	z, .LBB28_43
; %bb.42:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	a, 1
	.local	.LBB28_43
.LBB28_43:                              ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix + 9)
	ld	e, a
	.local	.LBB28_44
.LBB28_44:                              ;   in Loop: Header=BB28_2 Depth=2
	ld	(ix - 65), e
	ld	de, (ix - 32)
	push	de
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (ix - 65)
	ld	(hl), a
	ld	a, (ix - 62)                    ; 1-byte Folded Reload
	cp	a, 2
	jr	z, .LBB28_46
; %bb.45:                               ;   in Loop: Header=BB28_2 Depth=2
	cp	a, 4
	jp	nz, .LBB28_80
	.local	.LBB28_46
.LBB28_46:                              ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 50)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 2
	jp	z, .LBB28_54
; %bb.47:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 50)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 4
	jr	z, .LBB28_54
; %bb.48:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 50)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 6
	jr	z, .LBB28_54
; %bb.49:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 50)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 9
	jr	z, .LBB28_54
; %bb.50:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 56)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 2
	jr	z, .LBB28_54
; %bb.51:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 56)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 4
	jr	z, .LBB28_54
; %bb.52:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 56)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 6
	jr	z, .LBB28_54
; %bb.53:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 56)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 9
	jp	nz, .LBB28_81
	.local	.LBB28_54
.LBB28_54:                              ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 53)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 2
	jp	z, .LBB28_62
; %bb.55:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 53)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 4
	jr	z, .LBB28_62
; %bb.56:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 53)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 6
	jr	z, .LBB28_62
; %bb.57:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 53)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 9
	jr	z, .LBB28_62
; %bb.58:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 59)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 2
	jr	z, .LBB28_62
; %bb.59:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 59)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 4
	jr	z, .LBB28_62
; %bb.60:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 59)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 6
	jr	z, .LBB28_62
; %bb.61:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 59)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 9
	jp	nz, .LBB28_90
	.local	.LBB28_62
.LBB28_62:                              ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 32)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	de, (ix - 32)
	ld	(hl), 2
	.local	.LBB28_63
.LBB28_63:                              ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix + 9)
	.local	.LBB28_64
.LBB28_64:                              ;   in Loop: Header=BB28_2 Depth=2
	push	de
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	ld	l, (ix - 62)
	cp	a, l
	ld	de, (ix + 6)
	jr	nz, .LBB28_66
; %bb.65:                               ;   in Loop: Header=BB28_2 Depth=2
	bit	0, (ix - 44)                    ; 1-byte Folded Reload
	jp	z, .LBB28_70
	.local	.LBB28_66
.LBB28_66:                              ;   in Loop: Header=BB28_2 Depth=2
	ld	a, (ix - 62)                    ; 1-byte Folded Reload
	cp	a, 9
	jr	nz, .LBB28_68
; %bb.67:                               ;   in Loop: Header=BB28_2 Depth=2
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
	.local	.LBB28_68
.LBB28_68:                              ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 9)
	ld	(ix - 22), hl
	ld	(ix - 19), 1
	pea	ix - 22
	push	de
	.local	.LBB28_69
.LBB28_69:                              ; %.preheader
                                        ;   in Loop: Header=BB28_2 Depth=2
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
	.local	.LBB28_70
.LBB28_70:                              ; %.preheader
                                        ;   in Loop: Header=BB28_2 Depth=2
	ld	iy, (ix - 47)
	ld	bc, 0
	.local	.LBB28_71
.LBB28_71:                              ;   Parent Loop BB28_1 Depth=1
                                        ;     Parent Loop BB28_2 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB28_73 Depth 4
	push	bc
	pop	hl
	ld	de, 20
	or	a, a
	sbc	hl, de
	jp	z, .LBB28_78
; %bb.72:                               ;   in Loop: Header=BB28_71 Depth=3
	push	bc
	pop	hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	(ix - 68), hl
	ld	hl, 14
	ex	de, hl
	xor	a, a
	ld	l, a
	ld	(ix - 62), hl
	ld	(ix - 44), iy
	.local	.LBB28_73
.LBB28_73:                              ;   Parent Loop BB28_1 Depth=1
                                        ;     Parent Loop BB28_2 Depth=2
                                        ;       Parent Loop BB28_71 Depth=3
                                        ; =>      This Inner Loop Header: Depth=4
	sbc	hl, hl
	adc	hl, de
	jr	z, .LBB28_77
; %bb.74:                               ;   in Loop: Header=BB28_73 Depth=4
	ld	(ix - 65), de
	ld	de, (ix - 3)
	ld	hl, (ix - 44)
	or	a, a
	sbc	hl, de
	jr	nz, .LBB28_76
; %bb.75:                               ;   in Loop: Header=BB28_73 Depth=4
	ld	hl, (ix - 32)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	ld	(ix - 71), iy
	ld	(ix - 74), bc
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
	ld	de, (ix - 62)
	push	de
	ld	de, (ix - 68)
	push	de
	push	hl
	call	_gfx_Sprite_NoClip
	ld	bc, (ix - 74)
	ld	iy, (ix - 71)
	pop	hl
	pop	hl
	pop	hl
	.local	.LBB28_76
.LBB28_76:                              ;   in Loop: Header=BB28_73 Depth=4
	ld	de, 2610411
	ld	hl, (ix - 44)
	add	hl, de
	ld	(ix - 44), hl
	ld	l, 16
	ld	de, (ix - 62)
	ld	a, e
	add	a, l
	ld	e, a
	ld	(ix - 62), de
	ld	de, (ix - 65)
	dec	de
	jr	.LBB28_73
	.local	.LBB28_77
.LBB28_77:                              ;   in Loop: Header=BB28_71 Depth=3
	inc	bc
	ld	de, 3108411
	add	iy, de
	jp	.LBB28_71
	.local	.LBB28_78
.LBB28_78:                              ;   in Loop: Header=BB28_2 Depth=2
	xor	a, a
	ld	(ix - 44), a                    ; 1-byte Folded Spill
	.local	.LBB28_79
.LBB28_79:                              ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 35)
	ld	(ix - 29), hl
	push	hl
	ld	iy, 0
	add	iy, sp
	ld	hl, (ix - 41)
	ld	a, (hl)
	ld	(iy), a
	ld	a, (ix - 28)
	ld	(iy + 1), a
	ld	a, (ix - 27)
	ld	(iy + 2), a
	ld	hl, (ix + 6)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE5eraseENS_23unordered_hash_iteratorIKNS_19unordered_hash_nodeIjhEEEE
	ld	iy, (ix + 6)
	pop	hl
	pop	hl
	jp	.LBB28_2
	.local	.LBB28_80
.LBB28_80:                              ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix + 9)
	ld	de, (ix - 32)
	jp	.LBB28_64
	.local	.LBB28_81
.LBB28_81:                              ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 53)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 2
	jp	z, .LBB28_89
; %bb.82:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 53)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 4
	jr	z, .LBB28_89
; %bb.83:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 53)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 6
	jr	z, .LBB28_89
; %bb.84:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 53)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 9
	jr	z, .LBB28_89
; %bb.85:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 59)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 2
	jr	z, .LBB28_89
; %bb.86:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 59)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 4
	jr	z, .LBB28_89
; %bb.87:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 59)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 6
	jr	z, .LBB28_89
; %bb.88:                               ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 59)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	a, (hl)
	cp	a, 9
	jp	nz, .LBB28_62
	.local	.LBB28_89
.LBB28_89:                              ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 32)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	de, (ix - 32)
	ld	(hl), 6
	jp	.LBB28_63
	.local	.LBB28_90
.LBB28_90:                              ;   in Loop: Header=BB28_2 Depth=2
	ld	hl, (ix - 32)
	push	hl
	ld	hl, (ix + 9)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEEixERKj
	pop	de
	pop	de
	ld	de, (ix - 32)
	ld	(hl), 4
	jp	.LBB28_63
	.local	.LBB28_91
.LBB28_91:                              ;   in Loop: Header=BB28_1 Depth=1
	ld	hl, (ix - 35)
	ld	(ix - 6), hl
	push	hl
	ld	iy, 0
	add	iy, sp
	ld	hl, (ix - 38)
	ld	a, (hl)
	ld	(iy), a
	ld	a, (ix - 5)
	ld	(iy + 1), a
	ld	a, (ix - 4)
	ld	(iy + 2), a
	ld	hl, (ix + 6)
	push	hl
	call	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE5eraseENS_23unordered_hash_iteratorIKNS_19unordered_hash_nodeIjhEEEE
	pop	hl
	pop	hl
	jp	.LBB28_1
	.local	.LBB28_92
.LBB28_92:
	push	iy
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
	ld	sp, ix
	pop	ix
	ret
	.local	.Lfunc_end28
.Lfunc_end28:
	.size	__Z4tickRN7tinystl13unordered_mapIjhNS_9allocatorEEES3_jj, .Lfunc_end28-__Z4tickRN7tinystl13unordered_mapIjhNS_9allocatorEEES3_jj
	.section	.rodata.__Z4tickRN7tinystl13unordered_mapIjhNS_9allocatorEEES3_jj,"a",@progbits
JTI28_0:
	d24	.LBB28_19
	d24	.LBB28_8
	d24	.LBB28_11
	d24	.LBB28_14
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
	.local	.LBB29_1
.LBB29_1:                               ; =>This Inner Loop Header: Depth=1
	ld	hl, (iy)
	ld	bc, (ix + 9)
	or	a, a
	sbc	hl, bc
	jr	nz, .LBB29_3
; %bb.2:                                ;   in Loop: Header=BB29_1 Depth=1
	ld	hl, (ix - 3)
	ld	(iy), hl
	dec	de
	lea	iy, iy - 3
	sbc	hl, hl
	adc	hl, de
	jr	nz, .LBB29_1
	.local	.LBB29_3
.LBB29_3:
	ld	iy, (ix + 9)
	ld	de, (iy + 7)
	sbc	hl, hl
	adc	hl, de
	jr	z, .LBB29_5
; %bb.4:
	ld	hl, (iy + 4)
	lea	bc, iy + 0
	push	de
	pop	iy
	ld	(iy + 4), hl
	push	bc
	pop	iy
	.local	.LBB29_5
.LBB29_5:
	ld	hl, (ix - 3)
	push	hl
	pop	bc
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jr	z, .LBB29_7
; %bb.6:
	lea	hl, iy + 0
	push	bc
	pop	iy
	ld	(iy + 7), de
	push	hl
	pop	iy
	.local	.LBB29_7
.LBB29_7:
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
	.local	.Lfunc_end29
.Lfunc_end29:
	.size	__ZN7tinystl13unordered_mapIjhNS_9allocatorEE5eraseENS_23unordered_hash_iteratorIKNS_19unordered_hash_nodeIjhEEEE, .Lfunc_end29-__ZN7tinystl13unordered_mapIjhNS_9allocatorEE5eraseENS_23unordered_hash_iteratorIKNS_19unordered_hash_nodeIjhEEEE
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

	.section	.data._game8,"aw",@progbits
	.balign	1
	.globl	_game8
_game8:
	.ascii	"\000\000\377\377\t|Pw\000<\000`V\222\333\222"

	.section	.rodata._.str.1,"a",@progbits
	.balign	1
	.local	_.str.1
_.str.1:
	.asciz	"Tasks:"

	.section	.rodata._.str.1.2,"a",@progbits
	.balign	1
	.local	_.str.1.2
_.str.1.2:
	.asciz	"x:"

	.section	.rodata._.str.2,"a",@progbits
	.balign	1
	.local	_.str.2
_.str.2:
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

	.section	.rodata._.str.10,"a",@progbits
	.balign	1
	.local	_.str.10
_.str.10:
	.asciz	"Saving"

	.section	.rodata._.str.1.11,"a",@progbits
	.balign	1
	.local	_.str.1.11
_.str.1.11:
	.asciz	"PGSV"

	.section	.rodata._.str.2.12,"a",@progbits
	.balign	1
	.local	_.str.2.12
_.str.2.12:
	.asciz	"w+"

	.section	.rodata._.str.3,"a",@progbits
	.balign	1
	.local	_.str.3
_.str.3:
	.asciz	"r+"

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
	.extern	_gfx_SetColor
	.extern	__ior
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
	.extern	_gfx_Begin
	.extern	__Znwj
	.extern	_gfx_AllocSprite
	.extern	__bdivu
	.extern	_gfx_SetTransparentColor
	.extern	_msleep
	.extern	_gfx_SetTextBGColor
	.extern	_gfx_SwapDraw
	.extern	_llvm.eh.sjlj.lsda
	.extern	__sshru
	.extern	_free
	.extern	_gfx_Sprite_NoClip
	.extern	__frameset
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
