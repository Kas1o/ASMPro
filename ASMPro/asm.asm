.data

true db 11111111B
false db 00000000B

numA db 12
numB db 63
numC db 1
numD db 1
numE db 1

.code
;ADD
ABS proc

	;XOR A, B ->C
	mov al, numA
	xor al, numB
	mov numC, al

	;AND A, B ->D 是否进位一
	mov al, numA
	and al, numB
	mov numD, al

	shl numD, 1

	;XOR C,D ->E 得到进位一次
	mov al, numC
	XOR al, numD
	mov numE, al

	;仍在进位?二次进位
	mov al, numC
	and al, numD
	shl al, 1
	;往回设置
	mov numD, al
	mov al, numE
	mov numC, al

	;XOR C,D ->E 得到进位二次
	mov al, numC
	XOR al, numD
	mov numE, al

	;仍在进位?二次进位
	mov al, numC
	and al, numD
	shl al, 1
	;往回设置
	mov numD, al
	mov al, numE
	mov numC, al

	;XOR C,D ->E 得到进位三次
	mov al, numC
	XOR al, numD
	mov numE, al
	;仍在进位?二次进位
	mov al, numC
	and al, numD
	shl al, 1
	;往回设置
	mov numD, al
	mov al, numE
	mov numC, al

	;XOR C,D ->E 得到进位四次
	mov al, numC
	XOR al, numD
	mov numE, al
	;仍在进位?二次进位
	mov al, numC
	and al, numD
	shl al, 1
	;往回设置
	mov numD, al
	mov al, numE
	mov numC, al

	;XOR C,D ->E 得到进位五次
	mov al, numC
	XOR al, numD
	mov numE, al
	;仍在进位?二次进位
	mov al, numC
	and al, numD
	shl al, 1
	;往回设置
	mov numD, al
	mov al, numE
	mov numC, al

	;XOR C,D ->E 得到进位六次
	mov al, numC
	XOR al, numD
	mov numE, al
	;仍在进位?二次进位
	mov al, numC
	and al, numD
	shl al, 1
	;往回设置
	mov numD, al
	mov al, numE
	mov numC, al

	;XOR C,D ->E 得到进位七次
	mov al, numC
	XOR al, numD
	mov numE, al
	;仍在进位?二次进位
	mov al, numC
	and al, numD
	shl al, 1
	;往回设置
	mov numD, al
	mov al, numE
	mov numC, al

	;XOR C,D ->E 得到进位八次
	mov al, numC
	XOR al, numD
	mov numE, al

	ret
ABS endp

;test for shl oprt
BBS proc
	mov rax, 1
	shl rax, 1
	ret
BBS endp
end