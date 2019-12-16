.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExictCode:dword

.data
val3 DWORD 2d

.code
main proc
	mov eax, 10
	sub eax, val3

	main endp
end main
