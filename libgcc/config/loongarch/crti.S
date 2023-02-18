/* Copyright (C) 2023 Free Software Foundation, Inc.
   Contributed by Loongson Ltd.
   Based on MIPS target for GNU compiler.

This file is part of GCC.

GCC is free software; you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3, or (at your option)
any later version.

GCC is distributed in the hope that it will be useful, but WITHOUT
ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public
License for more details.

Under Section 7 of GPL version 3, you are granted additional
permissions described in the GCC Runtime Library Exception, version
3.1, as published by the Free Software Foundation.

You should have received a copy of the GNU General Public License
and a copy of the GCC Runtime Library Exception along with this
program; see the files COPYING3 and COPYING.RUNTIME respectively.
If not, see <http://www.gnu.org/licenses/>.  */

.macro FUNC_START
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8
	addi.d	$sp, $sp, 16
	jr	$ra
.endm

	.section .init,"ax",@progbits
	.globl	_init
	.type	_init,@function
_init:
	FUNC_START

	.section .fini,"ax",@progbits
	.globl	_fini
	.type	_fini,@function
_fini:
	FUNC_START
