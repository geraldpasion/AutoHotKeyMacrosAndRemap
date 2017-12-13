; Macros
!x::Suspend

F1::^a
F2::^c
F3::^+v
F4::^v
F6::^z
F7::^y

NumpadEnd::^a
NumpadDown::^c
NumpadPgDn::^+v
NumpadClear::^x
NumpadLeft::^z
NumpadRight::^y
NumpadIns::^v
NumpadUp::^f
NumpadHome::^s
NumpadPgUp::^u
NumpadDel::^+i
NumpadAdd::F5
NumpadMult::^`
NumpadSub::Backspace


; Some codes for lazy stuff

F8::
	Send, PRICE

	count = 0
	while (count < 3){
	Send {Tab}
	Send {Down}
	Sleep, 10

	count++
	}

	Send {Down}
	Send {Tab}
	Send {Tab}
	Send {Enter}

Return

; Close all apps and prompt shut down

^o::
WinGet, id, list, , , Program Manager
Loop, %id%
{
	StringTrimRight, this_id, id%a_index%, 0
	WinGetTitle, this_title, ahk_id %this_id%
	winclose,%this_title%
}
Return

; For RegEx SpotLite Config	
F9::

	 Array := Object()

	 Array[0] := 2
	 Array[1] := 4

	count := 0
	Loop, 2{
			Loop, Array[count]{
			Send {Down}
		}
		Send {Enter}
		Send {Tab}

		count += 1

	} ; End Loop

Return