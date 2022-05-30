	ljmp	INIT

INIT:
	call	CLEAR_ALL
	ljmp	MAIN


MAIN:
	mov	R2, #0Ah
	call	LETTER_A
	call	LETTER_L
	call	LETTER_E
	call	LETTER_N
	call	LETTER_A
	ljmp	MAIN

CLEAR_ALL:
	mov	P0, #0000000B
	mov	P1, #0000000B
	ret


LETTER_A:
	mov	P0, #01111100B
	setb	P1.6
	setb	P1.1
	call	CLEAR_ALL
	mov	P1, #00111100B
	setb	P0.4
	setb	P0.1
	call	CLEAR_ALL
	djnz	R2, LETTER_A
	mov	R2, #0Ah
	ret


LETTER_L:
	mov	P0, #01111110B
	setb	P1.2
	call	CLEAR_ALL
	mov	P1, #00111100B
	setb	P0.6
	call	CLEAR_ALL
	djnz	R2, LETTER_L
	mov	R2, #0Ah
	ret


LETTER_E:
	mov	P0, #01111110B
	setb	P1.1
	call	CLEAR_ALL
	mov	P1, #00111110B
	setb	P0.1
	setb	P0.4
	setb	P0.6
	call	CLEAR_ALL
	djnz	R2, LETTER_E
	mov	R2, #05h
	ret

LETTER_N:
	mov	P0, #01111110B
	setb	P1.1
	setb	p1.6
	call	CLEAR_ALL
	setb	P0.2
	setb	P1.2
	call	CLEAR_ALL
	setb	p0.3
	setb	p1.3
	call	CLEAR_ALL
	setb	p0.4
	setb	p1.4
	call	CLEAR_ALL
	setb	p0.5
	setb	p1.5
	call	CLEAR_ALL
	djnz	R2, LETTER_N
	mov	R2, #0Ah
	ret

DELAY:
	djnz	R2, DELAY
	mov	R2, #05h
	ret
