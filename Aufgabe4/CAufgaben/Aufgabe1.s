	.file	"Aufgabe1.c"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	recursion
	.type	recursion, @function
recursion:
.LFB11:
	.cfi_startproc
	push	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 136
	.cfi_def_cfa_offset 192
	mov	DWORD PTR 80[rsp], edi
	cmp	edi, 1
	jle	.L2
	lea	eax, -3[rdi]
	mov	DWORD PTR 36[rsp], 1
	mov	edx, edi
	mov	DWORD PTR 64[rsp], eax
	mov	DWORD PTR 32[rsp], 0
.L19:
	cmp	edx, 2
	je	.L20
	lea	eax, -2[rdx]
	sub	edx, 4
	mov	DWORD PTR 44[rsp], 0
	mov	DWORD PTR 84[rsp], eax
	mov	DWORD PTR 68[rsp], eax
	mov	eax, DWORD PTR 64[rsp]
	mov	DWORD PTR 40[rsp], 1
	and	eax, -2
	sub	edx, eax
	mov	DWORD PTR 92[rsp], edx
.L18:
	mov	edi, DWORD PTR 68[rsp]
	mov	edx, -1
	mov	eax, edi
	cmp	edi, 1
	je	.L4
	lea	ebx, -3[rdi]
	mov	DWORD PTR 52[rsp], 0
	mov	DWORD PTR 72[rsp], ebx
	mov	DWORD PTR 48[rsp], 1
.L17:
	cmp	eax, 2
	je	.L21
	mov	edx, DWORD PTR 72[rsp]
	lea	ecx, -2[rax]
	sub	eax, 4
	mov	DWORD PTR 60[rsp], 0
	mov	DWORD PTR 88[rsp], ecx
	and	edx, -2
	mov	DWORD PTR 76[rsp], ecx
	sub	eax, edx
	mov	DWORD PTR 56[rsp], 1
	mov	DWORD PTR 96[rsp], eax
.L16:
	mov	eax, DWORD PTR 76[rsp]
	mov	edx, -1
	mov	r11d, eax
	cmp	eax, 1
	je	.L6
	mov	DWORD PTR 4[rsp], 0
	lea	r9d, -3[rax]
	mov	r8d, 1
	mov	r13d, eax
	mov	r11d, r8d
	mov	r10d, r9d
.L15:
	mov	eax, 1
	cmp	r13d, 2
	je	.L7
	mov	eax, r10d
	lea	edx, -6[r13]
	mov	DWORD PTR 16[rsp], r13d
	lea	r8d, -4[r13]
	and	eax, -2
	mov	DWORD PTR 20[rsp], r11d
	mov	esi, 1
	mov	r15d, r8d
	sub	edx, eax
	mov	DWORD PTR 8[rsp], 0
	mov	DWORD PTR 28[rsp], edx
	mov	DWORD PTR 24[rsp], r10d
.L14:
	lea	r12d, 2[r15]
	cmp	r15d, -1
	je	.L8
	lea	r13d, -1[r15]
	mov	r11d, r15d
	xor	r9d, r9d
	mov	r10d, 1
	mov	edx, r12d
	mov	ecx, r13d
.L13:
	mov	r12d, 1
	cmp	edx, 2
	je	.L9
	mov	eax, ecx
	lea	edi, -4[rdx]
	mov	ebx, r11d
	xor	r12d, r12d
	and	eax, -2
	mov	r14d, 1
	mov	r8d, r15d
	sub	edi, eax
	mov	DWORD PTR 12[rsp], edi
.L12:
	mov	ebp, ebx
	mov	eax, -1
	cmp	ebx, 1
	je	.L10
	xor	r15d, r15d
	mov	r13d, 1
.L11:
	lea	edi, -1[rbp]
	mov	DWORD PTR 124[rsp], r11d
	sub	ebp, 2
	mov	DWORD PTR 120[rsp], ecx
	mov	DWORD PTR 116[rsp], r8d
	mov	DWORD PTR 112[rsp], r9d
	mov	DWORD PTR 108[rsp], r10d
	mov	DWORD PTR 104[rsp], edx
	mov	DWORD PTR 100[rsp], esi
	call	recursion
	mov	esi, DWORD PTR 100[rsp]
	mov	edx, DWORD PTR 104[rsp]
	imul	eax, r13d
	cmp	ebp, 1
	mov	r10d, DWORD PTR 108[rsp]
	mov	r9d, DWORD PTR 112[rsp]
	mov	r8d, DWORD PTR 116[rsp]
	mov	ecx, DWORD PTR 120[rsp]
	lea	r13d, 0[r13+r13*2]
	mov	r11d, DWORD PTR 124[rsp]
	lea	r15d, [r15+rax*2]
	jg	.L11
	lea	eax, -2[rbx]
	and	ebx, 1
	imul	r13d, ebx
	lea	ebp, 0[r13+r15]
.L10:
	imul	ebp, r14d
	mov	ebx, eax
	lea	r14d, [r14+r14*2]
	lea	r12d, [r12+rbp*2]
	cmp	DWORD PTR 12[rsp], eax
	jne	.L12
	mov	eax, ecx
	mov	r15d, r8d
	and	eax, 1
	imul	r14d, eax
	add	r12d, r14d
.L9:
	imul	r12d, r10d
	sub	edx, 2
	lea	r10d, [r10+r10*2]
	sub	r11d, 2
	sub	ecx, 2
	lea	r9d, [r9+r12*2]
	cmp	edx, 1
	jg	.L13
	mov	r12d, r15d
	and	r12d, 1
	imul	r12d, r10d
	add	r12d, r9d
.L8:
	imul	r12d, esi
	mov	eax, DWORD PTR 8[rsp]
	lea	esi, [rsi+rsi*2]
	sub	r15d, 2
	lea	eax, [rax+r12*2]
	mov	DWORD PTR 8[rsp], eax
	cmp	DWORD PTR 28[rsp], r15d
	jne	.L14
	mov	r10d, DWORD PTR 24[rsp]
	mov	r13d, DWORD PTR 16[rsp]
	mov	r11d, DWORD PTR 20[rsp]
	mov	eax, r10d
	and	eax, 1
	imul	eax, esi
	add	eax, DWORD PTR 8[rsp]
.L7:
	imul	eax, r11d
	mov	edi, DWORD PTR 4[rsp]
	sub	r13d, 2
	lea	r11d, [r11+r11*2]
	sub	r10d, 2
	lea	eax, [rdi+rax*2]
	mov	DWORD PTR 4[rsp], eax
	cmp	r13d, 1
	jg	.L15
	mov	eax, DWORD PTR 76[rsp]
	lea	edx, -2[rax]
	and	eax, 1
	imul	eax, r11d
	mov	r11d, DWORD PTR 4[rsp]
	add	r11d, eax
.L6:
	mov	ecx, DWORD PTR 56[rsp]
	mov	eax, r11d
	mov	DWORD PTR 76[rsp], edx
	imul	eax, ecx
	lea	ebx, [rcx+rcx*2]
	mov	DWORD PTR 56[rsp], ebx
	mov	ebx, DWORD PTR 60[rsp]
	lea	eax, [rbx+rax*2]
	mov	DWORD PTR 60[rsp], eax
	cmp	DWORD PTR 96[rsp], edx
	jne	.L16
	mov	edx, DWORD PTR 72[rsp]
	and	edx, 1
	imul	edx, DWORD PTR 56[rsp]
	add	edx, DWORD PTR 60[rsp]
.L5:
	mov	edi, DWORD PTR 48[rsp]
	mov	eax, DWORD PTR 88[rsp]
	sub	DWORD PTR 72[rsp], 2
	imul	edx, edi
	lea	ebx, [rdi+rdi*2]
	mov	edi, DWORD PTR 52[rsp]
	mov	DWORD PTR 48[rsp], ebx
	lea	ecx, [rdi+rdx*2]
	mov	DWORD PTR 52[rsp], ecx
	cmp	eax, 1
	jg	.L17
	mov	eax, DWORD PTR 68[rsp]
	lea	edx, -2[rax]
	and	eax, 1
	imul	eax, ebx
	add	eax, ecx
.L4:
	mov	ecx, DWORD PTR 40[rsp]
	mov	DWORD PTR 68[rsp], edx
	imul	eax, ecx
	lea	edi, [rcx+rcx*2]
	mov	ecx, DWORD PTR 44[rsp]
	mov	DWORD PTR 40[rsp], edi
	lea	eax, [rcx+rax*2]
	mov	DWORD PTR 44[rsp], eax
	cmp	DWORD PTR 92[rsp], edx
	jne	.L18
	mov	eax, DWORD PTR 64[rsp]
	and	eax, 1
	imul	eax, edi
	add	eax, DWORD PTR 44[rsp]
.L3:
	mov	edi, DWORD PTR 36[rsp]
	mov	ecx, DWORD PTR 32[rsp]
	mov	edx, DWORD PTR 84[rsp]
	sub	DWORD PTR 64[rsp], 2
	imul	eax, edi
	lea	edi, [rdi+rdi*2]
	mov	DWORD PTR 36[rsp], edi
	lea	eax, [rcx+rax*2]
	mov	DWORD PTR 32[rsp], eax
	cmp	edx, 1
	jg	.L19
	mov	eax, DWORD PTR 80[rsp]
	and	eax, 1
	imul	eax, edi
	add	eax, DWORD PTR 32[rsp]
	mov	DWORD PTR 80[rsp], eax
.L2:
	mov	eax, DWORD PTR 80[rsp]
	add	rsp, 136
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	rbp
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.L21:
	.cfi_restore_state
	mov	DWORD PTR 88[rsp], 0
	mov	edx, 1
	jmp	.L5
.L20:
	mov	DWORD PTR 84[rsp], 0
	mov	eax, 1
	jmp	.L3
	.cfi_endproc
.LFE11:
	.size	recursion, .-recursion
	.p2align 4
	.globl	iterative
	.type	iterative, @function
iterative:
.LFB12:
	.cfi_startproc
	mov	eax, edi
	cmp	esi, 1
	jle	.L50
	movsd	xmm1, QWORD PTR .LC0[rip]
	.p2align 4,,10
	.p2align 3
.L51:
	pxor	xmm0, xmm0
	lea	eax, [rax+rax*4]
	cvtsi2sd	xmm0, esi
	subsd	xmm0, xmm1
	cvttsd2si	esi, xmm0
	cmp	esi, 1
	jg	.L51
.L50:
	ret
	.cfi_endproc
.LFE12:
	.size	iterative, .-iterative
	.p2align 4
	.globl	tailrecursion
	.type	tailrecursion, @function
tailrecursion:
.LFB13:
	.cfi_startproc
	mov	eax, 1
	cmp	edi, 1
	jle	.L56
	movsd	xmm1, QWORD PTR .LC0[rip]
	.p2align 4,,10
	.p2align 3
.L55:
	pxor	xmm0, xmm0
	lea	eax, [rax+rax*4]
	cvtsi2sd	xmm0, edi
	subsd	xmm0, xmm1
	cvttsd2si	edi, xmm0
	cmp	edi, 1
	jg	.L55
	ret
	.p2align 4,,10
	.p2align 3
.L56:
	ret
	.cfi_endproc
.LFE13:
	.size	tailrecursion, .-tailrecursion
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%d recusive\n"
.LC2:
	.string	"%d iterative\n"
.LC3:
	.string	"%d tailrec\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB14:
	.cfi_startproc
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	mov	edi, 5
	call	recursion
	lea	rdi, .LC1[rip]
	mov	esi, eax
	xor	eax, eax
	call	printf@PLT
	mov	esi, 25
	lea	rdi, .LC2[rip]
	xor	eax, eax
	call	printf@PLT
	mov	esi, 25
	lea	rdi, .LC3[rip]
	xor	eax, eax
	call	printf@PLT
	xor	eax, eax
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1073217536
	.ident	"GCC: (GNU) 10.2.0"
	.section	.note.GNU-stack,"",@progbits
