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
	cmp	esi, 1
	jle	.L52
	mov	edx, 1
	xor	eax, eax
	mov	ecx, 1
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L53:
	mov	ecx, r8d
.L51:
	lea	eax, [rax+rax*2]
	add	edx, 1
	lea	r8d, [rax+rcx*2]
	mov	eax, ecx
	cmp	esi, edx
	jne	.L53
	mov	eax, r8d
	ret
	.p2align 4,,10
	.p2align 3
.L52:
	mov	r8d, edi
	mov	eax, r8d
	ret
	.cfi_endproc
.LFE12:
	.size	iterative, .-iterative
	.p2align 4
	.globl	tail_help
	.type	tail_help, @function
tail_help:
.LFB13:
	.cfi_startproc
	push	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	mov	edx, edi
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
	mov	DWORD PTR 88[rsp], edi
	cmp	edi, 1
	jle	.L55
	lea	edi, -3[rdi]
	mov	DWORD PTR 44[rsp], 1
	mov	eax, esi
	mov	DWORD PTR 72[rsp], edi
	mov	DWORD PTR 40[rsp], 0
.L72:
	sub	eax, 1
	cmp	edx, 2
	je	.L73
	mov	ecx, DWORD PTR 72[rsp]
	lea	esi, -2[rdx]
	sub	edx, 4
	mov	DWORD PTR 52[rsp], 0
	mov	DWORD PTR 92[rsp], esi
	and	ecx, -2
	mov	DWORD PTR 76[rsp], esi
	sub	edx, ecx
	mov	DWORD PTR 48[rsp], 1
	mov	DWORD PTR 100[rsp], edx
.L71:
	mov	esi, DWORD PTR 76[rsp]
	sub	eax, 1
	mov	ecx, -1
	mov	edx, esi
	cmp	esi, 1
	je	.L57
	lea	edi, -3[rsi]
	mov	DWORD PTR 60[rsp], 0
	mov	DWORD PTR 80[rsp], edi
	mov	DWORD PTR 56[rsp], 1
.L70:
	sub	eax, 1
	cmp	edx, 2
	je	.L74
	mov	ecx, DWORD PTR 80[rsp]
	lea	edi, -2[rdx]
	sub	edx, 4
	mov	DWORD PTR 68[rsp], 0
	mov	DWORD PTR 96[rsp], edi
	and	ecx, -2
	mov	DWORD PTR 84[rsp], edi
	sub	edx, ecx
	mov	DWORD PTR 64[rsp], 1
	mov	DWORD PTR 104[rsp], edx
.L69:
	mov	edi, DWORD PTR 84[rsp]
	sub	eax, 1
	mov	edx, -1
	mov	r10d, edi
	cmp	edi, 1
	je	.L59
	lea	ebx, -3[rdi]
	mov	r11d, 1
	mov	DWORD PTR 8[rsp], 0
	mov	DWORD PTR 4[rsp], ebx
	mov	esi, r11d
	mov	r11d, edi
	mov	r10d, esi
.L68:
	sub	eax, 1
	mov	edx, 1
	cmp	r11d, 2
	je	.L60
	mov	edx, DWORD PTR 4[rsp]
	lea	ecx, -6[r11]
	mov	DWORD PTR 28[rsp], r11d
	lea	r8d, -4[r11]
	mov	DWORD PTR 12[rsp], 0
	mov	r14d, r8d
	and	edx, -2
	mov	DWORD PTR 32[rsp], r10d
	sub	ecx, edx
	mov	DWORD PTR 36[rsp], ecx
	mov	ecx, 1
.L67:
	sub	eax, 1
	lea	r12d, 2[r14]
	cmp	r14d, -1
	je	.L61
	mov	DWORD PTR 20[rsp], r14d
	lea	r10d, -1[r14]
	mov	r11d, 1
	mov	r8d, r12d
	mov	DWORD PTR 16[rsp], 0
.L66:
	sub	eax, 1
	mov	r15d, 1
	cmp	r8d, 2
	je	.L62
	mov	edx, r10d
	lea	esi, -4[r8]
	mov	ebx, DWORD PTR 20[rsp]
	xor	r15d, r15d
	and	edx, -2
	mov	r13d, 1
	mov	r9d, r14d
	sub	esi, edx
	mov	DWORD PTR 24[rsp], esi
.L65:
	sub	eax, 1
	mov	ebp, ebx
	mov	edx, -1
	cmp	ebx, 1
	je	.L63
	xor	r14d, r14d
	mov	r12d, 1
.L64:
	lea	edi, -1[rbp]
	xor	edx, edx
	lea	esi, -1[rax]
	mov	DWORD PTR 124[rsp], r10d
	mov	DWORD PTR 120[rsp], r9d
	sub	ebp, 2
	mov	DWORD PTR 116[rsp], r11d
	mov	DWORD PTR 112[rsp], r8d
	mov	DWORD PTR 108[rsp], ecx
	call	tail_help
	mov	ecx, DWORD PTR 108[rsp]
	mov	r8d, DWORD PTR 112[rsp]
	imul	eax, r12d
	mov	r11d, DWORD PTR 116[rsp]
	mov	r9d, DWORD PTR 120[rsp]
	lea	r12d, [r12+r12*2]
	mov	r10d, DWORD PTR 124[rsp]
	lea	r14d, [r14+rax*2]
	xor	eax, eax
	cmp	ebp, 1
	jg	.L64
	lea	edx, -2[rbx]
	and	ebx, 1
	imul	r12d, ebx
	lea	ebp, [r12+r14]
.L63:
	imul	ebp, r13d
	mov	ebx, edx
	lea	r13d, 0[r13+r13*2]
	xor	eax, eax
	lea	r15d, [r15+rbp*2]
	cmp	DWORD PTR 24[rsp], edx
	jne	.L65
	mov	eax, r10d
	mov	r14d, r9d
	and	eax, 1
	imul	r13d, eax
	add	r15d, r13d
.L62:
	imul	r15d, r11d
	mov	eax, DWORD PTR 16[rsp]
	sub	r8d, 2
	lea	r11d, [r11+r11*2]
	sub	DWORD PTR 20[rsp], 2
	sub	r10d, 2
	lea	eax, [rax+r15*2]
	mov	DWORD PTR 16[rsp], eax
	xor	eax, eax
	cmp	r8d, 1
	jg	.L66
	mov	r12d, r14d
	and	r12d, 1
	imul	r12d, r11d
	add	r12d, DWORD PTR 16[rsp]
.L61:
	imul	r12d, ecx
	mov	eax, DWORD PTR 12[rsp]
	lea	ecx, [rcx+rcx*2]
	sub	r14d, 2
	lea	eax, [rax+r12*2]
	mov	DWORD PTR 12[rsp], eax
	xor	eax, eax
	cmp	DWORD PTR 36[rsp], r14d
	jne	.L67
	mov	edx, DWORD PTR 4[rsp]
	mov	r11d, DWORD PTR 28[rsp]
	mov	r10d, DWORD PTR 32[rsp]
	and	edx, 1
	imul	edx, ecx
	add	edx, DWORD PTR 12[rsp]
.L60:
	imul	edx, r10d
	mov	eax, DWORD PTR 8[rsp]
	sub	r11d, 2
	sub	DWORD PTR 4[rsp], 2
	lea	r10d, [r10+r10*2]
	lea	eax, [rax+rdx*2]
	mov	DWORD PTR 8[rsp], eax
	xor	eax, eax
	cmp	r11d, 1
	jg	.L68
	mov	eax, DWORD PTR 84[rsp]
	lea	edx, -2[rax]
	and	eax, 1
	imul	eax, r10d
	mov	r10d, DWORD PTR 8[rsp]
	add	r10d, eax
.L59:
	mov	esi, DWORD PTR 64[rsp]
	mov	eax, r10d
	mov	ebx, DWORD PTR 68[rsp]
	mov	DWORD PTR 84[rsp], edx
	imul	eax, esi
	lea	edi, [rsi+rsi*2]
	mov	DWORD PTR 64[rsp], edi
	lea	eax, [rbx+rax*2]
	mov	DWORD PTR 68[rsp], eax
	xor	eax, eax
	cmp	DWORD PTR 104[rsp], edx
	jne	.L69
	mov	eax, DWORD PTR 80[rsp]
	and	eax, 1
	imul	eax, edi
	add	eax, DWORD PTR 68[rsp]
.L58:
	mov	edi, DWORD PTR 56[rsp]
	mov	esi, DWORD PTR 60[rsp]
	mov	edx, DWORD PTR 96[rsp]
	sub	DWORD PTR 80[rsp], 2
	imul	eax, edi
	lea	ebx, [rdi+rdi*2]
	mov	DWORD PTR 56[rsp], ebx
	lea	eax, [rsi+rax*2]
	mov	DWORD PTR 60[rsp], eax
	xor	eax, eax
	cmp	edx, 1
	jg	.L70
	mov	eax, DWORD PTR 76[rsp]
	lea	ecx, -2[rax]
	and	eax, 1
	mov	edx, eax
	imul	edx, ebx
	add	edx, DWORD PTR 60[rsp]
.L57:
	mov	eax, DWORD PTR 48[rsp]
	mov	DWORD PTR 76[rsp], ecx
	imul	edx, eax
	lea	eax, [rax+rax*2]
	mov	DWORD PTR 48[rsp], eax
	mov	eax, DWORD PTR 52[rsp]
	lea	eax, [rax+rdx*2]
	mov	DWORD PTR 52[rsp], eax
	xor	eax, eax
	cmp	DWORD PTR 100[rsp], ecx
	jne	.L71
	mov	eax, DWORD PTR 72[rsp]
	and	eax, 1
	imul	eax, DWORD PTR 48[rsp]
	add	eax, DWORD PTR 52[rsp]
.L56:
	mov	esi, DWORD PTR 44[rsp]
	mov	edi, DWORD PTR 40[rsp]
	mov	edx, DWORD PTR 92[rsp]
	sub	DWORD PTR 72[rsp], 2
	imul	eax, esi
	lea	esi, [rsi+rsi*2]
	mov	DWORD PTR 44[rsp], esi
	lea	eax, [rdi+rax*2]
	mov	DWORD PTR 40[rsp], eax
	xor	eax, eax
	cmp	edx, 1
	jg	.L72
	mov	eax, DWORD PTR 88[rsp]
	and	eax, 1
	imul	eax, esi
	add	eax, DWORD PTR 40[rsp]
	mov	DWORD PTR 88[rsp], eax
.L55:
	mov	eax, DWORD PTR 88[rsp]
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
.L74:
	.cfi_restore_state
	mov	DWORD PTR 96[rsp], 0
	mov	eax, 1
	jmp	.L58
.L73:
	mov	DWORD PTR 92[rsp], 0
	mov	eax, 1
	jmp	.L56
	.cfi_endproc
.LFE13:
	.size	tail_help, .-tail_help
	.p2align 4
	.globl	tailrecursion
	.type	tailrecursion, @function
tailrecursion:
.LFB14:
	.cfi_startproc
	cmp	edi, 1
	jle	.L106
	push	r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	mov	esi, edi
	xor	r14d, r14d
	push	r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	lea	r13d, -1[rdi]
	push	r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	lea	r12d, -3[rdi]
	push	rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	lea	ebp, -2[rdi]
	mov	eax, ebp
	push	rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	mov	ebx, 1
	and	eax, -2
	sub	r12d, eax
.L103:
	sub	esi, 1
	mov	edi, r13d
	xor	edx, edx
	sub	r13d, 2
	call	tail_help
	xor	esi, esi
	imul	eax, ebx
	lea	ebx, [rbx+rbx*2]
	lea	r14d, [r14+rax*2]
	cmp	r13d, r12d
	jne	.L103
	mov	eax, ebp
	and	eax, 1
	imul	ebx, eax
	lea	eax, [rbx+r14]
	pop	rbx
	.cfi_def_cfa_offset 40
	pop	rbp
	.cfi_def_cfa_offset 32
	pop	r12
	.cfi_def_cfa_offset 24
	pop	r13
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L106:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	mov	eax, edi
	ret
	.cfi_endproc
.LFE14:
	.size	tailrecursion, .-tailrecursion
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d recusive\n"
.LC1:
	.string	"%d iterative\n"
.LC2:
	.string	"%d tailrec\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB15:
	.cfi_startproc
	sub	rsp, 8
	.cfi_def_cfa_offset 16
	mov	edi, 5
	call	recursion
	lea	rdi, .LC0[rip]
	mov	esi, eax
	xor	eax, eax
	call	printf@PLT
	mov	esi, 61
	lea	rdi, .LC1[rip]
	xor	eax, eax
	call	printf@PLT
	mov	edx, 5
	mov	esi, 5
	mov	edi, 5
	call	tail_help
	lea	rdi, .LC2[rip]
	mov	esi, eax
	xor	eax, eax
	call	printf@PLT
	xor	eax, eax
	add	rsp, 8
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE15:
	.size	main, .-main
	.ident	"GCC: (GNU) 10.2.0"
	.section	.note.GNU-stack,"",@progbits
