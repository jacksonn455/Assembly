.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExictCode:dword

.data
val2 DWORD 10d
val4 DWORD 2d

.code
main proc
	mov eax, val2
	sub eax, val4
	mov val2, eax

	main endp
end main
