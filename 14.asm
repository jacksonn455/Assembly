.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExictCode:dword

.data
	txtWord word 10 dup(?)
	txtDWord dword 10 dup(?)

.code
main proc
	mov ecx, lengthof txtWord
	mov esi, txtDWord
	mov ebx, 0
l1:
	mov ax, txtWord[ebx]
	movzx txtDWord[esi], eax
	inc esi
	inc ebx
loop l1

	invoke ExitProcess, 0
	main endp
end main
