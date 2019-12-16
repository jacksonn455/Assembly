.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExictCode:dword

.data
fibArray DWORD ?
sum DWORD ?
aux1 DWORD ?
aux2 DWORD ?

.code
main proc
	
	mov esi, OFFSET fibArray
	mov eax, 1
	mov [esi], eax
	add esi, 4
	;add esi, 4

	mov ecx, 5

L1:
	;sub esi, 4
	mov eax, [esi]
	mov ebx, [esi]
	mov aux2, ebx
	add esi, 8

	mov [esi], eax
	;add esi, 4
loop L1

	mov eax, [esi]

	main endp
end main
