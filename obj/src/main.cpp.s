	.section	.text,"ax",@progbits
	.assume	ADL = 1
	.file	"main.cpp"
	.file	0 "C:\\Users\\Tri-America\\Downloads\\proceduallygeneratednoise" "src\\main.cpp" md5 0x134aa79fa7c7627803d07ebc6bab7623
	.section	.text._main,"ax",@progbits
	.globl	_main                           ; -- Begin function main
	.type	_main,@function
_main:                                  ; @main
	.local	.Lfunc_begin0
.Lfunc_begin0:
	.file	1 "src" "main.cpp" md5 0x134aa79fa7c7627803d07ebc6bab7623
	.loc	1 10 0                          ; src/main.cpp:10:0
; %bb.0:
	push	ix
	ld	ix, 0
	add	ix, sp
	ld	hl, -3
	add	hl, sp
	ld	sp, hl
	or	a, a
	sbc	hl, hl
	ld	a, 1
	ld	(ix - 3), hl
	.local	.Ltmp0
.Ltmp0:
	.loc	1 11 2 prologue_end             ; src/main.cpp:11:2
	jr	.LBB0_1
	.local	.LBB0_1
.LBB0_1:
	.local	.Ltmp1
.Ltmp1:
	.loc	1 11 2 is_stmt 0                ; src/main.cpp:11:2
	ld	(-196608), a
	jr	.LBB0_2
	.local	.Ltmp2
.Ltmp2:
	.local	.LBB0_2
.LBB0_2:
	.loc	1 13 2 is_stmt 1                ; src/main.cpp:13:2
	call	_gfx_Begin
	.loc	1 15 2                          ; src/main.cpp:15:2
	call	__Z4initv
	.loc	1 18 2                          ; src/main.cpp:18:2
	call	_gfx_End
	.loc	1 19 2                          ; src/main.cpp:19:2
	or	a, a
	sbc	hl, hl
	.loc	1 19 2 epilogue_begin is_stmt 0 ; src/main.cpp:19:2
	ld	iy, 3
	add	iy, sp
	ld	sp, iy
	pop	ix
	ret
	.local	.Ltmp3
.Ltmp3:
	.local	.Lfunc_end0
.Lfunc_end0:
	.size	_main, .Lfunc_end0-_main
                                        ; -- End function
	.file	2 "C:/Users/Tri-America/Downloads/CEdev-Windows/CEdev/include" "stdlib.h" md5 0x1636150832b099e531633aad58811a5c
	.file	3 "C:/Users/Tri-America/Downloads/CEdev-Windows/CEdev/include" "cdefs.h" md5 0x92b312c97bd288bd6cb0aaf07831d444
	.file	4 "C:/Users/Tri-America/Downloads/CEdev-Windows/CEdev/include/c++" "stdlib.h"
	.file	5 "C:/Users/Tri-America/Downloads/CEdev-Windows/CEdev/include/c++" "stdio.h"
	.file	6 "C:/Users/Tri-America/Downloads/CEdev-Windows/CEdev/include" "stdio.h" md5 0x96562836dcbfc66b4a84a20fe7a33353
	.file	7 "C:/Users/Tri-America/Downloads/CEdev-Windows/CEdev/include" "stdarg.h" md5 0xaf45f50c70ec4092788c6c0cd773ba68
	.section	.debug_abbrev,"",@progbits
	.local	.Labbrev_start0
.Labbrev_start0:
	db	1                               ; Abbreviation Code
	db	17                              ; DW_TAG_compile_unit
	db	1                               ; DW_CHILDREN_yes
	db	37                              ; DW_AT_producer
	db	37                              ; DW_FORM_strx1
	db	19                              ; DW_AT_language
	db	5                               ; DW_FORM_data2
	db	3                               ; DW_AT_name
	db	37                              ; DW_FORM_strx1
	db	114                             ; DW_AT_str_offsets_base
	db	23                              ; DW_FORM_sec_offset
	db	16                              ; DW_AT_stmt_list
	db	23                              ; DW_FORM_sec_offset
	db	27                              ; DW_AT_comp_dir
	db	37                              ; DW_FORM_strx1
	db	17                              ; DW_AT_low_pc
	db	27                              ; DW_FORM_addrx
	db	18                              ; DW_AT_high_pc
	db	6                               ; DW_FORM_data4
	db	115                             ; DW_AT_addr_base
	db	23                              ; DW_FORM_sec_offset
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	2                               ; Abbreviation Code
	db	15                              ; DW_TAG_pointer_type
	db	0                               ; DW_CHILDREN_no
	db	73                              ; DW_AT_type
	db	19                              ; DW_FORM_ref4
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	3                               ; Abbreviation Code
	db	53                              ; DW_TAG_volatile_type
	db	0                               ; DW_CHILDREN_no
	db	73                              ; DW_AT_type
	db	19                              ; DW_FORM_ref4
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	4                               ; Abbreviation Code
	db	36                              ; DW_TAG_base_type
	db	0                               ; DW_CHILDREN_no
	db	3                               ; DW_AT_name
	db	37                              ; DW_FORM_strx1
	db	62                              ; DW_AT_encoding
	db	11                              ; DW_FORM_data1
	db	11                              ; DW_AT_byte_size
	db	11                              ; DW_FORM_data1
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	5                               ; Abbreviation Code
	db	46                              ; DW_TAG_subprogram
	db	0                               ; DW_CHILDREN_no
	db	17                              ; DW_AT_low_pc
	db	27                              ; DW_FORM_addrx
	db	18                              ; DW_AT_high_pc
	db	6                               ; DW_FORM_data4
	db	64                              ; DW_AT_frame_base
	db	24                              ; DW_FORM_exprloc
	db	3                               ; DW_AT_name
	db	37                              ; DW_FORM_strx1
	db	58                              ; DW_AT_decl_file
	db	11                              ; DW_FORM_data1
	db	59                              ; DW_AT_decl_line
	db	11                              ; DW_FORM_data1
	db	73                              ; DW_AT_type
	db	19                              ; DW_FORM_ref4
	db	63                              ; DW_AT_external
	db	25                              ; DW_FORM_flag_present
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	6                               ; Abbreviation Code
	db	57                              ; DW_TAG_namespace
	db	1                               ; DW_CHILDREN_yes
	db	3                               ; DW_AT_name
	db	37                              ; DW_FORM_strx1
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	7                               ; Abbreviation Code
	db	8                               ; DW_TAG_imported_declaration
	db	0                               ; DW_CHILDREN_no
	db	58                              ; DW_AT_decl_file
	db	11                              ; DW_FORM_data1
	db	59                              ; DW_AT_decl_line
	db	11                              ; DW_FORM_data1
	db	24                              ; DW_AT_import
	db	19                              ; DW_FORM_ref4
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	8                               ; Abbreviation Code
	db	46                              ; DW_TAG_subprogram
	db	1                               ; DW_CHILDREN_yes
	db	3                               ; DW_AT_name
	db	37                              ; DW_FORM_strx1
	db	58                              ; DW_AT_decl_file
	db	11                              ; DW_FORM_data1
	db	59                              ; DW_AT_decl_line
	db	11                              ; DW_FORM_data1
	db	73                              ; DW_AT_type
	db	19                              ; DW_FORM_ref4
	db	60                              ; DW_AT_declaration
	db	25                              ; DW_FORM_flag_present
	db	63                              ; DW_AT_external
	db	25                              ; DW_FORM_flag_present
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	9                               ; Abbreviation Code
	db	5                               ; DW_TAG_formal_parameter
	db	0                               ; DW_CHILDREN_no
	db	73                              ; DW_AT_type
	db	19                              ; DW_FORM_ref4
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	10                              ; Abbreviation Code
	db	15                              ; DW_TAG_pointer_type
	db	0                               ; DW_CHILDREN_no
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	11                              ; Abbreviation Code
	db	22                              ; DW_TAG_typedef
	db	0                               ; DW_CHILDREN_no
	db	73                              ; DW_AT_type
	db	19                              ; DW_FORM_ref4
	db	3                               ; DW_AT_name
	db	37                              ; DW_FORM_strx1
	db	58                              ; DW_AT_decl_file
	db	11                              ; DW_FORM_data1
	db	59                              ; DW_AT_decl_line
	db	11                              ; DW_FORM_data1
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	12                              ; Abbreviation Code
	db	46                              ; DW_TAG_subprogram
	db	1                               ; DW_CHILDREN_yes
	db	3                               ; DW_AT_name
	db	37                              ; DW_FORM_strx1
	db	58                              ; DW_AT_decl_file
	db	11                              ; DW_FORM_data1
	db	59                              ; DW_AT_decl_line
	db	11                              ; DW_FORM_data1
	db	60                              ; DW_AT_declaration
	db	25                              ; DW_FORM_flag_present
	db	63                              ; DW_AT_external
	db	25                              ; DW_FORM_flag_present
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	13                              ; Abbreviation Code
	db	38                              ; DW_TAG_const_type
	db	0                               ; DW_CHILDREN_no
	db	73                              ; DW_AT_type
	db	19                              ; DW_FORM_ref4
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	14                              ; Abbreviation Code
	db	55                              ; DW_TAG_restrict_type
	db	0                               ; DW_CHILDREN_no
	db	73                              ; DW_AT_type
	db	19                              ; DW_FORM_ref4
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	15                              ; Abbreviation Code
	db	46                              ; DW_TAG_subprogram
	db	0                               ; DW_CHILDREN_no
	db	3                               ; DW_AT_name
	db	37                              ; DW_FORM_strx1
	db	58                              ; DW_AT_decl_file
	db	11                              ; DW_FORM_data1
	db	59                              ; DW_AT_decl_line
	db	11                              ; DW_FORM_data1
	db	73                              ; DW_AT_type
	db	19                              ; DW_FORM_ref4
	db	60                              ; DW_AT_declaration
	db	25                              ; DW_FORM_flag_present
	db	63                              ; DW_AT_external
	db	25                              ; DW_FORM_flag_present
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	16                              ; Abbreviation Code
	db	38                              ; DW_TAG_const_type
	db	0                               ; DW_CHILDREN_no
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	17                              ; Abbreviation Code
	db	21                              ; DW_TAG_subroutine_type
	db	1                               ; DW_CHILDREN_yes
	db	73                              ; DW_AT_type
	db	19                              ; DW_FORM_ref4
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	18                              ; Abbreviation Code
	db	46                              ; DW_TAG_subprogram
	db	0                               ; DW_CHILDREN_no
	db	3                               ; DW_AT_name
	db	37                              ; DW_FORM_strx1
	db	58                              ; DW_AT_decl_file
	db	11                              ; DW_FORM_data1
	db	59                              ; DW_AT_decl_line
	db	11                              ; DW_FORM_data1
	db	60                              ; DW_AT_declaration
	db	25                              ; DW_FORM_flag_present
	db	63                              ; DW_AT_external
	db	25                              ; DW_FORM_flag_present
	.ascii	"\207\001"                      ; DW_AT_noreturn
	db	25                              ; DW_FORM_flag_present
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	19                              ; Abbreviation Code
	db	21                              ; DW_TAG_subroutine_type
	db	0                               ; DW_CHILDREN_no
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	20                              ; Abbreviation Code
	db	21                              ; DW_TAG_subroutine_type
	db	1                               ; DW_CHILDREN_yes
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	21                              ; Abbreviation Code
	db	46                              ; DW_TAG_subprogram
	db	1                               ; DW_CHILDREN_yes
	db	3                               ; DW_AT_name
	db	37                              ; DW_FORM_strx1
	db	58                              ; DW_AT_decl_file
	db	11                              ; DW_FORM_data1
	db	59                              ; DW_AT_decl_line
	db	11                              ; DW_FORM_data1
	db	60                              ; DW_AT_declaration
	db	25                              ; DW_FORM_flag_present
	db	63                              ; DW_AT_external
	db	25                              ; DW_FORM_flag_present
	.ascii	"\207\001"                      ; DW_AT_noreturn
	db	25                              ; DW_FORM_flag_present
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	22                              ; Abbreviation Code
	db	19                              ; DW_TAG_structure_type
	db	0                               ; DW_CHILDREN_no
	db	60                              ; DW_AT_declaration
	db	25                              ; DW_FORM_flag_present
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	23                              ; Abbreviation Code
	db	19                              ; DW_TAG_structure_type
	db	1                               ; DW_CHILDREN_yes
	db	54                              ; DW_AT_calling_convention
	db	11                              ; DW_FORM_data1
	db	11                              ; DW_AT_byte_size
	db	11                              ; DW_FORM_data1
	db	58                              ; DW_AT_decl_file
	db	11                              ; DW_FORM_data1
	db	59                              ; DW_AT_decl_line
	db	11                              ; DW_FORM_data1
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	24                              ; Abbreviation Code
	db	13                              ; DW_TAG_member
	db	0                               ; DW_CHILDREN_no
	db	3                               ; DW_AT_name
	db	37                              ; DW_FORM_strx1
	db	73                              ; DW_AT_type
	db	19                              ; DW_FORM_ref4
	db	58                              ; DW_AT_decl_file
	db	11                              ; DW_FORM_data1
	db	59                              ; DW_AT_decl_line
	db	11                              ; DW_FORM_data1
	db	56                              ; DW_AT_data_member_location
	db	11                              ; DW_FORM_data1
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	25                              ; Abbreviation Code
	db	24                              ; DW_TAG_unspecified_parameters
	db	0                               ; DW_CHILDREN_no
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	26                              ; Abbreviation Code
	db	22                              ; DW_TAG_typedef
	db	0                               ; DW_CHILDREN_no
	db	73                              ; DW_AT_type
	db	19                              ; DW_FORM_ref4
	db	3                               ; DW_AT_name
	db	37                              ; DW_FORM_strx1
	db	0                               ; EOM(1)
	db	0                               ; EOM(2)
	db	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
	.local	.Lcu_begin0
.Lcu_begin0:
	d32	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
	.local	.Ldebug_info_start0
.Ldebug_info_start0:
	dw	5                               ; DWARF version number
	db	1                               ; DWARF Unit Type
	db	3                               ; Address Size (in bytes)
	d32	.Labbrev_start0                 ; Offset Into Abbrev. Section
	db	1                               ; Abbrev [1] 0xc:0x834 DW_TAG_compile_unit
	db	0                               ; DW_AT_producer
	dw	33                              ; DW_AT_language
	db	1                               ; DW_AT_name
	d32	.Lstr_offsets_base0             ; DW_AT_str_offsets_base
	d32	.Lline_table_start0             ; DW_AT_stmt_list
	db	2                               ; DW_AT_comp_dir
	db	0                               ; DW_AT_low_pc
	d32	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	d32	.Laddr_table_base0              ; DW_AT_addr_base
	db	2                               ; Abbrev [2] 0x23:0x5 DW_TAG_pointer_type
	d32	40                              ; DW_AT_type
	db	3                               ; Abbrev [3] 0x28:0x5 DW_TAG_volatile_type
	d32	45                              ; DW_AT_type
	db	4                               ; Abbrev [4] 0x2d:0x4 DW_TAG_base_type
	db	3                               ; DW_AT_name
	db	8                               ; DW_AT_encoding
	db	1                               ; DW_AT_byte_size
	db	5                               ; Abbrev [5] 0x31:0xf DW_TAG_subprogram
	db	0                               ; DW_AT_low_pc
	d32	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	db	1                               ; DW_AT_frame_base
	db	84
	db	97                              ; DW_AT_name
	db	1                               ; DW_AT_decl_file
	db	10                              ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_external
	db	6                               ; Abbrev [6] 0x40:0x202 DW_TAG_namespace
	db	4                               ; DW_AT_name
	db	7                               ; Abbrev [7] 0x42:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	33                              ; DW_AT_decl_line
	d32	578                             ; DW_AT_import
	db	7                               ; Abbrev [7] 0x49:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	34                              ; DW_AT_decl_line
	d32	610                             ; DW_AT_import
	db	7                               ; Abbrev [7] 0x50:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	35                              ; DW_AT_decl_line
	d32	624                             ; DW_AT_import
	db	7                               ; Abbrev [7] 0x57:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	36                              ; DW_AT_decl_line
	d32	643                             ; DW_AT_import
	db	7                               ; Abbrev [7] 0x5e:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	38                              ; DW_AT_decl_line
	d32	653                             ; DW_AT_import
	db	7                               ; Abbrev [7] 0x65:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	39                              ; DW_AT_decl_line
	d32	685                             ; DW_AT_import
	db	7                               ; Abbrev [7] 0x6c:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	40                              ; DW_AT_decl_line
	d32	703                             ; DW_AT_import
	db	7                               ; Abbrev [7] 0x73:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	41                              ; DW_AT_decl_line
	d32	721                             ; DW_AT_import
	db	7                               ; Abbrev [7] 0x7a:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	42                              ; DW_AT_decl_line
	d32	739                             ; DW_AT_import
	db	7                               ; Abbrev [7] 0x81:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	43                              ; DW_AT_decl_line
	d32	782                             ; DW_AT_import
	db	7                               ; Abbrev [7] 0x88:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	44                              ; DW_AT_decl_line
	d32	801                             ; DW_AT_import
	db	7                               ; Abbrev [7] 0x8f:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	45                              ; DW_AT_decl_line
	d32	824                             ; DW_AT_import
	db	7                               ; Abbrev [7] 0x96:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	46                              ; DW_AT_decl_line
	d32	848                             ; DW_AT_import
	db	7                               ; Abbrev [7] 0x9d:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	47                              ; DW_AT_decl_line
	d32	872                             ; DW_AT_import
	db	7                               ; Abbrev [7] 0xa4:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	48                              ; DW_AT_decl_line
	d32	900                             ; DW_AT_import
	db	7                               ; Abbrev [7] 0xab:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	50                              ; DW_AT_decl_line
	d32	928                             ; DW_AT_import
	db	7                               ; Abbrev [7] 0xb2:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	51                              ; DW_AT_decl_line
	d32	938                             ; DW_AT_import
	db	7                               ; Abbrev [7] 0xb9:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	53                              ; DW_AT_decl_line
	d32	946                             ; DW_AT_import
	db	7                               ; Abbrev [7] 0xc0:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	54                              ; DW_AT_decl_line
	d32	1007                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0xc7:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	56                              ; DW_AT_decl_line
	d32	1032                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0xce:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	57                              ; DW_AT_decl_line
	d32	1036                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0xd5:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	58                              ; DW_AT_decl_line
	d32	1056                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0xdc:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	59                              ; DW_AT_decl_line
	d32	1092                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0xe3:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	60                              ; DW_AT_decl_line
	d32	1102                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0xea:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	61                              ; DW_AT_decl_line
	d32	1116                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0xf1:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	62                              ; DW_AT_decl_line
	d32	1126                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0xf8:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	64                              ; DW_AT_decl_line
	d32	1136                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0xff:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	65                              ; DW_AT_decl_line
	d32	1150                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x106:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	66                              ; DW_AT_decl_line
	d32	1164                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x10d:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	68                              ; DW_AT_decl_line
	d32	1178                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x114:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	69                              ; DW_AT_decl_line
	d32	1206                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x11b:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	70                              ; DW_AT_decl_line
	d32	1257                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x122:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	73                              ; DW_AT_decl_line
	d32	1308                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x129:0x7 DW_TAG_imported_declaration
	db	4                               ; DW_AT_decl_file
	db	74                              ; DW_AT_decl_line
	d32	1326                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x130:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	10                              ; DW_AT_decl_line
	d32	598                             ; DW_AT_import
	db	7                               ; Abbrev [7] 0x137:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	11                              ; DW_AT_decl_line
	d32	1377                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x13e:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	13                              ; DW_AT_decl_line
	d32	1386                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x145:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	14                              ; DW_AT_decl_line
	d32	1410                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x14c:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	15                              ; DW_AT_decl_line
	d32	1439                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x153:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	16                              ; DW_AT_decl_line
	d32	1453                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x15a:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	17                              ; DW_AT_decl_line
	d32	1467                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x161:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	18                              ; DW_AT_decl_line
	d32	1481                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x168:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	19                              ; DW_AT_decl_line
	d32	1495                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x16f:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	20                              ; DW_AT_decl_line
	d32	1505                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x176:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	21                              ; DW_AT_decl_line
	d32	1539                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x17d:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	22                              ; DW_AT_decl_line
	d32	1573                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x184:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	23                              ; DW_AT_decl_line
	d32	1587                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x18b:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	24                              ; DW_AT_decl_line
	d32	1611                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x192:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	25                              ; DW_AT_decl_line
	d32	1621                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x199:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	26                              ; DW_AT_decl_line
	d32	1635                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x1a0:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	27                              ; DW_AT_decl_line
	d32	1664                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x1a7:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	28                              ; DW_AT_decl_line
	d32	1683                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x1ae:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	29                              ; DW_AT_decl_line
	d32	1702                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x1b5:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	30                              ; DW_AT_decl_line
	d32	1721                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x1bc:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	31                              ; DW_AT_decl_line
	d32	1735                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x1c3:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	32                              ; DW_AT_decl_line
	d32	1754                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x1ca:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	33                              ; DW_AT_decl_line
	d32	1762                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x1d1:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	34                              ; DW_AT_decl_line
	d32	1776                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x1d8:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	35                              ; DW_AT_decl_line
	d32	1790                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x1df:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	36                              ; DW_AT_decl_line
	d32	1804                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x1e6:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	37                              ; DW_AT_decl_line
	d32	1823                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x1ed:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	38                              ; DW_AT_decl_line
	d32	1838                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x1f4:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	39                              ; DW_AT_decl_line
	d32	1871                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x1fb:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	40                              ; DW_AT_decl_line
	d32	1891                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x202:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	41                              ; DW_AT_decl_line
	d32	1915                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x209:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	42                              ; DW_AT_decl_line
	d32	1940                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x210:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	43                              ; DW_AT_decl_line
	d32	1969                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x217:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	44                              ; DW_AT_decl_line
	d32	1989                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x21e:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	45                              ; DW_AT_decl_line
	d32	2013                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x225:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	46                              ; DW_AT_decl_line
	d32	2033                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x22c:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	47                              ; DW_AT_decl_line
	d32	2057                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x233:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	48                              ; DW_AT_decl_line
	d32	2077                            ; DW_AT_import
	db	7                               ; Abbrev [7] 0x23a:0x7 DW_TAG_imported_declaration
	db	5                               ; DW_AT_decl_file
	db	49                              ; DW_AT_decl_line
	d32	2101                            ; DW_AT_import
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x242:0x13 DW_TAG_subprogram
	db	5                               ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	37                              ; DW_AT_decl_line
	d32	597                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x24a:0x5 DW_TAG_formal_parameter
	d32	598                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x24f:0x5 DW_TAG_formal_parameter
	d32	598                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	10                              ; Abbrev [10] 0x255:0x1 DW_TAG_pointer_type
	db	11                              ; Abbrev [11] 0x256:0x8 DW_TAG_typedef
	d32	606                             ; DW_AT_type
	db	7                               ; DW_AT_name
	db	3                               ; DW_AT_decl_file
	db	41                              ; DW_AT_decl_line
	db	4                               ; Abbrev [4] 0x25e:0x4 DW_TAG_base_type
	db	6                               ; DW_AT_name
	db	7                               ; DW_AT_encoding
	db	3                               ; DW_AT_byte_size
	db	8                               ; Abbrev [8] 0x262:0xe DW_TAG_subprogram
	db	8                               ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	39                              ; DW_AT_decl_line
	d32	597                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x26a:0x5 DW_TAG_formal_parameter
	d32	598                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x270:0x13 DW_TAG_subprogram
	db	9                               ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	41                              ; DW_AT_decl_line
	d32	597                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x278:0x5 DW_TAG_formal_parameter
	d32	597                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x27d:0x5 DW_TAG_formal_parameter
	d32	598                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	12                              ; Abbrev [12] 0x283:0xa DW_TAG_subprogram
	db	10                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	43                              ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x287:0x5 DW_TAG_formal_parameter
	d32	597                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x28d:0xe DW_TAG_subprogram
	db	11                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	45                              ; DW_AT_decl_line
	d32	667                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x295:0x5 DW_TAG_formal_parameter
	d32	671                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	4                               ; Abbrev [4] 0x29b:0x4 DW_TAG_base_type
	db	12                              ; DW_AT_name
	db	4                               ; DW_AT_encoding
	db	4                               ; DW_AT_byte_size
	db	2                               ; Abbrev [2] 0x29f:0x5 DW_TAG_pointer_type
	d32	676                             ; DW_AT_type
	db	13                              ; Abbrev [13] 0x2a4:0x5 DW_TAG_const_type
	d32	681                             ; DW_AT_type
	db	4                               ; Abbrev [4] 0x2a9:0x4 DW_TAG_base_type
	db	13                              ; DW_AT_name
	db	6                               ; DW_AT_encoding
	db	1                               ; DW_AT_byte_size
	db	8                               ; Abbrev [8] 0x2ad:0xe DW_TAG_subprogram
	db	14                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	47                              ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x2b5:0x5 DW_TAG_formal_parameter
	d32	671                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	4                               ; Abbrev [4] 0x2bb:0x4 DW_TAG_base_type
	db	15                              ; DW_AT_name
	db	5                               ; DW_AT_encoding
	db	3                               ; DW_AT_byte_size
	db	8                               ; Abbrev [8] 0x2bf:0xe DW_TAG_subprogram
	db	16                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	49                              ; DW_AT_decl_line
	d32	717                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x2c7:0x5 DW_TAG_formal_parameter
	d32	671                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	4                               ; Abbrev [4] 0x2cd:0x4 DW_TAG_base_type
	db	17                              ; DW_AT_name
	db	5                               ; DW_AT_encoding
	db	4                               ; DW_AT_byte_size
	db	8                               ; Abbrev [8] 0x2d1:0xe DW_TAG_subprogram
	db	18                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	51                              ; DW_AT_decl_line
	d32	735                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x2d9:0x5 DW_TAG_formal_parameter
	d32	671                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	4                               ; Abbrev [4] 0x2df:0x4 DW_TAG_base_type
	db	19                              ; DW_AT_name
	db	5                               ; DW_AT_encoding
	db	8                               ; DW_AT_byte_size
	db	8                               ; Abbrev [8] 0x2e3:0x13 DW_TAG_subprogram
	db	20                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	53                              ; DW_AT_decl_line
	d32	758                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x2eb:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x2f0:0x5 DW_TAG_formal_parameter
	d32	767                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	4                               ; Abbrev [4] 0x2f6:0x4 DW_TAG_base_type
	db	21                              ; DW_AT_name
	db	4                               ; DW_AT_encoding
	db	4                               ; DW_AT_byte_size
	db	14                              ; Abbrev [14] 0x2fa:0x5 DW_TAG_restrict_type
	d32	671                             ; DW_AT_type
	db	14                              ; Abbrev [14] 0x2ff:0x5 DW_TAG_restrict_type
	d32	772                             ; DW_AT_type
	db	2                               ; Abbrev [2] 0x304:0x5 DW_TAG_pointer_type
	d32	777                             ; DW_AT_type
	db	2                               ; Abbrev [2] 0x309:0x5 DW_TAG_pointer_type
	d32	681                             ; DW_AT_type
	db	8                               ; Abbrev [8] 0x30e:0x13 DW_TAG_subprogram
	db	22                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	56                              ; DW_AT_decl_line
	d32	667                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x316:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x31b:0x5 DW_TAG_formal_parameter
	d32	767                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x321:0x13 DW_TAG_subprogram
	db	23                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	59                              ; DW_AT_decl_line
	d32	820                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x329:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x32e:0x5 DW_TAG_formal_parameter
	d32	767                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	4                               ; Abbrev [4] 0x334:0x4 DW_TAG_base_type
	db	24                              ; DW_AT_name
	db	4                               ; DW_AT_encoding
	db	8                               ; DW_AT_byte_size
	db	8                               ; Abbrev [8] 0x338:0x18 DW_TAG_subprogram
	db	25                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	62                              ; DW_AT_decl_line
	d32	717                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x340:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x345:0x5 DW_TAG_formal_parameter
	d32	767                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x34a:0x5 DW_TAG_formal_parameter
	d32	699                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x350:0x18 DW_TAG_subprogram
	db	26                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	65                              ; DW_AT_decl_line
	d32	735                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x358:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x35d:0x5 DW_TAG_formal_parameter
	d32	767                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x362:0x5 DW_TAG_formal_parameter
	d32	699                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x368:0x18 DW_TAG_subprogram
	db	27                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	68                              ; DW_AT_decl_line
	d32	896                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x370:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x375:0x5 DW_TAG_formal_parameter
	d32	767                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x37a:0x5 DW_TAG_formal_parameter
	d32	699                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	4                               ; Abbrev [4] 0x380:0x4 DW_TAG_base_type
	db	28                              ; DW_AT_name
	db	7                               ; DW_AT_encoding
	db	4                               ; DW_AT_byte_size
	db	8                               ; Abbrev [8] 0x384:0x18 DW_TAG_subprogram
	db	29                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	71                              ; DW_AT_decl_line
	d32	924                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x38c:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x391:0x5 DW_TAG_formal_parameter
	d32	767                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x396:0x5 DW_TAG_formal_parameter
	d32	699                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	4                               ; Abbrev [4] 0x39c:0x4 DW_TAG_base_type
	db	30                              ; DW_AT_name
	db	7                               ; DW_AT_encoding
	db	8                               ; DW_AT_byte_size
	db	12                              ; Abbrev [12] 0x3a0:0xa DW_TAG_subprogram
	db	31                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	74                              ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x3a4:0x5 DW_TAG_formal_parameter
	d32	606                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	15                              ; Abbrev [15] 0x3aa:0x8 DW_TAG_subprogram
	db	32                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	76                              ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	8                               ; Abbrev [8] 0x3b2:0x22 DW_TAG_subprogram
	db	33                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	78                              ; DW_AT_decl_line
	d32	597                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x3ba:0x5 DW_TAG_formal_parameter
	d32	980                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x3bf:0x5 DW_TAG_formal_parameter
	d32	980                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x3c4:0x5 DW_TAG_formal_parameter
	d32	598                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x3c9:0x5 DW_TAG_formal_parameter
	d32	598                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x3ce:0x5 DW_TAG_formal_parameter
	d32	986                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	2                               ; Abbrev [2] 0x3d4:0x5 DW_TAG_pointer_type
	d32	985                             ; DW_AT_type
	db	16                              ; Abbrev [16] 0x3d9:0x1 DW_TAG_const_type
	db	2                               ; Abbrev [2] 0x3da:0x5 DW_TAG_pointer_type
	d32	991                             ; DW_AT_type
	db	17                              ; Abbrev [17] 0x3df:0x10 DW_TAG_subroutine_type
	d32	699                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x3e4:0x5 DW_TAG_formal_parameter
	d32	980                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x3e9:0x5 DW_TAG_formal_parameter
	d32	980                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	12                              ; Abbrev [12] 0x3ef:0x19 DW_TAG_subprogram
	db	34                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	86                              ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x3f3:0x5 DW_TAG_formal_parameter
	d32	597                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x3f8:0x5 DW_TAG_formal_parameter
	d32	598                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x3fd:0x5 DW_TAG_formal_parameter
	d32	598                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x402:0x5 DW_TAG_formal_parameter
	d32	986                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	18                              ; Abbrev [18] 0x408:0x4 DW_TAG_subprogram
	db	35                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	93                              ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_noreturn
	db	8                               ; Abbrev [8] 0x40c:0xe DW_TAG_subprogram
	db	36                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	95                              ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x414:0x5 DW_TAG_formal_parameter
	d32	1050                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	2                               ; Abbrev [2] 0x41a:0x5 DW_TAG_pointer_type
	d32	1055                            ; DW_AT_type
	db	19                              ; Abbrev [19] 0x41f:0x1 DW_TAG_subroutine_type
	db	8                               ; Abbrev [8] 0x420:0x13 DW_TAG_subprogram
	db	37                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	97                              ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x428:0x5 DW_TAG_formal_parameter
	d32	1075                            ; DW_AT_type
	db	9                               ; Abbrev [9] 0x42d:0x5 DW_TAG_formal_parameter
	d32	597                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	2                               ; Abbrev [2] 0x433:0x5 DW_TAG_pointer_type
	d32	1080                            ; DW_AT_type
	db	20                              ; Abbrev [20] 0x438:0xc DW_TAG_subroutine_type
	db	9                               ; Abbrev [9] 0x439:0x5 DW_TAG_formal_parameter
	d32	699                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x43e:0x5 DW_TAG_formal_parameter
	d32	597                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	21                              ; Abbrev [21] 0x444:0xa DW_TAG_subprogram
	db	38                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	99                              ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_noreturn
	db	9                               ; Abbrev [9] 0x448:0x5 DW_TAG_formal_parameter
	d32	699                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x44e:0xe DW_TAG_subprogram
	db	39                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	101                             ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x456:0x5 DW_TAG_formal_parameter
	d32	1050                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	21                              ; Abbrev [21] 0x45c:0xa DW_TAG_subprogram
	db	40                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	103                             ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_noreturn
	db	9                               ; Abbrev [9] 0x460:0x5 DW_TAG_formal_parameter
	d32	699                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	21                              ; Abbrev [21] 0x466:0xa DW_TAG_subprogram
	db	41                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	105                             ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_noreturn
	db	9                               ; Abbrev [9] 0x46a:0x5 DW_TAG_formal_parameter
	d32	699                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x470:0xe DW_TAG_subprogram
	db	42                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	107                             ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x478:0x5 DW_TAG_formal_parameter
	d32	699                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x47e:0xe DW_TAG_subprogram
	db	43                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	108                             ; DW_AT_decl_line
	d32	717                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x486:0x5 DW_TAG_formal_parameter
	d32	717                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x48c:0xe DW_TAG_subprogram
	db	44                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	109                             ; DW_AT_decl_line
	d32	735                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x494:0x5 DW_TAG_formal_parameter
	d32	735                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x49a:0x13 DW_TAG_subprogram
	db	45                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	115                             ; DW_AT_decl_line
	d32	1197                            ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x4a2:0x5 DW_TAG_formal_parameter
	d32	699                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x4a7:0x5 DW_TAG_formal_parameter
	d32	699                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	11                              ; Abbrev [11] 0x4ad:0x8 DW_TAG_typedef
	d32	1205                            ; DW_AT_type
	db	46                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	9                               ; DW_AT_decl_line
	db	22                              ; Abbrev [22] 0x4b5:0x1 DW_TAG_structure_type
                                        ; DW_AT_declaration
	db	8                               ; Abbrev [8] 0x4b6:0x13 DW_TAG_subprogram
	db	47                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	117                             ; DW_AT_decl_line
	d32	1225                            ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x4be:0x5 DW_TAG_formal_parameter
	d32	717                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x4c3:0x5 DW_TAG_formal_parameter
	d32	717                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	11                              ; Abbrev [11] 0x4c9:0x8 DW_TAG_typedef
	d32	1233                            ; DW_AT_type
	db	50                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	14                              ; DW_AT_decl_line
	db	23                              ; Abbrev [23] 0x4d1:0x18 DW_TAG_structure_type
	db	5                               ; DW_AT_calling_convention
	db	8                               ; DW_AT_byte_size
	db	2                               ; DW_AT_decl_file
	db	11                              ; DW_AT_decl_line
	db	24                              ; Abbrev [24] 0x4d6:0x9 DW_TAG_member
	db	48                              ; DW_AT_name
	d32	717                             ; DW_AT_type
	db	2                               ; DW_AT_decl_file
	db	12                              ; DW_AT_decl_line
	db	0                               ; DW_AT_data_member_location
	db	24                              ; Abbrev [24] 0x4df:0x9 DW_TAG_member
	db	49                              ; DW_AT_name
	d32	717                             ; DW_AT_type
	db	2                               ; DW_AT_decl_file
	db	13                              ; DW_AT_decl_line
	db	4                               ; DW_AT_data_member_location
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x4e9:0x13 DW_TAG_subprogram
	db	51                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	119                             ; DW_AT_decl_line
	d32	1276                            ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x4f1:0x5 DW_TAG_formal_parameter
	d32	735                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x4f6:0x5 DW_TAG_formal_parameter
	d32	735                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	11                              ; Abbrev [11] 0x4fc:0x8 DW_TAG_typedef
	d32	1284                            ; DW_AT_type
	db	52                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	26                              ; DW_AT_decl_line
	db	23                              ; Abbrev [23] 0x504:0x18 DW_TAG_structure_type
	db	5                               ; DW_AT_calling_convention
	db	16                              ; DW_AT_byte_size
	db	2                               ; DW_AT_decl_file
	db	23                              ; DW_AT_decl_line
	db	24                              ; Abbrev [24] 0x509:0x9 DW_TAG_member
	db	49                              ; DW_AT_name
	d32	735                             ; DW_AT_type
	db	2                               ; DW_AT_decl_file
	db	24                              ; DW_AT_decl_line
	db	0                               ; DW_AT_data_member_location
	db	24                              ; Abbrev [24] 0x512:0x9 DW_TAG_member
	db	48                              ; DW_AT_name
	d32	735                             ; DW_AT_type
	db	2                               ; DW_AT_decl_file
	db	25                              ; DW_AT_decl_line
	db	8                               ; DW_AT_data_member_location
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x51c:0xe DW_TAG_subprogram
	db	53                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	112                             ; DW_AT_decl_line
	d32	1322                            ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x524:0x5 DW_TAG_formal_parameter
	d32	1322                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	4                               ; Abbrev [4] 0x52a:0x4 DW_TAG_base_type
	db	54                              ; DW_AT_name
	db	5                               ; DW_AT_encoding
	db	6                               ; DW_AT_byte_size
	db	8                               ; Abbrev [8] 0x52e:0x13 DW_TAG_subprogram
	db	55                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	122                             ; DW_AT_decl_line
	d32	1345                            ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x536:0x5 DW_TAG_formal_parameter
	d32	1322                            ; DW_AT_type
	db	9                               ; Abbrev [9] 0x53b:0x5 DW_TAG_formal_parameter
	d32	1322                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	11                              ; Abbrev [11] 0x541:0x8 DW_TAG_typedef
	d32	1353                            ; DW_AT_type
	db	56                              ; DW_AT_name
	db	2                               ; DW_AT_decl_file
	db	20                              ; DW_AT_decl_line
	db	23                              ; Abbrev [23] 0x549:0x18 DW_TAG_structure_type
	db	5                               ; DW_AT_calling_convention
	db	12                              ; DW_AT_byte_size
	db	2                               ; DW_AT_decl_file
	db	17                              ; DW_AT_decl_line
	db	24                              ; Abbrev [24] 0x54e:0x9 DW_TAG_member
	db	48                              ; DW_AT_name
	d32	1322                            ; DW_AT_type
	db	2                               ; DW_AT_decl_file
	db	18                              ; DW_AT_decl_line
	db	0                               ; DW_AT_data_member_location
	db	24                              ; Abbrev [24] 0x557:0x9 DW_TAG_member
	db	49                              ; DW_AT_name
	d32	1322                            ; DW_AT_type
	db	2                               ; DW_AT_decl_file
	db	19                              ; DW_AT_decl_line
	db	6                               ; DW_AT_data_member_location
	db	0                               ; End Of Children Mark
	db	11                              ; Abbrev [11] 0x561:0x8 DW_TAG_typedef
	d32	1385                            ; DW_AT_type
	db	57                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	15                              ; DW_AT_decl_line
	db	22                              ; Abbrev [22] 0x569:0x1 DW_TAG_structure_type
                                        ; DW_AT_declaration
	db	8                               ; Abbrev [8] 0x56a:0x13 DW_TAG_subprogram
	db	58                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	46                              ; DW_AT_decl_line
	d32	1405                            ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x572:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x577:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	2                               ; Abbrev [2] 0x57d:0x5 DW_TAG_pointer_type
	d32	1377                            ; DW_AT_type
	db	8                               ; Abbrev [8] 0x582:0x18 DW_TAG_subprogram
	db	59                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	48                              ; DW_AT_decl_line
	d32	1405                            ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x58a:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x58f:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x594:0x5 DW_TAG_formal_parameter
	d32	1434                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	14                              ; Abbrev [14] 0x59a:0x5 DW_TAG_restrict_type
	d32	1405                            ; DW_AT_type
	db	8                               ; Abbrev [8] 0x59f:0xe DW_TAG_subprogram
	db	60                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	50                              ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x5a7:0x5 DW_TAG_formal_parameter
	d32	1405                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x5ad:0xe DW_TAG_subprogram
	db	61                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	52                              ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x5b5:0x5 DW_TAG_formal_parameter
	d32	1405                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x5bb:0xe DW_TAG_subprogram
	db	62                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	54                              ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x5c3:0x5 DW_TAG_formal_parameter
	d32	1405                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x5c9:0xe DW_TAG_subprogram
	db	63                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	56                              ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x5d1:0x5 DW_TAG_formal_parameter
	d32	1405                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	12                              ; Abbrev [12] 0x5d7:0xa DW_TAG_subprogram
	db	64                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	58                              ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x5db:0x5 DW_TAG_formal_parameter
	d32	1405                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x5e1:0x1d DW_TAG_subprogram
	db	65                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	60                              ; DW_AT_decl_line
	d32	598                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x5e9:0x5 DW_TAG_formal_parameter
	d32	1534                            ; DW_AT_type
	db	9                               ; Abbrev [9] 0x5ee:0x5 DW_TAG_formal_parameter
	d32	598                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x5f3:0x5 DW_TAG_formal_parameter
	d32	598                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x5f8:0x5 DW_TAG_formal_parameter
	d32	1434                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	14                              ; Abbrev [14] 0x5fe:0x5 DW_TAG_restrict_type
	d32	597                             ; DW_AT_type
	db	8                               ; Abbrev [8] 0x603:0x1d DW_TAG_subprogram
	db	66                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	62                              ; DW_AT_decl_line
	d32	598                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x60b:0x5 DW_TAG_formal_parameter
	d32	1568                            ; DW_AT_type
	db	9                               ; Abbrev [9] 0x610:0x5 DW_TAG_formal_parameter
	d32	598                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x615:0x5 DW_TAG_formal_parameter
	d32	598                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x61a:0x5 DW_TAG_formal_parameter
	d32	1434                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	14                              ; Abbrev [14] 0x620:0x5 DW_TAG_restrict_type
	d32	980                             ; DW_AT_type
	db	8                               ; Abbrev [8] 0x625:0xe DW_TAG_subprogram
	db	67                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	64                              ; DW_AT_decl_line
	d32	717                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x62d:0x5 DW_TAG_formal_parameter
	d32	1405                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x633:0x18 DW_TAG_subprogram
	db	68                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	66                              ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x63b:0x5 DW_TAG_formal_parameter
	d32	1405                            ; DW_AT_type
	db	9                               ; Abbrev [9] 0x640:0x5 DW_TAG_formal_parameter
	d32	717                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x645:0x5 DW_TAG_formal_parameter
	d32	699                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	12                              ; Abbrev [12] 0x64b:0xa DW_TAG_subprogram
	db	69                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	68                              ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x64f:0x5 DW_TAG_formal_parameter
	d32	1405                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x655:0xe DW_TAG_subprogram
	db	70                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	70                              ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x65d:0x5 DW_TAG_formal_parameter
	d32	1405                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x663:0x18 DW_TAG_subprogram
	db	71                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	72                              ; DW_AT_decl_line
	d32	777                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x66b:0x5 DW_TAG_formal_parameter
	d32	1659                            ; DW_AT_type
	db	9                               ; Abbrev [9] 0x670:0x5 DW_TAG_formal_parameter
	d32	699                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x675:0x5 DW_TAG_formal_parameter
	d32	1434                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	14                              ; Abbrev [14] 0x67b:0x5 DW_TAG_restrict_type
	d32	777                             ; DW_AT_type
	db	8                               ; Abbrev [8] 0x680:0x13 DW_TAG_subprogram
	db	72                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	74                              ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x688:0x5 DW_TAG_formal_parameter
	d32	699                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x68d:0x5 DW_TAG_formal_parameter
	d32	1405                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x693:0x13 DW_TAG_subprogram
	db	73                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	76                              ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x69b:0x5 DW_TAG_formal_parameter
	d32	699                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x6a0:0x5 DW_TAG_formal_parameter
	d32	1405                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x6a6:0x13 DW_TAG_subprogram
	db	74                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	78                              ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x6ae:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x6b3:0x5 DW_TAG_formal_parameter
	d32	1434                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x6b9:0xe DW_TAG_subprogram
	db	75                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	80                              ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x6c1:0x5 DW_TAG_formal_parameter
	d32	671                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x6c7:0x13 DW_TAG_subprogram
	db	76                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	82                              ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x6cf:0x5 DW_TAG_formal_parameter
	d32	671                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x6d4:0x5 DW_TAG_formal_parameter
	d32	671                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	15                              ; Abbrev [15] 0x6da:0x8 DW_TAG_subprogram
	db	77                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	88                              ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	8                               ; Abbrev [8] 0x6e2:0xe DW_TAG_subprogram
	db	78                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	90                              ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x6ea:0x5 DW_TAG_formal_parameter
	d32	699                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x6f0:0xe DW_TAG_subprogram
	db	79                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	92                              ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x6f8:0x5 DW_TAG_formal_parameter
	d32	671                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x6fe:0xe DW_TAG_subprogram
	db	80                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	94                              ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x706:0x5 DW_TAG_formal_parameter
	d32	1405                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x70c:0x13 DW_TAG_subprogram
	db	81                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	96                              ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x714:0x5 DW_TAG_formal_parameter
	d32	699                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x719:0x5 DW_TAG_formal_parameter
	d32	1405                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x71f:0xf DW_TAG_subprogram
	db	82                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	98                              ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x727:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	25                              ; Abbrev [25] 0x72c:0x1 DW_TAG_unspecified_parameters
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x72e:0x13 DW_TAG_subprogram
	db	83                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	101                             ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x736:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x73b:0x5 DW_TAG_formal_parameter
	d32	1857                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	11                              ; Abbrev [11] 0x741:0x8 DW_TAG_typedef
	d32	1865                            ; DW_AT_type
	db	85                              ; DW_AT_name
	db	7                               ; DW_AT_decl_file
	db	11                              ; DW_AT_decl_line
	db	26                              ; Abbrev [26] 0x749:0x6 DW_TAG_typedef
	d32	777                             ; DW_AT_type
	db	84                              ; DW_AT_name
	db	8                               ; Abbrev [8] 0x74f:0x14 DW_TAG_subprogram
	db	86                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	104                             ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x757:0x5 DW_TAG_formal_parameter
	d32	1659                            ; DW_AT_type
	db	9                               ; Abbrev [9] 0x75c:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	25                              ; Abbrev [25] 0x761:0x1 DW_TAG_unspecified_parameters
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x763:0x18 DW_TAG_subprogram
	db	87                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	107                             ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x76b:0x5 DW_TAG_formal_parameter
	d32	1659                            ; DW_AT_type
	db	9                               ; Abbrev [9] 0x770:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x775:0x5 DW_TAG_formal_parameter
	d32	1857                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x77b:0x19 DW_TAG_subprogram
	db	88                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	110                             ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x783:0x5 DW_TAG_formal_parameter
	d32	1659                            ; DW_AT_type
	db	9                               ; Abbrev [9] 0x788:0x5 DW_TAG_formal_parameter
	d32	598                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x78d:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	25                              ; Abbrev [25] 0x792:0x1 DW_TAG_unspecified_parameters
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x794:0x1d DW_TAG_subprogram
	db	89                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	113                             ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x79c:0x5 DW_TAG_formal_parameter
	d32	1659                            ; DW_AT_type
	db	9                               ; Abbrev [9] 0x7a1:0x5 DW_TAG_formal_parameter
	d32	598                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x7a6:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x7ab:0x5 DW_TAG_formal_parameter
	d32	1857                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x7b1:0x14 DW_TAG_subprogram
	db	90                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	116                             ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x7b9:0x5 DW_TAG_formal_parameter
	d32	1434                            ; DW_AT_type
	db	9                               ; Abbrev [9] 0x7be:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	25                              ; Abbrev [25] 0x7c3:0x1 DW_TAG_unspecified_parameters
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x7c5:0x18 DW_TAG_subprogram
	db	91                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	119                             ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x7cd:0x5 DW_TAG_formal_parameter
	d32	1434                            ; DW_AT_type
	db	9                               ; Abbrev [9] 0x7d2:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x7d7:0x5 DW_TAG_formal_parameter
	d32	1857                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x7dd:0x14 DW_TAG_subprogram
	db	92                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	122                             ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x7e5:0x5 DW_TAG_formal_parameter
	d32	767                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x7ea:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	25                              ; Abbrev [25] 0x7ef:0x1 DW_TAG_unspecified_parameters
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x7f1:0x18 DW_TAG_subprogram
	db	93                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	125                             ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x7f9:0x5 DW_TAG_formal_parameter
	d32	767                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x7fe:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x803:0x5 DW_TAG_formal_parameter
	d32	1857                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x809:0x14 DW_TAG_subprogram
	db	94                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	128                             ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x811:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x816:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	25                              ; Abbrev [25] 0x81b:0x1 DW_TAG_unspecified_parameters
	db	0                               ; End Of Children Mark
	db	8                               ; Abbrev [8] 0x81d:0x18 DW_TAG_subprogram
	db	95                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	131                             ; DW_AT_decl_line
	d32	699                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x825:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x82a:0x5 DW_TAG_formal_parameter
	d32	762                             ; DW_AT_type
	db	9                               ; Abbrev [9] 0x82f:0x5 DW_TAG_formal_parameter
	d32	1857                            ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	12                              ; Abbrev [12] 0x835:0xa DW_TAG_subprogram
	db	96                              ; DW_AT_name
	db	6                               ; DW_AT_decl_file
	db	134                             ; DW_AT_decl_line
                                        ; DW_AT_declaration
                                        ; DW_AT_external
	db	9                               ; Abbrev [9] 0x839:0x5 DW_TAG_formal_parameter
	d32	671                             ; DW_AT_type
	db	0                               ; End Of Children Mark
	db	0                               ; End Of Children Mark
	.local	.Ldebug_info_end0
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	d32	396                             ; Length of String Offsets Set
	dw	5
	dw	0
	.local	.Lstr_offsets_base0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
	.local	.Linfo_string0
.Linfo_string0:
	.asciz	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)" ; string offset=0
	.local	.Linfo_string1
.Linfo_string1:
	.asciz	"src\\main.cpp"                 ; string offset=111
	.local	.Linfo_string2
.Linfo_string2:
	.asciz	"C:\\Users\\Tri-America\\Downloads\\proceduallygeneratednoise" ; string offset=124
	.local	.Linfo_string3
.Linfo_string3:
	.asciz	"unsigned char"                 ; string offset=181
	.local	.Linfo_string4
.Linfo_string4:
	.asciz	"std"                           ; string offset=195
	.local	.Linfo_string5
.Linfo_string5:
	.asciz	"calloc"                        ; string offset=199
	.local	.Linfo_string6
.Linfo_string6:
	.asciz	"unsigned int"                  ; string offset=206
	.local	.Linfo_string7
.Linfo_string7:
	.asciz	"size_t"                        ; string offset=219
	.local	.Linfo_string8
.Linfo_string8:
	.asciz	"malloc"                        ; string offset=226
	.local	.Linfo_string9
.Linfo_string9:
	.asciz	"realloc"                       ; string offset=233
	.local	.Linfo_string10
.Linfo_string10:
	.asciz	"free"                          ; string offset=241
	.local	.Linfo_string11
.Linfo_string11:
	.asciz	"atof"                          ; string offset=246
	.local	.Linfo_string12
.Linfo_string12:
	.asciz	"double"                        ; string offset=251
	.local	.Linfo_string13
.Linfo_string13:
	.asciz	"char"                          ; string offset=258
	.local	.Linfo_string14
.Linfo_string14:
	.asciz	"atoi"                          ; string offset=263
	.local	.Linfo_string15
.Linfo_string15:
	.asciz	"int"                           ; string offset=268
	.local	.Linfo_string16
.Linfo_string16:
	.asciz	"atol"                          ; string offset=272
	.local	.Linfo_string17
.Linfo_string17:
	.asciz	"long"                          ; string offset=277
	.local	.Linfo_string18
.Linfo_string18:
	.asciz	"atoll"                         ; string offset=282
	.local	.Linfo_string19
.Linfo_string19:
	.asciz	"long long"                     ; string offset=288
	.local	.Linfo_string20
.Linfo_string20:
	.asciz	"strtof"                        ; string offset=298
	.local	.Linfo_string21
.Linfo_string21:
	.asciz	"float"                         ; string offset=305
	.local	.Linfo_string22
.Linfo_string22:
	.asciz	"strtod"                        ; string offset=311
	.local	.Linfo_string23
.Linfo_string23:
	.asciz	"strtold"                       ; string offset=318
	.local	.Linfo_string24
.Linfo_string24:
	.asciz	"long double"                   ; string offset=326
	.local	.Linfo_string25
.Linfo_string25:
	.asciz	"strtol"                        ; string offset=338
	.local	.Linfo_string26
.Linfo_string26:
	.asciz	"strtoll"                       ; string offset=345
	.local	.Linfo_string27
.Linfo_string27:
	.asciz	"strtoul"                       ; string offset=353
	.local	.Linfo_string28
.Linfo_string28:
	.asciz	"unsigned long"                 ; string offset=361
	.local	.Linfo_string29
.Linfo_string29:
	.asciz	"strtoull"                      ; string offset=375
	.local	.Linfo_string30
.Linfo_string30:
	.asciz	"unsigned long long"            ; string offset=384
	.local	.Linfo_string31
.Linfo_string31:
	.asciz	"srand"                         ; string offset=403
	.local	.Linfo_string32
.Linfo_string32:
	.asciz	"rand"                          ; string offset=409
	.local	.Linfo_string33
.Linfo_string33:
	.asciz	"bsearch"                       ; string offset=414
	.local	.Linfo_string34
.Linfo_string34:
	.asciz	"qsort"                         ; string offset=422
	.local	.Linfo_string35
.Linfo_string35:
	.asciz	"abort"                         ; string offset=428
	.local	.Linfo_string36
.Linfo_string36:
	.asciz	"atexit"                        ; string offset=434
	.local	.Linfo_string37
.Linfo_string37:
	.asciz	"on_exit"                       ; string offset=441
	.local	.Linfo_string38
.Linfo_string38:
	.asciz	"exit"                          ; string offset=449
	.local	.Linfo_string39
.Linfo_string39:
	.asciz	"at_quick_exit"                 ; string offset=454
	.local	.Linfo_string40
.Linfo_string40:
	.asciz	"quick_exit"                    ; string offset=468
	.local	.Linfo_string41
.Linfo_string41:
	.asciz	"_Exit"                         ; string offset=479
	.local	.Linfo_string42
.Linfo_string42:
	.asciz	"abs"                           ; string offset=485
	.local	.Linfo_string43
.Linfo_string43:
	.asciz	"labs"                          ; string offset=489
	.local	.Linfo_string44
.Linfo_string44:
	.asciz	"llabs"                         ; string offset=494
	.local	.Linfo_string45
.Linfo_string45:
	.asciz	"div"                           ; string offset=500
	.local	.Linfo_string46
.Linfo_string46:
	.asciz	"div_t"                         ; string offset=504
	.local	.Linfo_string47
.Linfo_string47:
	.asciz	"ldiv"                          ; string offset=510
	.local	.Linfo_string48
.Linfo_string48:
	.asciz	"quot"                          ; string offset=515
	.local	.Linfo_string49
.Linfo_string49:
	.asciz	"rem"                           ; string offset=520
	.local	.Linfo_string50
.Linfo_string50:
	.asciz	"ldiv_t"                        ; string offset=524
	.local	.Linfo_string51
.Linfo_string51:
	.asciz	"lldiv"                         ; string offset=531
	.local	.Linfo_string52
.Linfo_string52:
	.asciz	"lldiv_t"                       ; string offset=537
	.local	.Linfo_string53
.Linfo_string53:
	.asciz	"i48abs"                        ; string offset=545
	.local	.Linfo_string54
.Linfo_string54:
	.asciz	"__int48"                       ; string offset=552
	.local	.Linfo_string55
.Linfo_string55:
	.asciz	"i48div"                        ; string offset=560
	.local	.Linfo_string56
.Linfo_string56:
	.asciz	"i48div_t"                      ; string offset=567
	.local	.Linfo_string57
.Linfo_string57:
	.asciz	"FILE"                          ; string offset=576
	.local	.Linfo_string58
.Linfo_string58:
	.asciz	"fopen"                         ; string offset=581
	.local	.Linfo_string59
.Linfo_string59:
	.asciz	"freopen"                       ; string offset=587
	.local	.Linfo_string60
.Linfo_string60:
	.asciz	"fclose"                        ; string offset=595
	.local	.Linfo_string61
.Linfo_string61:
	.asciz	"fflush"                        ; string offset=602
	.local	.Linfo_string62
.Linfo_string62:
	.asciz	"ferror"                        ; string offset=609
	.local	.Linfo_string63
.Linfo_string63:
	.asciz	"feof"                          ; string offset=616
	.local	.Linfo_string64
.Linfo_string64:
	.asciz	"clearerr"                      ; string offset=621
	.local	.Linfo_string65
.Linfo_string65:
	.asciz	"fread"                         ; string offset=630
	.local	.Linfo_string66
.Linfo_string66:
	.asciz	"fwrite"                        ; string offset=636
	.local	.Linfo_string67
.Linfo_string67:
	.asciz	"ftell"                         ; string offset=643
	.local	.Linfo_string68
.Linfo_string68:
	.asciz	"fseek"                         ; string offset=649
	.local	.Linfo_string69
.Linfo_string69:
	.asciz	"rewind"                        ; string offset=655
	.local	.Linfo_string70
.Linfo_string70:
	.asciz	"fgetc"                         ; string offset=662
	.local	.Linfo_string71
.Linfo_string71:
	.asciz	"fgets"                         ; string offset=668
	.local	.Linfo_string72
.Linfo_string72:
	.asciz	"ungetc"                        ; string offset=674
	.local	.Linfo_string73
.Linfo_string73:
	.asciz	"fputc"                         ; string offset=681
	.local	.Linfo_string74
.Linfo_string74:
	.asciz	"fputs"                         ; string offset=687
	.local	.Linfo_string75
.Linfo_string75:
	.asciz	"remove"                        ; string offset=693
	.local	.Linfo_string76
.Linfo_string76:
	.asciz	"rename"                        ; string offset=700
	.local	.Linfo_string77
.Linfo_string77:
	.asciz	"getchar"                       ; string offset=707
	.local	.Linfo_string78
.Linfo_string78:
	.asciz	"putchar"                       ; string offset=715
	.local	.Linfo_string79
.Linfo_string79:
	.asciz	"puts"                          ; string offset=723
	.local	.Linfo_string80
.Linfo_string80:
	.asciz	"getc"                          ; string offset=728
	.local	.Linfo_string81
.Linfo_string81:
	.asciz	"putc"                          ; string offset=733
	.local	.Linfo_string82
.Linfo_string82:
	.asciz	"printf"                        ; string offset=738
	.local	.Linfo_string83
.Linfo_string83:
	.asciz	"vprintf"                       ; string offset=745
	.local	.Linfo_string84
.Linfo_string84:
	.asciz	"__builtin_va_list"             ; string offset=753
	.local	.Linfo_string85
.Linfo_string85:
	.asciz	"va_list"                       ; string offset=771
	.local	.Linfo_string86
.Linfo_string86:
	.asciz	"sprintf"                       ; string offset=779
	.local	.Linfo_string87
.Linfo_string87:
	.asciz	"vsprintf"                      ; string offset=787
	.local	.Linfo_string88
.Linfo_string88:
	.asciz	"snprintf"                      ; string offset=796
	.local	.Linfo_string89
.Linfo_string89:
	.asciz	"vsnprintf"                     ; string offset=805
	.local	.Linfo_string90
.Linfo_string90:
	.asciz	"fprintf"                       ; string offset=815
	.local	.Linfo_string91
.Linfo_string91:
	.asciz	"vfprintf"                      ; string offset=823
	.local	.Linfo_string92
.Linfo_string92:
	.asciz	"asprintf"                      ; string offset=832
	.local	.Linfo_string93
.Linfo_string93:
	.asciz	"vasprintf"                     ; string offset=841
	.local	.Linfo_string94
.Linfo_string94:
	.asciz	"sscanf"                        ; string offset=851
	.local	.Linfo_string95
.Linfo_string95:
	.asciz	"vsscanf"                       ; string offset=858
	.local	.Linfo_string96
.Linfo_string96:
	.asciz	"perror"                        ; string offset=866
	.local	.Linfo_string97
.Linfo_string97:
	.asciz	"main"                          ; string offset=873
	.section	.debug_str_offsets,"",@progbits
	d32	.Linfo_string0
	d32	.Linfo_string1
	d32	.Linfo_string2
	d32	.Linfo_string3
	d32	.Linfo_string4
	d32	.Linfo_string5
	d32	.Linfo_string6
	d32	.Linfo_string7
	d32	.Linfo_string8
	d32	.Linfo_string9
	d32	.Linfo_string10
	d32	.Linfo_string11
	d32	.Linfo_string12
	d32	.Linfo_string13
	d32	.Linfo_string14
	d32	.Linfo_string15
	d32	.Linfo_string16
	d32	.Linfo_string17
	d32	.Linfo_string18
	d32	.Linfo_string19
	d32	.Linfo_string20
	d32	.Linfo_string21
	d32	.Linfo_string22
	d32	.Linfo_string23
	d32	.Linfo_string24
	d32	.Linfo_string25
	d32	.Linfo_string26
	d32	.Linfo_string27
	d32	.Linfo_string28
	d32	.Linfo_string29
	d32	.Linfo_string30
	d32	.Linfo_string31
	d32	.Linfo_string32
	d32	.Linfo_string33
	d32	.Linfo_string34
	d32	.Linfo_string35
	d32	.Linfo_string36
	d32	.Linfo_string37
	d32	.Linfo_string38
	d32	.Linfo_string39
	d32	.Linfo_string40
	d32	.Linfo_string41
	d32	.Linfo_string42
	d32	.Linfo_string43
	d32	.Linfo_string44
	d32	.Linfo_string45
	d32	.Linfo_string46
	d32	.Linfo_string47
	d32	.Linfo_string48
	d32	.Linfo_string49
	d32	.Linfo_string50
	d32	.Linfo_string51
	d32	.Linfo_string52
	d32	.Linfo_string53
	d32	.Linfo_string54
	d32	.Linfo_string55
	d32	.Linfo_string56
	d32	.Linfo_string57
	d32	.Linfo_string58
	d32	.Linfo_string59
	d32	.Linfo_string60
	d32	.Linfo_string61
	d32	.Linfo_string62
	d32	.Linfo_string63
	d32	.Linfo_string64
	d32	.Linfo_string65
	d32	.Linfo_string66
	d32	.Linfo_string67
	d32	.Linfo_string68
	d32	.Linfo_string69
	d32	.Linfo_string70
	d32	.Linfo_string71
	d32	.Linfo_string72
	d32	.Linfo_string73
	d32	.Linfo_string74
	d32	.Linfo_string75
	d32	.Linfo_string76
	d32	.Linfo_string77
	d32	.Linfo_string78
	d32	.Linfo_string79
	d32	.Linfo_string80
	d32	.Linfo_string81
	d32	.Linfo_string82
	d32	.Linfo_string83
	d32	.Linfo_string84
	d32	.Linfo_string85
	d32	.Linfo_string86
	d32	.Linfo_string87
	d32	.Linfo_string88
	d32	.Linfo_string89
	d32	.Linfo_string90
	d32	.Linfo_string91
	d32	.Linfo_string92
	d32	.Linfo_string93
	d32	.Linfo_string94
	d32	.Linfo_string95
	d32	.Linfo_string96
	d32	.Linfo_string97
	.section	.debug_addr,"",@progbits
	d32	.Ldebug_addr_end0-.Ldebug_addr_start0 ; Length of contribution
	.local	.Ldebug_addr_start0
.Ldebug_addr_start0:
	dw	5                               ; DWARF version number
	db	3                               ; Address size
	db	0                               ; Segment selector size
	.local	.Laddr_table_base0
.Laddr_table_base0:
	d24	.Lfunc_begin0
	.local	.Ldebug_addr_end0
.Ldebug_addr_end0:
	.ident	"clang version 19.1.0 (https://github.com/CE-Programming/llvm-project ef28e9c54cd1333a6091ab2ffbd315b465fc5090)"
	.section	".note.GNU-stack","",@progbits
	.extern	.Lline_table_start0
	.extern	_llvm.eh.sjlj.functioncontext
	.extern	_llvm.eh.sjlj.lsda
	.extern	__Unwind_SjLj_Unregister
	.extern	_llvm.eh.sjlj.callsite
	.extern	_gfx_End
	.extern	_llvm.eh.sjlj.setup.dispatch
	.extern	_llvm.stacksave.p0
	.extern	__Unwind_SjLj_Register
	.extern	_llvm.frameaddress.p0
	.extern	_llvm.stackrestore.p0
	.extern	__Z4initv
	.extern	_gfx_Begin
	.section	.debug_line,"",@progbits
	.local	.Lline_table_start0
.Lline_table_start0:
