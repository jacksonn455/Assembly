.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExictCode:dword

.data
val2 DWORD 2d

.code
main proc
	incrementa:
	inc val2
	JMP incrementa
	invoke ExitProcess, 0
	main endp
end main
