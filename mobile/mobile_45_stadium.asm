GiveOddEgg:
	farcall _GiveOddEgg
	ret
	
AddMobileMonToParty:
	ld hl, wPartyCount
	ld a, [hl]
	ld e, a
	inc [hl]

	ld a, [wMobileMonSpeciesPointer]
	ld l, a
	ld a, [wMobileMonSpeciesPointer + 1]
	ld h, a
	inc hl
	ld bc, wPartySpecies
	ld d, e
.loop1
	inc bc
	dec d
	jr nz, .loop1
	ld a, e
	ld [wCurPartyMon], a
	ld a, [hl]
	ld [bc], a
	inc bc
	ld a, -1
	ld [bc], a

	ld hl, wPartyMon1Species
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, e
	ld [wMobileMonSpecies], a
.loop2
	add hl, bc
	dec a
	and a
	jr nz, .loop2
	ld e, l
	ld d, h
	ld a, [wMobileMonStructPointer]
	ld l, a
	ld a, [wMobileMonStructPointer + 1]
	ld h, a
	ld bc, PARTYMON_STRUCT_LENGTH
	call CopyBytes

	ld hl, wPartyMonOT
	ld bc, NAME_LENGTH
	ld a, [wMobileMonSpecies]
.loop3
	add hl, bc
	dec a
	and a
	jr nz, .loop3
	ld e, l
	ld d, h
	ld a, [wMobileMonOTNamePointer]
	ld l, a
	ld a, [wMobileMonOTNamePointer + 1]
	ld h, a
	ld bc, MON_NAME_LENGTH - 1
	call CopyBytes
	ld a, "@"
	ld [de], a

	ld hl, wPartyMonNicknames
	ld bc, MON_NAME_LENGTH
	ld a, [wMobileMonSpecies]
.loop4
	add hl, bc
	dec a
	and a
	jr nz, .loop4
	ld e, l
	ld d, h
	ld a, [wMobileMonNicknamePointer]
	ld l, a
	ld a, [wMobileMonNicknamePointer + 1]
	ld h, a
	ld bc, MON_NAME_LENGTH - 1
	call CopyBytes
	ld a, "@"
	ld [de], a

	ld hl, sPartyMail
	ld bc, MAIL_STRUCT_LENGTH
	ld a, [wMobileMonSpecies]
.loop5
	add hl, bc
	dec a
	and a
	jr nz, .loop5
	ld a, BANK(sPartyMail)
	call OpenSRAM
	ld e, l
	ld d, h
	ld a, [wMobileMonMailPointer]
	ld l, a
	ld a, [wMobileMonMailPointer + 1]
	ld h, a
	ld bc, MAIL_STRUCT_LENGTH
	call CopyBytes

	call CloseSRAM
	ret

_LinkBattleSendReceiveAction:
	call .StageForSend
	ld [wLinkBattleSentAction], a
	farcall PlaceWaitingText

	call .LinkBattle_SendReceiveAction

.done
	ret

.StageForSend:
	ld a, [wBattlePlayerAction]
	and a ; BATTLEPLAYERACTION_USEMOVE?
	jr nz, .switch
	ld a, [wCurPlayerMove]
	call GetMoveIndexFromID
	ld b, BATTLEACTION_STRUGGLE
	ld a, h
	if HIGH(STRUGGLE)
		cp HIGH(STRUGGLE)
	else
		and a
	endc
	jr nz, .not_struggle
	ld a, l
	cp LOW(STRUGGLE)
	jr z, .struggle
.not_struggle
	ld b, BATTLEACTION_SKIPTURN
	cp $ff
	jr z, .struggle
	ld a, [wCurMoveNum]
	jr .use_move

.switch
	ld a, [wCurPartyMon]
	add BATTLEACTION_SWITCH1
	jr .use_move

.struggle
	ld a, b

.use_move
	and $0f
	ret

.LinkBattle_SendReceiveAction:
	ld a, [wLinkBattleSentAction]
	ld [wPlayerLinkAction], a
	ld a, $ff
	ld [wOtherPlayerLinkAction], a
.waiting
	call LinkTransfer
	call DelayFrame
	ld a, [wOtherPlayerLinkAction]
	inc a
	jr z, .waiting

	ld b, 10
.receive
	call DelayFrame
	call LinkTransfer
	dec b
	jr nz, .receive

	ld b, 10
.acknowledge
	call DelayFrame
	call LinkDataReceived
	dec b
	jr nz, .acknowledge

	ld a, [wOtherPlayerLinkAction]
	ld [wBattleAction], a
	ret
	
INCLUDE "engine/events/battle_tower/battle_tower.asm"

