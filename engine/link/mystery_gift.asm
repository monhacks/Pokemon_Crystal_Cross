; hMGRole values
IR_RECEIVER EQU 1
IR_SENDER   EQU 2

DoMysteryGift:
;entierly sutbbed because there is no current use for this
	ret

UnlockMysteryGift:
; If [sMysteryGiftUnlocked] was -1, this sets both
; [sMysteryGiftUnlocked] and [sMysteryGiftItem] to 0.
	call GetMysteryGiftBank
	ld hl, sMysteryGiftUnlocked
	ld a, [hl]
	inc a
	jr nz, .ok
	ld [hld], a
	assert sMysteryGiftUnlocked - 1 == sMysteryGiftItem
	ld [hl], a
.ok
	jp CloseSRAM

ResetDailyMysteryGiftLimitIfUnlocked:
	call GetMysteryGiftBank
	ld a, [sNumDailyMysteryGiftPartnerIDs]
	cp -1 ; locked?
	jr z, .dont_clear
	xor a
	ld [sNumDailyMysteryGiftPartnerIDs], a
.dont_clear
	jp CloseSRAM

BackupMysteryGift:
; Copies [sMysteryGiftItem] to [sBackupMysteryGiftItem],
; and [sMysteryGiftUnlocked] to [sNumDailyMysteryGiftPartnerIDs].
	call GetMysteryGiftBank
	ld hl, sMysteryGiftItem
	ld de, sBackupMysteryGiftItem
	ld a, [hli]
	ld [de], a
	inc de
	assert sMysteryGiftItem + 1 == sMysteryGiftUnlocked
	assert sBackupMysteryGiftItem + 1 == sNumDailyMysteryGiftPartnerIDs
	ld a, [hl]
	ld [de], a
	jp CloseSRAM

RestoreMysteryGift:
; Copies [sBackupMysteryGiftItem] to [sMysteryGiftItem],
; and [sNumDailyMysteryGiftPartnerIDs] to [sMysteryGiftUnlocked].
	call GetMysteryGiftBank
	ld hl, sBackupMysteryGiftItem
	ld de, sMysteryGiftItem
	ld a, [hli]
	ld [de], a
	inc de
	assert sBackupMysteryGiftItem + 1 == sNumDailyMysteryGiftPartnerIDs
	assert sMysteryGiftItem + 1 == sMysteryGiftUnlocked
	ld a, [hl]
	ld [de], a
	jp CloseSRAM

ClearMysteryGiftTrainer:
	ld hl, wMysteryGiftTrainer
	xor a
	ld b, wMysteryGiftTrainerEnd - wMysteryGiftTrainer
.loop
	ld [hli], a
	dec b
	jr nz, .loop
	ret

GetMysteryGiftBank:
	ld a, BANK(sMysteryGiftData)
	jp OpenSRAM

StagePartyDataForMysteryGift:
; You will be sending this data to your mystery gift partner.
; Structure is the same as a trainer with species and moves
; defined.
	ld a, BANK(sPokemonData)
	call OpenSRAM
	ld de, wMysteryGiftStaging
	ld bc, sPokemonData + wPartyMons - wPokemonData
	ld hl, sPokemonData + wPartySpecies - wPokemonData
.loop
	ld a, [hli]
	cp -1
	jr z, .party_end
	cp EGG
	jr z, .next
	push hl
	; copy level
	ld hl, MON_LEVEL
	add hl, bc
	ld a, [hl]
	ld [de], a
	inc de
	; copy species
	ld hl, MON_SPECIES
	add hl, bc
	ld a, [hl]
	ld [de], a
	inc de
	; copy moves
	ld hl, MON_MOVES
	add hl, bc
	push bc
	ld bc, NUM_MOVES
	call CopyBytes
	pop bc
	pop hl
.next
	push hl
	ld hl, PARTYMON_STRUCT_LENGTH
	add hl, bc
	ld b, h
	ld c, l
	pop hl
	jr .loop
.party_end
	ld a, -1
	ld [de], a
	ld a, wMysteryGiftTrainerEnd - wMysteryGiftTrainer
	ld [wUnusedMysteryGiftStagedDataLength], a
	jp CloseSRAM

InitMysteryGiftLayout:
	call ClearBGPalettes
	call DisableLCD
	ld hl, MysteryGiftGFX
	ld de, vTiles2 tile $00
	ld a, BANK(MysteryGiftGFX)
	ld bc, $43 tiles
	call FarCopyBytes
	hlcoord 0, 0
	ld a, $42
	ld bc, SCREEN_HEIGHT * SCREEN_WIDTH
	call ByteFill
	hlcoord 3, 7
	lb bc, 9, 15
	call ClearBox
	hlcoord 0, 0
	ld a, $0
	ld [hli], a
	inc a
	ld [hl], a
	hlcoord 0, 1
	inc a
	ld [hli], a
	inc a
	ld [hl], a
	hlcoord 7, 1
	ld a, $12
	call .Load5GFX
	hlcoord 2, 2
	ld a, $17
	call .Load16GFX
	hlcoord 2, 3
	ld a, $27
	call .Load16GFX
	hlcoord 9, 4
	ld a, $37
	ld [hli], a
	inc a
	ld [hl], a
	hlcoord 1, 2
	ld [hl], $4
	hlcoord 1, 3
	ld a, $5
	call .Load14Column
	ld a, $9
	hlcoord 18, 5
	call .Load11Column
	hlcoord 2, 5
	ld a, $b
	call .Load16Row
	hlcoord 2, 16
	ld a, $7
	call .Load16Row
	hlcoord 2, 5
	ld a, $d
	call .Load5GFX
	hlcoord 7, 5
	ld [hl], $c
	hlcoord 18, 5
	ld [hl], $a
	hlcoord 18, 16
	ld [hl], $8
	hlcoord 1, 16
	ld [hl], $6
	hlcoord 2, 6
	ld a, $3a
	call .Load16Row
	hlcoord 2, 15
	ld a, $40
	call .Load16Row
	hlcoord 2, 6
	ld a, $3c
	call .Load9Column
	hlcoord 17, 6
	ld a, $3e
	call .Load9Column
	hlcoord 2, 6
	ld [hl], $39
	hlcoord 17, 6
	ld [hl], $3b
	hlcoord 2, 15
	ld [hl], $3f
	hlcoord 17, 15
	ld [hl], $41
	call EnableLCD
	call WaitBGMap
	ld b, SCGB_MYSTERY_GIFT
	call GetSGBLayout
	call SetPalettes
	ret

.Load5GFX:
	ld b, 5
	jr .gfx_loop

.Load16GFX:
	ld b, 16

.gfx_loop
	ld [hli], a
	inc a
	dec b
	jr nz, .gfx_loop
	ret

.Load9Column:
	ld b, 9
	jr .col_loop

.Load11Column:
	ld b, 11
	jr .col_loop

.Load14Column:
	ld b, 14

.col_loop
	ld [hl], a
	ld de, SCREEN_WIDTH
	add hl, de
	dec b
	jr nz, .col_loop
	ret

.Load16Row:
	ld b, 16
.row_loop
	ld [hli], a
	dec b
	jr nz, .row_loop
	ret

MysteryGiftGFX:
INCBIN "gfx/mystery_gift/mystery_gift.2bpp"
