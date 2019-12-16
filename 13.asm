.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExictCode:dword

.data
	arrayA BYTE 10 dup(?)

.code
main proc
	mov ecx, lengthof arrayA / 2
	mov edx lengthof arrayA
	mov esi, arrayA
l1:
	mov al arrayA[esi]
	mov bl, arrayA[edx]
	mov arrayA[esi], bl
	mov arrayA[edx], al
	inc esi
	dec edx
loop l1

	invoke ExitProcess, 0
	main endp
end main
