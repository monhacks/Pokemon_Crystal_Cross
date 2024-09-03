MobileCheckOwnMonAnywhere:
; Like CheckOwnMonAnywhere, but only check for species.
; OT/ID don't matter.

	ld a, [wPartyCount]
	and a
	ret z

	ld d, a
	ld e, 0
	ld hl, wPartyMon1Species
	ld bc, wPartyMonOT
.asm_4a851
	call .CheckMatch
	ret c
	push bc
	ld bc, PARTYMON_STRUCT_LENGTH
	add hl, bc
	pop bc
	call .AdvanceOTName
	dec d
	jr nz, .asm_4a851
	ld a, BANK(sBoxCount)
	call OpenSRAM
	ld a, [sBoxCount]
	and a
	jr z, .asm_4a888
	ld d, a
	ld hl, sBoxMon1Species
	ld bc, sBoxMonOT
.asm_4a873
	call .CheckMatch
	jr nc, .asm_4a87c
	call CloseSRAM
	ret

.asm_4a87c
	push bc
	ld bc, BOXMON_STRUCT_LENGTH
	add hl, bc
	pop bc
	call .AdvanceOTName
	dec d
	jr nz, .asm_4a873

.asm_4a888
	call CloseSRAM
	ld c, 0
.asm_4a88d
	ld a, [wCurBox]
	and $f
	cp c
	jr z, .asm_4a8d1
	ld hl, .BoxAddrs
	ld b, 0
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [hli]
	call OpenSRAM
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [hl]
	and a
	jr z, .asm_4a8d1
	push bc
	push hl
	ld de, sBoxMons - sBoxCount
	add hl, de
	ld d, h
	ld e, l
	pop hl
	push de
	ld de, sBoxMonOT - sBoxCount
	add hl, de
	ld b, h
	ld c, l
	pop hl
	ld d, a
.asm_4a8ba
	call .CheckMatch
	jr nc, .asm_4a8c4
	pop bc
	call CloseSRAM
	ret

.asm_4a8c4
	push bc
	ld bc, BOXMON_STRUCT_LENGTH
	add hl, bc
	pop bc
	call .AdvanceOTName
	dec d
	jr nz, .asm_4a8ba
	pop bc

.asm_4a8d1
	inc c
	ld a, c
	cp NUM_BOXES
	jr c, .asm_4a88d
	call CloseSRAM
	and a
	ret

.CheckMatch:
	push bc
	push hl
	push de
	ld d, b
	ld e, c
	ld a, [wScriptVar]
	ld b, [hl]
	cp b
	jr nz, .no_match
	jr .match

.no_match
	pop de
	pop hl
	pop bc
	and a
	ret

.match
	pop de
	pop hl
	pop bc
	scf
	ret

.BoxAddrs:
	dba sBox1
	dba sBox2
	dba sBox3
	dba sBox4
	dba sBox5
	dba sBox6
	dba sBox7
	dba sBox8
	dba sBox9
	dba sBox10
	dba sBox11
	dba sBox12
	dba sBox13
	dba sBox14

.AdvanceOTName:
	push hl
	ld hl, NAME_LENGTH
	add hl, bc
	ld b, h
	ld c, l
	pop hl
	ret
