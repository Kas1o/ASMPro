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

	;AND A, B ->D �Ƿ��λһ
	mov al, numA
	and al, numB
	mov numD, al

	shl numD, 1

	;XOR C,D ->E �õ���λһ��
	mov al, numC
	XOR al, numD
	mov numE, al

	;���ڽ�λ?���ν�λ
	mov al, numC
	and al, numD
	shl al, 1
	;��������
	mov numD, al
	mov al, numE
	mov numC, al

	;XOR C,D ->E �õ���λ����
	mov al, numC
	XOR al, numD
	mov numE, al

	;���ڽ�λ?���ν�λ
	mov al, numC
	and al, numD
	shl al, 1
	;��������
	mov numD, al
	mov al, numE
	mov numC, al

	;XOR C,D ->E �õ���λ����
	mov al, numC
	XOR al, numD
	mov numE, al
	;���ڽ�λ?���ν�λ
	mov al, numC
	and al, numD
	shl al, 1
	;��������
	mov numD, al
	mov al, numE
	mov numC, al

	;XOR C,D ->E �õ���λ�Ĵ�
	mov al, numC
	XOR al, numD
	mov numE, al
	;���ڽ�λ?���ν�λ
	mov al, numC
	and al, numD
	shl al, 1
	;��������
	mov numD, al
	mov al, numE
	mov numC, al

	;XOR C,D ->E �õ���λ���
	mov al, numC
	XOR al, numD
	mov numE, al
	;���ڽ�λ?���ν�λ
	mov al, numC
	and al, numD
	shl al, 1
	;��������
	mov numD, al
	mov al, numE
	mov numC, al

	;XOR C,D ->E �õ���λ����
	mov al, numC
	XOR al, numD
	mov numE, al
	;���ڽ�λ?���ν�λ
	mov al, numC
	and al, numD
	shl al, 1
	;��������
	mov numD, al
	mov al, numE
	mov numC, al

	;XOR C,D ->E �õ���λ�ߴ�
	mov al, numC
	XOR al, numD
	mov numE, al
	;���ڽ�λ?���ν�λ
	mov al, numC
	and al, numD
	shl al, 1
	;��������
	mov numD, al
	mov al, numE
	mov numC, al

	;XOR C,D ->E �õ���λ�˴�
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