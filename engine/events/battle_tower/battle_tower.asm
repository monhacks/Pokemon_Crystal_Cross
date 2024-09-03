BattleTowerRoomMenu:
; special
	call InitBattleTowerChallengeRAM
	farcall _BattleTowerRoomMenu
	ret

BattleTowerBattle:
	xor a ; FALSE
	ld [wBattleTowerBattleEnded], a
	call _BattleTowerBattle
	xor a
	ld l, LOCKED_MON_ID_BATTLE_TOWER_1
	call LockPokemonID
	ld l, LOCKED_MON_ID_BATTLE_TOWER_2
	call LockPokemonID
	ld l, LOCKED_MON_ID_BATTLE_TOWER_3
	call LockPokemonID
	lb bc, NUM_MOVES * 3, LOCKED_MOVE_ID_BATTLE_TOWER_MON1_MOVE1
.loop
	ld l, c
	call LockMoveID
	inc c
	dec b
	jr nz, .loop
	ret

InitBattleTowerChallengeRAM:
	xor a
	ld [wBattleTowerBattleEnded], a
	ld [wNrOfBeatenBattleTowerTrainers], a
	ld [wcf65], a
	ld [wcf66], a
	ret

_BattleTowerBattle:
.loop
	call .do_dw
	call DelayFrame
	ld a, [wBattleTowerBattleEnded]
	cp TRUE
	jr nz, .loop
	ret

.do_dw
	jumptable .dw, wBattleTowerBattleEnded

.dw
	dw RunBattleTowerTrainer
	dw SkipBattleTowerTrainer

RunBattleTowerTrainer:
	ld a, [wOptions]
	push af
	ld hl, wOptions
	set BATTLE_SHIFT, [hl] ; SET MODE

	ld a, [wInBattleTowerBattle]
	push af
	or 1
	ld [wInBattleTowerBattle], a

	xor a
	ld [wLinkMode], a
	farcall HealParty
	call ReadBTTrainerParty
	call Clears5_a89a

	predef StartBattle

	farcall LoadPokemonData
	farcall HealParty
	ld a, [wBattleResult]
	ld [wScriptVar], a
	and a ; WIN?
	jr nz, .lost
	ld a, BANK(sNrOfBeatenBattleTowerTrainers)
	call OpenSRAM
	ld a, [sNrOfBeatenBattleTowerTrainers]
	ld [wNrOfBeatenBattleTowerTrainers], a
	call CloseSRAM
	ld hl, wStringBuffer3
	ld a, [wNrOfBeatenBattleTowerTrainers]
	add "1"
	ld [hli], a
	ld a, "@"
	ld [hl], a

.lost
	pop af
	ld [wInBattleTowerBattle], a
	pop af
	ld [wOptions], a
	ld a, TRUE
	ld [wBattleTowerBattleEnded], a
	ret

ReadBTTrainerParty:
; Initialise the BattleTower-Trainer and his mon
	call CopyBTTrainer_FromBT_OT_TowBT_OTTemp

; Check the nicknames for illegal characters, and replace bad nicknames
; with their species names.
	ld de, wBT_OTTempMon1Name
	ld c, MON_NAME_LENGTH
	farcall CheckStringForErrors
	jr nc, .skip_mon_1

	ld a, [wBT_OTTempMon1]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	ld l, e
	ld h, d
	ld de, wBT_OTTempMon1Name
	ld bc, MON_NAME_LENGTH
	call CopyBytes

.skip_mon_1
	ld de, wBT_OTTempMon2Name
	ld c, MON_NAME_LENGTH
	farcall CheckStringForErrors
	jr nc, .skip_mon_2
	ld a, [wBT_OTTempMon2]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	ld l, e
	ld h, d
	ld de, wBT_OTTempMon2Name
	ld bc, MON_NAME_LENGTH
	call CopyBytes

.skip_mon_2
	ld de, wBT_OTTempMon3Name
	ld c, MON_NAME_LENGTH
	farcall CheckStringForErrors
	jr nc, .skip_mon_3
	ld a, [wBT_OTTempMon3]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	ld l, e
	ld h, d
	ld de, wBT_OTTempMon3Name
	ld bc, MON_NAME_LENGTH
	call CopyBytes

.skip_mon_3
; Add the terminator character to each of these names
	ld a, "@"
	ld [wBT_OTTempMon1NameEnd - 1], a
	ld [wBT_OTTempMon2NameEnd - 1], a
	ld [wBT_OTTempMon3NameEnd - 1], a
; Fix errors in the movesets
	call CheckBTMonMovesForErrors
; Repair the trainer name if needed, then copy it to wOTPlayerName
	ld de, wBT_OTTempName
	ld c, NAME_LENGTH - 1
	farcall CheckStringForErrors
	jr nc, .trainer_name_okay
	ld hl, BT_ChrisName
	jr .done_trainer_name

.trainer_name_okay
	ld hl, wBT_OTTempName

.done_trainer_name
	ld de, wOTPlayerName
	ld bc, NAME_LENGTH - 1
	call CopyBytes
	ld a, "@"
	ld [de], a

	ld hl, wBT_OTTempTrainerClass
	ld a, [hli]
	ld [wOtherTrainerClass], a
	ld a, LOW(wOTPartyMonNicknames)
	ld [wBGMapBuffer], a
	ld a, HIGH(wOTPartyMonNicknames)
	ld [wBGMapBuffer + 1], a

	; Copy mon into Memory from the address in hl
	ld de, wOTPartyMon1Species
	ld bc, wOTPartyCount
	ld a, BATTLETOWER_PARTY_LENGTH
	ld [bc], a
	inc bc
.otpartymon_loop
	push af
	ld a, [hl]
	ld [bc], a
	inc bc
	push bc
	ld bc, PARTYMON_STRUCT_LENGTH
	call CopyBytes
	push de
	ld a, [wBGMapBuffer]
	ld e, a
	ld a, [wBGMapBuffer + 1]
	ld d, a
	ld bc, MON_NAME_LENGTH
	call CopyBytes
	ld a, e
	ld [wBGMapBuffer], a
	ld a, d
	ld [wBGMapBuffer + 1], a
	pop de
	pop bc
	pop af
	dec a
	and a
	jr nz, .otpartymon_loop
	ld a, -1
	ld [bc], a
	ret

BT_ChrisName:
	db "CHRIS@"

CopyBTTrainer_FromBT_OT_TowBT_OTTemp:
; copy the BattleTower-Trainer data that lies at 'wBT_OTTrainer' to 'wBT_OTTemp'
	ldh a, [rSVBK]
	push af
	ld a, BANK(wBT_OTTrainer)
	ldh [rSVBK], a

	ld hl, wBT_OTTrainer
	ld de, wBT_OTTemp
	ld bc, BATTLE_TOWER_STRUCT_LENGTH
	call CopyBytes

	pop af
	ldh [rSVBK], a

	ld a, BANK(sBattleTowerChallengeState)
	call OpenSRAM
	ld a, BATTLETOWER_CHALLENGE_IN_PROGRESS
	ld [sBattleTowerChallengeState], a
	ld hl, sNrOfBeatenBattleTowerTrainers
	inc [hl]
	call CloseSRAM
SkipBattleTowerTrainer:
	ret

BattleTowerAction:
	jumptable .dw, wScriptVar

.dw
	dw BattleTowerAction_CheckExplanationRead          ;CHECK_EXPLANATION_READ
	dw BattleTowerAction_SetExplanationRead            ;SET_EXPLANATION_READ
	dw BattleTowerAction_GetChallengeState             ;GET_CHALLENGE_STATE
	dw BattleTowerAction_SetByteToQuickSaveChallenge   ;SAVE_AND_QUIT
	dw BattleTowerAction_SetByteToCancelChallenge      ;CHALLENGECANCELED
	dw BattleTowerAction_06                            ;06 ; reset stuff in SRAM bank 5
	dw SaveBattleTowerLevelGroup                       ;SAVELEVELGROUP
	dw LoadBattleTowerLevelGroup                       ;LOADLEVELGROUP
	dw BattleTower_CheckSaveFileExistsAndIsYours       ;CHECKSAVEFILEISYOURS
	dw BattleTowerAction_0A                            ;0A
	dw CheckMobileEventIndex                           ;CHECKMOBILEEVENT
	dw BattleTowerAction_11                            ;11 ; store 0 in s5_aa8d
	dw BattleTowerAction_12                            ;12 ; store 1 in s5_aa8d
	dw BattleTowerAction_LevelCheck                    ;LEVEL_CHECK                 ;unreferenced?
	dw BattleTowerAction_UbersCheck                    ;UBERS_CHECK                 ;unreferenced?
	dw ResetBattleTowerTrainersSRAM                    ;RESETDATA ; clear data
	dw BattleTower_GiveReward                          ;GIVEREWARD ; give reward
	dw BattleTowerAction_1C                            ;1C ; set won challenge
	dw BattleTowerAction_1D                            ;1D set received reward
	dw BattleTower_RandomlyChooseReward                ;CHOOSEREWARD ; save options
	dw BattleTower_SaveOptions                         ;SAVEOPTIONS

; Reset the save memory for BattleTower-Trainers (Counter and all 7 TrainerBytes)
ResetBattleTowerTrainersSRAM:
	ld a, BANK(sBTTrainers)
	call OpenSRAM

	ld a, $ff
	ld hl, sBTTrainers
	ld bc, BATTLETOWER_STREAK_LENGTH
	call ByteFill

	xor a
	ld [sNrOfBeatenBattleTowerTrainers], a

	call CloseSRAM

	ret

BattleTower_GiveReward:
	ld a, BANK(sBattleTowerReward)
	call OpenSRAM

	ld a, [sBattleTowerReward]
	call CloseSRAM
	ld [wScriptVar], a
	ld hl, wNumItems
	ld a, [hli]
	cp MAX_ITEMS
	ret c
	ld b, MAX_ITEMS
	ld a, [wScriptVar]
	ld c, a
.loop
	ld a, [hli]
	cp c
	jr nz, .next
	ld a, [hl]
	cp 95
	ret c
.next
	inc hl
	dec b
	jr nz, .loop
	ld a, POTION
	ld [wScriptVar], a
	ret

BattleTower_SaveOptions:
	farcall SaveOptions
	ret

BattleTower_RandomlyChooseReward:
; Generate a random stat boosting item.
.loop
	call Random
	ldh a, [hRandomAdd]
	and $7
	cp 6
	jr c, .okay
	sub 6
.okay
	add HP_UP
	push af
	ld a, BANK(sBattleTowerReward)
	call OpenSRAM
	pop af
	ld [sBattleTowerReward], a
	call CloseSRAM
	ret

BattleTowerAction_CheckExplanationRead:
	call BattleTower_CheckSaveFileExistsAndIsYours
	ld a, [wScriptVar]
	and a
	ret z

	ld a, BANK(sBattleTowerSaveFileFlags)
	call OpenSRAM
	ld a, [sBattleTowerSaveFileFlags]
	and 2
	ld [wScriptVar], a
	call CloseSRAM
	ret

BattleTowerAction_GetChallengeState:
	ld hl, sBattleTowerChallengeState
	ld a, BANK(sBattleTowerChallengeState)
	call OpenSRAM
	ld a, [hl]
	ld [wScriptVar], a
	call CloseSRAM
	ret

BattleTowerAction_SetExplanationRead:
	ld a, BANK(sBattleTowerSaveFileFlags)
	call OpenSRAM
	ld a, [sBattleTowerSaveFileFlags]
	or 2
	ld [sBattleTowerSaveFileFlags], a
	call CloseSRAM
	ret

BattleTowerAction_SetByteToQuickSaveChallenge:
	ld c, BATTLETOWER_SAVED_AND_LEFT
	jr SetBattleTowerChallengeState

BattleTowerAction_SetByteToCancelChallenge:
	ld c, BATTLETOWER_NO_CHALLENGE
SetBattleTowerChallengeState:
	ld a, BANK(sBattleTowerChallengeState)
	call OpenSRAM
	ld a, c
	ld [sBattleTowerChallengeState], a
	call CloseSRAM
	ret

SaveBattleTowerLevelGroup:
	ld a, BANK(sBTChoiceOfLevelGroup)
	call OpenSRAM
	ldh a, [rSVBK]
	push af
	ld a, BANK(wBTChoiceOfLvlGroup)
	ldh [rSVBK], a
	ld a, [wBTChoiceOfLvlGroup]
	ld [sBTChoiceOfLevelGroup], a
	pop af
	ldh [rSVBK], a
	call CloseSRAM
	ret

LoadBattleTowerLevelGroup: ; Load level group choice
	ld a, BANK(sBTChoiceOfLevelGroup)
	call OpenSRAM
	ldh a, [rSVBK]
	push af
	ld a, BANK(wBTChoiceOfLvlGroup)
	ldh [rSVBK], a
	ld a, [sBTChoiceOfLevelGroup]
	ld [wBTChoiceOfLvlGroup], a
	pop af
	ldh [rSVBK], a
	call CloseSRAM
	ret

BattleTower_CheckSaveFileExistsAndIsYours:
	ld a, [wSaveFileExists]
	and a
	jr z, .nope
	farcall CompareLoadedAndSavedPlayerID
	jr z, .yes
	xor a ; FALSE
	jr .nope

.yes
	ld a, TRUE

.nope
	ld [wScriptVar], a
	ret

BattleTowerAction_LevelCheck:
	ld a, BANK(s5_b2fb)
	call OpenSRAM
	ld a, [s5_b2fb]
	call CloseSRAM
	ld c, 10
	call SimpleDivide
	ld a, b
	ld [wcd4f], a
	xor a
	ld [wScriptVar], a
	farcall BattleTower_LevelCheck
	ret nc
	ld a, BANK(s5_b2fb)
	call OpenSRAM
	ld a, [s5_b2fb]
	call CloseSRAM
	ld [wScriptVar], a
	ret

BattleTowerAction_UbersCheck:
	ld a, BANK(s5_b2fb)
	call OpenSRAM
	ld a, [s5_b2fb]
	call CloseSRAM
	ld c, 10
	call SimpleDivide
	ld a, b
	ld [wcd4f], a
	xor a
	ld [wScriptVar], a
	farcall BattleTower_UbersCheck
	ret nc
	ld a, BANK(s5_b2fb)
	call OpenSRAM
	ld a, [s5_b2fb]
	call CloseSRAM
	ld [wScriptVar], a
	ret

LoadOpponentTrainerAndPokemonWithOTSprite:
	farcall LoadOpponentTrainerAndPokemon
	ldh a, [rSVBK]
	push af
	ld a, BANK(wBT_OTTrainerClass)
	ldh [rSVBK], a
	ld hl, wBT_OTTrainerClass
	ld a, [hl]
	dec a
	ld c, a
	ld b, 0
	pop af
	ldh [rSVBK], a
	ld hl, BTTrainerClassSprites
	add hl, bc
	ld a, [hl]
	ld [wBTTempOTSprite], a

; Load sprite of the opponent trainer
; because s/he is chosen randomly and appears out of nowhere
	ld a, [wScriptVar]
	dec a
	sla a
	ld e, a
	sla a
	sla a
	sla a
	ld c, a
	ld b, 0
	ld d, 0
	ld hl, wMapObjects
	add hl, bc
	inc hl
	ld a, [wBTTempOTSprite]
	ld [hl], a
	ld hl, wUsedSprites
	add hl, de
	ld [hli], a
	ldh [hUsedSpriteIndex], a
	ld a, [hl]
	ldh [hUsedSpriteTile], a
	farcall GetUsedSprite
	ret

INCLUDE "data/trainers/sprites.asm"

CheckForBattleTowerRules:
	farcall _CheckForBattleTowerRules
	jr c, .ready
	xor a ; FALSE
	jr .end

.ready
	ld a, TRUE

.end
	ld [wScriptVar], a
	ret
	
Clears5_a89a:
	ld a, BANK(s5_a89a)
	call OpenSRAM
	ld hl, s5_a89a
	xor a
	ld [hli], a
	ld [hl], a
	call CloseSRAM
	ret
	
BattleTowerAction_06:   ; Function1707f4
	ld a, BANK(s5_be46) ; aka BANK(s5_aa8b) and BANK(s5_aa8c)
	call OpenSRAM
	xor a
	ld [s5_be46], a
	ld [s5_aa8b], a
	ld [s5_aa8c], a
	call CloseSRAM
	ret
	
BattleTowerAction_0A:   ; Function1708b1
	xor a
	ld [wMusicFade], a
	call MaxVolume
	ret
	
BattleTowerAction_11:   ; Function170a9c
	ld c, FALSE
	jr Set_s5_aa8d

BattleTowerAction_12:   ; Function170aa0
	ld c, TRUE
Set_s5_aa8d:
	ld a, BANK(s5_aa8d)
	call OpenSRAM
	ld a, c
	ld [s5_aa8d], a
	call CloseSRAM
	ret
	
BattleTowerAction_1C:   ; Function17071b
	ld a, BANK(sBattleTowerChallengeState)
	call OpenSRAM
	ld a, BATTLETOWER_WON_CHALLENGE
	ld [sBattleTowerChallengeState], a
	call CloseSRAM
	ret
	
BattleTowerAction_1D:   ; Function170729
	ld a, BANK(sBattleTowerChallengeState)
	call OpenSRAM
	ld a, BATTLETOWER_RECEIVED_REWARD
	ld [sBattleTowerChallengeState], a
	call CloseSRAM
	ret
	
CheckBTMonMovesForErrors:
	ld c, BATTLETOWER_PARTY_LENGTH
	ld hl, wBT_OTTempMon1Moves
.loop
	push hl
	ld a, [hl]
	cp MOVE_TABLE_ENTRIES + 1
	jr c, .okay
	push hl
	ld hl, POUND
	call GetMoveIDFromIndex
	pop hl
	ld [hl], a

.okay
	inc hl
	ld b, NUM_MOVES - 1
	
.loop2
	ld a, [hl]
	and a
	jr z, .loop3
	cp MOVE_TABLE_ENTRIES + 1
	jr c, .next

.loop3
	xor a
	ld [hl], a
	inc hl
	dec b
	jr nz, .loop3
	jr .done

.next
	inc hl
	dec b
	jr nz, .loop2

.done
	pop hl
	ld de, NICKNAMED_MON_STRUCT_LENGTH
	add hl, de
	dec c
	jr nz, .loop
	ret
	
CheckMobileEventIndex: ; BattleTowerAction $0b something to do with GS Ball
	ld a, BANK(sMobileEventIndex)
	call OpenSRAM
	ld a, [sMobileEventIndex]
	ld [wScriptVar], a
	call CloseSRAM
	ret
