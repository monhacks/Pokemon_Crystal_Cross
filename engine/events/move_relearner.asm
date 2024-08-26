	const_def
	const MOVERELEARNERTEXT_INTRO
	const MOVERELEARNERTEXT_WHICHMON
	const MOVERELEARNERTEXT_WHICHMOVE
	const MOVERELEARNERTEXT_COMEAGAIN
	const MOVERELEARNERTEXT_EGG
	const MOVERELEARNERTEXT_NOTAPOKEMON
	const MOVERELEARNERTEXT_NOTENOUGHMONEY
	const MOVERELEARNERTEXT_NOMOVESTOLEARN

MoveRelearner:
	ld a, MOVERELEARNERTEXT_INTRO
	call PrintMoveRelearnerText
	special PlaceMoneyTopRight
	call YesNoBox
	jp c, .cancel
	ld hl, .cost_to_relearn
	ld de, hMoneyTemp
	ld bc, 3
	call CopyBytes
	ld bc, hMoneyTemp
	ld de, wMoney
	farcall CompareMoney
	jp c, .not_enough_money
	ld a, MOVERELEARNERTEXT_WHICHMON
	call PrintMoveRelearnerText
	call JoyWaitAorB

	ld b, $6
	farcall SelectMonFromParty
	jr c, .cancel

	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	cp EGG
	jr z, .egg

	call IsAPokemon
	jr c, .no_mon

	call GetRelearnableMoves            ;step 1
;	jr z, .no_moves                     ;is somehow looping through moves and returning 0

	ld a, MOVERELEARNERTEXT_WHICHMOVE
	call PrintMoveRelearnerText
	call JoyWaitAorB

	call ChooseMoveToLearn              ;step 2
	jr c, .skip_learn
	ld a, [wMenuSelection]
	ld [wNamedObjectIndex], a
	call GetMoveName
	ld hl, wStringBuffer1
	ld de, wStringBuffer2
	ld bc, wStringBuffer2 - wStringBuffer1
	call CopyBytes
	ld b, 0
	predef LearnMove
	ld a, b
	and a
	jr z, .skip_learn
	ld hl, .cost_to_relearn
	ld de, hMoneyTemp
	ld bc, 3
	call CopyBytes
	ld bc, hMoneyTemp
	ld de, wMoney
	farcall TakeMoney
	ld de, SFX_TRANSACTION
	call PlaySFX
	call WaitSFX
.skip_learn
	call CloseSubmenu
	call SpeechTextbox
.cancel
	ld a, MOVERELEARNERTEXT_COMEAGAIN
	call PrintMoveRelearnerText
	ret
.egg
	ld a, MOVERELEARNERTEXT_EGG
	call PrintMoveRelearnerText
	ret
.not_enough_money
	ld a, MOVERELEARNERTEXT_NOTENOUGHMONEY
	call PrintMoveRelearnerText
	ret
.no_mon
	ld a, MOVERELEARNERTEXT_NOTAPOKEMON
	call PrintMoveRelearnerText
	ret
.no_moves
	ld a, MOVERELEARNERTEXT_NOMOVESTOLEARN
	call PrintMoveRelearnerText
	ret

.cost_to_relearn
	dt 1000

GetRelearnableMoves:
	GLOBAL EvosAttacksPointers, EvosAttacksPointers2, EvosAttacksPointers1
	; Get moves relearnable by CurPartyMon
	; Returns z if no moves can be relearned.
	ld hl, wRelearner
	xor a
	ld [hli], a
	ld [hl], $ff                 ;mon species is 00? on debug- or is this the struct order
	ld a, MON_SPECIES	         ;store pokemon species in CurPartySpecies
	call GetPartyParamLocation
	ld a, [hl]
	ld [wCurPartySpecies], a
	push af                      ;says this is 1f (31), ..this is wrong?
	ld a, MON_LEVEL              ;store pokemon level in CurPartyLevel
	call GetPartyParamLocation
	ld a, [hl]
	ld [wCurPartyLevel], a
	ld b, 0                      ;list starts at zero
	ld de, wRelearner + 1
.loop
	push bc
	ld a, [wCurPartySpecies]     ;get current pokemon's evosattack pointer
	
	call GetPokemonIndexFromID
	ld b, h
	ld c, l
	ld hl, EvosAttacksPointers
	ld a, BANK(EvosAttacksPointers)
	call LoadDoubleIndirectPointer
	ldh [hTemp], a
	call FarSkipEvolutions       ;skip past the evolution data to the move data
	jr .loop_moves
	
.loop_moves2
	pop de
.loop_moves
	call GetNextEvoAttackByte2
	and a                        ;if zero, done
	jr z, .done
	ld c, a
	ld a, [wCurPartyLevel]
	cp c
;compare level first ^
	push de                      ;push de because it is in use storing the move list
	call GetNextEvoAttackByte2
	ld e, a
	call GetNextEvoAttackByte2
	ld d, a
	jr c, .loop_moves2            ;if level low enough, try to add move to list
.okay
	push hl
	ld h, d
	ld l, e
	call GetMoveIDFromIndex
	ld c, a
	pop hl
	pop de
;	call CheckAlreadyInList      ;if move is already in list, return to moves loop
;	jr c, .loop_moves            ;I don't care about fixing this
	call CheckPokemonAlreadyKnowsMove
	jr c, .loop_moves            ;if mon already knows move, return to moves loop
	ld a, c
	ld [de], a                   ;not sure what's going on here, other than 
	inc de                       ;increasing the length of the move list
	ld a, $ff
	ld [de], a
	pop bc
	inc b                        ;inc number of moves in list
	push bc
	jr .loop_moves
.done
	pop bc
	pop af
	ld [wCurPartySpecies], a
	ld a, b                      ;number of moves in list
	ld [wRelearner], a
	and a
	ret

CheckAlreadyInList:
	push hl
	ld hl, wRelearner + 1
.loop
	ld a, [hli]
	cp $ff                       ;compare move ff?
	jr z, .nope
	cp c                         ;compare move in c to moves in list
	jr nz, .loop
	pop hl
	scf
	ret
.nope
	pop hl
	and a
	ret

CheckPokemonAlreadyKnowsMove:
	; Check if move c is in the selected pokemon's movepool already.
	; Returns c if yes.
	ld a, c
	push hl
	push bc
	ld c, a
	ld a, MON_MOVES
	call GetPartyParamLocation
	ld b, 4
.loop
	ld a, [hli]
	cp c                         ;compare move in c to moves in list
	jr z, .yes                   ;I honestly don't even think this worked before
	dec b
	jr nz, .loop
	pop bc
	pop hl
	and a
	ret
.yes
	pop bc
	pop hl
	scf
	ret

ChooseMoveToLearn:
	; Open a full-screen scrolling menu
	; Number of items stored in wRelearner
	; List of items stored in wRelearner + 1
	; Print move names, PP, details, and descriptions
	; Enable Up, Down, A, and B
	; Up scrolls up
	; Down scrolls down
	; A confirms selection
	; B backs out
	call FadeToMenu
	farcall BlankScreen
	call UpdateSprites
	ld hl, .MenuDataHeader
	call CopyMenuHeader
	xor a
	ld [wMenuCursorPosition], a
	ld a, 1
	ld [wMenuScrollPosition], a
	call ScrollingMenu
	call SpeechTextbox
	ld a, [wMenuJoypad]
	cp B_BUTTON
	jr z, .carry
	ld a, [wMenuSelection]
	ld [wPutativeTMHMMove], a
	and a
	ret

.carry
	scf
	ret

.MenuDataHeader: ; 0x15e18
	db $40 ; flags
	db 01, 01 ; start coords
	db 11, 19 ; end coords
	dw .menudata2
	db 1 ; default option
; 0x15e20

.menudata2: ; 0x15e20
	db $30 ; pointers
	db 5, 8 ; rows, columns
	db 1 ; horizontal spacing
	dbw 0, wRelearner
	dba .PrintMoveName
	dba .PrintDetails
	dba .PrintMoveDesc

.PrintMoveName
	push de
	ld a, [wMenuSelection]
	ld [wNamedObjectIndex], a
	call GetMoveName
	pop hl
	call PlaceString
	ret
.PrintDetails
	ld hl, wStringBuffer1
	ld bc, wStringBuffer2 - wStringBuffer1
	ld a, " "
	call ByteFill
	ld a, [wMenuSelection]
	cp $ff
	ret z
	push de
;	dec a                      ;-remove section
;	ld bc, MOVE_LENGTH
;	ld hl, Moves + MOVE_TYPE
;	call AddNTimes
;	ld a, BANK(Moves)
;	call GetFarByte
	ld l, a
	ld a, MOVE_TYPE
	call GetMoveAttribute      ;does this need a farcall? apparently not

	ld [wNamedObjectIndex], a
	; get move type
	and $3f
	; 5 characters
	ld c, a
	add a
	add a
	add c
	ld c, a
	ld b, 0
	ld hl, .Types
	add hl, bc
	ld d, h
	ld e, l

	ld hl, wStringBuffer1 + 5
	ld bc, 5
	call PlaceString
	ld hl, wStringBuffer1 + 9
	ld [hl], "/"
	; get move class

	ld a, [wMenuSelection]
;	dec a                      ;-remove section
;	ld bc, MOVE_LENGTH
;	ld hl, Moves + MOVE_PP
;	call AddNTimes
;	ld a, BANK(Moves)
;	call GetFarByte
	ld l, a
	ld a, MOVE_PP
	call GetMoveAttribute

	ld [wEngineBuffer1], a
	ld hl, wStringBuffer1 + 10
	ld de, wEngineBuffer1
	ld bc, $102
	call PrintNum
	ld hl, wStringBuffer1 + 12
	ld [hl], "@"

	ld hl, SCREEN_WIDTH - 5
	pop de
	add hl, de
	push de
	ld de, wStringBuffer1
	call PlaceString
	pop de
	ret

.Types
	db "NORM@"
	db "FIGH@"
	db " FLY@"
	db "POIS@"
	db "GRND@"
	db "ROCK@"
	db "BIRD@"
	db " BUG@"
	db " STL@"
	db "DARK@"

	db "TP09@"
	db "TP10@"
	db "TP11@"
	db "TP12@"
	db "TP13@"
	db "TP14@"
	db "TP15@"
	db "TP16@"
	db "TP17@"
	db "CRSE@"

	db "FIRE@"
	db "WATR@"
	db "GRAS@"
	db "ELEC@"
	db "PSYC@"
	db " ICE@"
	db "DRGN@"
	db "GHST@"

.PrintMoveDesc
	push de
	call SpeechTextbox
	ld a, [wMenuSelection]
	cp $ff
	pop de
	ret z
	ld [wCurSpecies], a
	hlcoord 1, 14
	predef PrintMoveDescription
	ret

PrintMoveRelearnerText:
    ld e, a
    ld d, 0
    ld hl, .TextPointers
    add hl, de
    add hl, de
    ld a, [hli]
    ld h, [hl]
    ld l, a
    call PrintText
    ret
.TextPointers
	dw .Intro
	dw .WhichMon
	dw .WhichMove
	dw .ComeAgain
	dw .Egg
	dw .NotMon
	dw .NotEnoughMoney
	dw .NoMovesToLearn

.Intro
	text "Hello! I am the"
	line "MOVE RELEARNER."

	para "But you can call"
	line "me HOLDEN."

	para "I know all the"
	line "moves that can be"

	para "learned for each"
	line "#MON."

	para "For just ¥1000, I"
	line "can share that"

	para "knowledge with"
	line "you. How about it?"
	done
.WhichMon
	text "Excellent! Which"
	line "#MON should"
	cont "remember a move?"
	done
.WhichMove
	text "Which move should"
	line "it remember?"
	done
.ComeAgain
	text "If you want your"
	line "#MON to remem-"
	cont "ber moves, come"
	cont "back to me."
	done
.Egg
	text "An EGG can't learn"
	line "moves."
	done
.NotMon
	text "What?! That's not"
	line "a #MON!"
	done
.NotEnoughMoney
	text "You don't have"
	line "enough money."
	done
.NoMovesToLearn
	text "This #MON can't"
	line "learn any moves"
	cont "from me."
	done
	
GetNextEvoAttackByte2:
	ldh a, [hTemp]
	call GetFarByte
	inc hl
	ret
	