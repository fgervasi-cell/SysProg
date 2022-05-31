	ljmp	INIT

INIT:
A_BIT	equ	P2.0
B_BIT	equ	P2.1
C_BIT	equ	P2.2
D_BIT	equ	P2.3
E_BIT	equ	P2.4
F_BIT	equ	P2.5
G_BIT	equ	P2.6
H_BIT	equ	p2.7
	call	CLEAR_ALL
	ljmp	MAIN


MAIN:
	jnb	A_BIT, CALL_A
	jnb	B_BIT, CALL_B
	jnb	C_BIT, CALL_C
	jnb	D_BIT, CALL_D
	jnb	E_BIT, CALL_E
	jnb	F_BIT, CALL_F
	jnb	G_BIT, CALL_G
	jnb	H_BIT, CALL_H
	ljmp	MAIN

CALL_A:
	call	LETTER_A
	ljmp	MAIN

CALL_B:
	call	LETTER_L
	ljmp	MAIN

CALL_C:
	call	LETTER_C
	ljmp	MAIN

CALL_D:
	call	LETTER_D
	ljmp	MAIN

CALL_E:
	call	LETTER_E
	ljmp	MAIN

CALL_F:
	call	LETTER_F
	ljmp	MAIN

CALL_G:
	call	LETTER_N
	ljmp	MAIN

CALL_H:
	call	LETTER_H
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
	ret

LETTER_B:
	mov	P0, #00011100B
	setb	P1.1
	setb	P1.5
	call 	CLEAR_ALL
	mov	P1, #00111110B
	setb	P0.1
	setb	P0.6
	call 	CLEAR_ALL
	mov 	P1, #00011100B
	setb	P0.3
	setb	P0.4
	call	CLEAR_ALL
	ret

LETTER_C:
	mov	P0, #01111110B
	setb	P1.1
	call	CLEAR_ALL
	mov	P1, #00111110B
	setb	P0.1
	setb	P0.6
	call 	CLEAR_ALL
	setb	P1.5
	setb	P0.2
	call	CLEAR_ALL
	setb	P1.5
	setb	P0.5
	call	CLEAR_ALL
	ret

LETTER_D:
	mov	P0, #00111100B
	setb	P1.2
	setb	P1.6
	call	CLEAR_ALL
	mov	P1, #00111110B
	setb	P0.1
	setb	P0.6
	call	CLEAR_ALL
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
	ret

LETTER_F:
	mov 	P0, #01111110B
	setb	P1.1
	call 	CLEAR_ALL
	mov 	P1, #00011110B
	setb	P0.1
	setb	P0.3
	call	CLEAR_ALL
	ret

LETTER_G:
	ret

LETTER_H:
	mov	P0, #01111110B
	setb	P1.1
	setb	P1.6
	call 	CLEAR_ALL
	mov 	P1, #01111110B
	setb	P0.4
	call	CLEAR_ALL
	ret

LETTER_L:
	mov	P0, #01111110B
	setb	P1.2
	call	CLEAR_ALL
	mov	P1, #00111100B
	setb	P0.6
	call	CLEAR_ALL
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
	ret
