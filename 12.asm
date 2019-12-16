.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExictCode:dword

.data
	source BYTE "This is the source string", 0
	target BYTE SIZEOF source DUP(0), 0

.code
main proc
	mov esi, 0
	mov ecx, sizeof source
l1:
	mov al, source[ecx]
	mov target[esi], al
	inc esi
loop l1

	invoke ExitProcess, 0
	main endp
end main
