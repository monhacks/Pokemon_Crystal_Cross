EvolvePokemon:
	ld hl, wEvolvableFlags
	xor a
	ld [hl], a
	ld a, [wCurPartyMon]
	ld c, a
	ld b, SET_FLAG
	call EvoFlagAction
EvolveAfterBattle:
	xor a
	ld [wMonTriedToEvolve], a
	dec a
	ld [wCurPartyMon], a
	push hl
	push bc
	push de
	ld hl, wPartyCount

	push hl

EvolveAfterBattle_MasterLoop:
	ld hl, wCurPartyMon
	inc [hl]

	pop hl

	inc hl
	ld a, [hl]
	cp $ff
	jp z, .ReturnToMap

	ld [wEvolutionOldSpecies], a

	push hl
	ld a, [wCurPartyMon]
	ld c, a
	ld hl, wEvolvableFlags
	ld b, CHECK_FLAG
	call EvoFlagAction
	ld a, c
	and a
	jp z, EvolveAfterBattle_MasterLoop

	ld a, [wEvolutionOldSpecies]
	call GetPokemonIndexFromID
	ld b, h
	ld c, l
	ld hl, EvosAttacksPointers
	ld a, BANK(EvosAttacksPointers)
	call LoadDoubleIndirectPointer  ;start, outputs a + hl pointer to evo data
	ldh [hTemp], a                  ; a is backed up to temp

	push hl
	xor a
	ld [wMonType], a
	predef CopyMonToTempMon
	pop hl

.loop
	call GetNextEvoAttackByte  ;loads temp back into a, retrieves one byte in a, inc hl
	and a                      ;so a now contains the first byte of hl, and hl is inc'd
	jr z, EvolveAfterBattle_MasterLoop

	ld b, a                    ;the first byte of every evo data is the method, so compare

	ld a, [wLinkMode]
	and a
	jp nz, .dont_evolve_check

	ld a, b
	cp EVOLVE_ITEM             ;if Item, jump to item, hl is pointing to the item param
	jp z, .item
	
	cp EVOLVE_ITEM_LEVEL       ;if Item Level, jump to item_level, hl is pointing to the
	jp z, .item_level          ;item param
	
	cp EVOLVE_ITEM_REGION_SEVII ;if Item Region, jump to item_sevii, hl is pointing to
	jp z, .item_sevii           ;the item param

	ld a, [wForceEvolution]     ;I don't recall why this is here, the item evos jump
	and a                       ;before hitting this, which usually use this
	jp nz, .dont_evolve_check

	ld a, b
	cp EVOLVE_LEVEL             ;if Level, jump to level, hl is pointing to the level param
	jp z, .level

	cp EVOLVE_HAPPINESS         ;if Happiness, jump to happiness, hl is pointing to the
	jp z, .happiness            ;time of day param
	
	cp EVOLVE_LEVEL_REGION      ;if Evolve Region, jump to level_region, hl is pointing
	jp z, .level_region         ;to the level param
	
	cp EVOLVE_LEVEL_REGION_SEVII  ;if Evolve Sevii, jump to level_sevii, hl is pointing
	jp z, .level_sevii            ;to the level param
	
	cp EVOLVE_GENDER           ;if Gender, jump to gender, hl is pointing to the level param
	jp z, .gender
	
	cp EVOLVE_MOVE             ;if Move, jump to move, hl is pointing to the move param
	jp z, .move
	
	cp EVOLVE_HOLD_LEVEL       ;if Hold Level, jump to hold_level, hl is pointing to the
	jp z, .hold_level          ;item param
	
	cp EVOLVE_HOLD             ;if Hold, jump to hold, hl is pointing to the item param
	jp z, .hold

; EVOLVE_STAT
	call GetNextEvoAttackByte
	ld c, a
	ld a, [wTempMonLevel]
	cp c
	jp c, .dont_evolve_2

	call IsMonHoldingEverstone
	jp z, .dont_evolve_2

	push hl
	ld de, wTempMonAttack
	ld hl, wTempMonDefense
	ld c, 2
	call CompareBytes
	ld c, ATK_EQ_DEF
	jr z, .got_tyrogue_evo
	ld c, ATK_LT_DEF
	jr c, .got_tyrogue_evo
	ld c, ATK_GT_DEF
.got_tyrogue_evo
	pop hl

	call GetNextEvoAttackByte
	cp c
	jp nz, .dont_evolve_3
	jp .proceed
	
.gender
	call GetNextEvoAttackByte  ;retrieves next evo byte into a, inc hl to point to gender
	ld b, a                    ;a now contains the level required for evolution
	ld a, [wTempMonLevel]
	cp b
	jp c, .dont_evolve_2

	call IsMonHoldingEverstone
	jp z, .dont_evolve_2
	
	push hl
	ld a, TEMPMON
	ld [wMonType], a
	predef GetGender
	ld b, EVO_MALE
	jr nz, .got_gender
	ld b, EVO_FEMALE
	
.got_gender
	pop hl
	
	call GetNextEvoAttackByte  ;retrieves next evo byte into a, inc hl to point to evo
                               ;a now contains the gender required for evolution
	cp b
	jp nz, .dont_evolve_3 
	jp .proceed
	
.item_level
	call GetNextEvoAttackByte  ;retrieves next evo byte into a, inc hl to point to level
	ld b, a                    ;a now contains the item required for evolution
	ld a, [wCurItem]
	cp b
	jp nz, .dont_evolve_2
	
	call GetNextEvoAttackByte  ;retrieves next evo byte into a, inc hl to point to evo
	ld b, a                    ;a now contains the level required for evolution
	ld a, [wTempMonLevel]
	cp b
	jp c, .dont_evolve_3

	jp .proceed
	
.hold_level
	call GetNextEvoAttackByte  ;retrieves next evo byte into a, inc hl to point to level
	ld b, a                    ;a now contains the item required for evolution
	ld a, [wTempMonItem]
	cp b
	jp nz, .dont_evolve_2
	
	call GetNextEvoAttackByte  ;retrieves next evo byte into a, inc hl to point to evo
	ld b, a                    ;a now contains the level required for evolution
	ld a, [wTempMonLevel]
	cp b
	jp c, .dont_evolve_3

	xor a
	ld [wTempMonItem], a
	jp .proceed
	
.hold
	call GetNextEvoAttackByte  ;retrieves next evo byte into a, inc hl to point to evo
	ld b, a                    ;a now contains the item required for evolution
	ld a, [wTempMonItem]
	cp b
	jp nz, .dont_evolve_3

	xor a
	ld [wTempMonItem], a
	jp .proceed
	
.item_sevii
	call GetNextEvoAttackByte  ;retrieves next evo byte into a, inc hl to point to evo
	ld b, a                    ;a now contains the item required for evolution
	ld a, [wCurItem]
	cp b
	jp nz, .dont_evolve_3
	
	push hl
	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
	call GetWorldMapLocation
	pop hl
	
	cp SEVII_LANDMARK
	jp z, .proceed
	jp .dont_evolve_3
	
.move                     ;this works but I literally can't figure how to make it smaller
	call GetNextEvoAttackByte  ;retrieves next evo byte into a, inc hl to point to evo
	ld b, EVO_ANCIENT          ;a now contains the move param required for evolution
	ld c, EVO_DOUBLE
	cp b
	jr z, .ancient
	cp c
	jr z, .double
	jp .dont_evolve_3
 
.ancient                       ;'this is a terrible way of doing this'
	push hl
	ld a, [wTempMonMoves + 0]
	call GetMoveIndexFromID
	ld a, h
	if HIGH(ANCIENTPOWER)
		cp HIGH(ANCIENTPOWER)
	else
		and a
	endc
	ld a, l
	jr nz, .trymove2
	cp LOW(ANCIENTPOWER)
	jr z, .move_proceed

.trymove2
	ld a, [wTempMonMoves + 1]
	call GetMoveIndexFromID
	ld a, h
	if HIGH(ANCIENTPOWER)
		cp HIGH(ANCIENTPOWER)
	else
		and a
	endc
	ld a, l
	jr nz, .trymove3
	cp LOW(ANCIENTPOWER)
	jr z, .move_proceed
	
.trymove3	
	ld a, [wTempMonMoves + 2]
	call GetMoveIndexFromID
	ld a, h
	if HIGH(ANCIENTPOWER)
		cp HIGH(ANCIENTPOWER)
	else
		and a
	endc
	ld a, l
	jr nz, .trymove4
	cp LOW(ANCIENTPOWER)
	jr z, .move_proceed
	
.trymove4	
	ld a, [wTempMonMoves + 3]
	call GetMoveIndexFromID
	ld a, h
	if HIGH(ANCIENTPOWER)
		cp HIGH(ANCIENTPOWER)
	else
		and a
	endc
	ld a, l
	jp nz, .dont_evolve_3
	cp LOW(ANCIENTPOWER)
	jr z, .move_proceed
	pop hl
	jp .dont_evolve_3
	
.double
	push hl
	ld a, [wTempMonMoves + 0]
	call GetMoveIndexFromID
	ld a, h
	if HIGH(DOUBLE_HIT)
		cp HIGH(DOUBLE_HIT)
	else
		and a
	endc
	ld a, l
	jr nz, .trymove2b
	cp LOW(DOUBLE_HIT)
	jr z, .move_proceed

.trymove2b
	ld a, [wTempMonMoves + 1]
	call GetMoveIndexFromID
	ld a, h
	if HIGH(DOUBLE_HIT)
		cp HIGH(DOUBLE_HIT)
	else
		and a
	endc
	ld a, l
	jr nz, .trymove3b
	cp LOW(DOUBLE_HIT)
	jr z, .move_proceed
	
.trymove3b
	ld a, [wTempMonMoves + 2]
	call GetMoveIndexFromID
	ld a, h
	if HIGH(DOUBLE_HIT)
		cp HIGH(DOUBLE_HIT)
	else
		and a
	endc
	ld a, l
	jr nz, .trymove4b
	cp LOW(DOUBLE_HIT)
	jr z, .move_proceed
	
.trymove4b	
	ld a, [wTempMonMoves + 3]
	call GetMoveIndexFromID
	ld a, h
	if HIGH(DOUBLE_HIT)
		cp HIGH(DOUBLE_HIT)
	else
		and a
	endc
	ld a, l
	jp nz, .dont_evolve_3
	cp LOW(DOUBLE_HIT)
	jr z, .move_proceed
	pop hl
	jp .dont_evolve_3

.move_proceed
	pop hl
	jp .proceed

.happiness
	ld a, [wTempMonHappiness]
	cp HAPPINESS_TO_EVOLVE
	jp c, .dont_evolve_2

	call IsMonHoldingEverstone
	jp z, .dont_evolve_2

	call GetNextEvoAttackByte  ;retrieves next evo byte into a, inc hl to point to evo
	cp TR_ANYTIME              ;a now contains the time required for evolution
	jp z, .proceed
	cp TR_MORNDAY
	jr z, .happiness_daylight

; TR_EVENITE
	ld a, [wTimeOfDay]
	cp NITE_F
	jp c, .dont_evolve_3
	jp .proceed

.happiness_daylight
	ld a, [wTimeOfDay]
	cp NITE_F
	jp nc, .dont_evolve_3
	jp .proceed

.item
	call GetNextEvoAttackByte ;retrieves next evo byte into a, inc hl to point to evo
	ld b, a                   ;a now contains the item required for evolution
	ld a, [wCurItem]          
	cp b
	jp nz, .dont_evolve_3

	ld a, [wForceEvolution]
	and a
	jp z, .dont_evolve_3
	ld a, [wLinkMode]
	and a
	jp nz, .dont_evolve_3
	jr .proceed
	
.level_region
	call GetNextEvoAttackByte  ;retrieves next evo byte into a, inc hl to point to evo
	ld b, a                    ;a now contains the level required for evolution
	ld a, [wTempMonLevel]
	cp b
	jp c, .dont_evolve_3
	call IsMonHoldingEverstone
	jp z, .dont_evolve_3
	
	push hl
	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
	call GetWorldMapLocation
	pop hl
	
	cp KANTO_LANDMARK
	jp c, .dont_evolve_3
	jp .proceed
	
.level_sevii
	call GetNextEvoAttackByte  ;retrieves next evo byte into a, inc hl to point to evo
	ld b, a                    ;a now contains the level required for evolution
	ld a, [wTempMonLevel]
	cp b
	jp c, .dont_evolve_3
	call IsMonHoldingEverstone
	jp z, .dont_evolve_3
	
	push hl
	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
	call GetWorldMapLocation
	pop hl
	
	cp SEVII_LANDMARK          ;something about this is bugged
	jp c, .dont_evolve_3
	jr .proceed

.level
	call GetNextEvoAttackByte  ;retrieves next evo byte into a, inc hl to point to evo
	ld b, a                    ;a now contains the level required for evolution
	ld a, [wTempMonLevel]
	cp b
	jp c, .dont_evolve_3       ;+2
	call IsMonHoldingEverstone
	jp z, .dont_evolve_3

.proceed
	ld a, [wTempMonLevel]
	ld [wCurPartyLevel], a
	ld a, $1
	ld [wMonTriedToEvolve], a

	ldh a, [hTemp]             ;pointer is loaded back into a, hl should be pointing at 
	call GetFarWord            ;the evolution species param, we are done w/ evo bytes
	
	call GetPokemonIDFromIndex
	ld [wEvolutionNewSpecies], a
	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames
	call GetNick
	call CopyName1
	ld hl, EvolvingText
	call PrintText

	ld c, 50
	call DelayFrames

	xor a
	ldh [hBGMapMode], a
	hlcoord 0, 0
	lb bc, 12, 20
	call ClearBox

	ld a, $1
	ldh [hBGMapMode], a
	call ClearSprites
	
	ld a, TEMPMON
	ld [wMonType], a

	farcall EvolutionAnimation

	push af
	call ClearSprites
	pop af
	jp c, CancelEvolution

	ld hl, CongratulationsYourPokemonText
	call PrintText

	ld a, [wEvolutionNewSpecies]
	ld [wCurSpecies], a
	ld [wTempMonSpecies], a
	ld [wNamedObjectIndex], a
	call GetPokemonName

	push hl
	ld hl, EvolvedIntoText
	call PrintTextboxText
	farcall StubbedTrainerRankings_MonsEvolved

	ld de, MUSIC_NONE
	call PlayMusic
	ld de, SFX_CAUGHT_MON
	call PlaySFX
	call WaitSFX

	ld c, 40
	call DelayFrames

	call ClearTilemap
	call UpdateSpeciesNameIfNotNicknamed
	call GetBaseData

	ld hl, wTempMonExp + 2
	ld de, wTempMonMaxHP
	ld b, TRUE
	predef CalcMonStats

	ld a, [wCurPartyMon]
	ld hl, wPartyMons
	ld bc, PARTYMON_STRUCT_LENGTH
	call AddNTimes
	ld e, l
	ld d, h
	ld bc, MON_MAXHP
	add hl, bc
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld hl, wTempMonMaxHP + 1
	ld a, [hld]
	sub c
	ld c, a
	ld a, [hl]
	sbc b
	ld b, a
	ld hl, wTempMonHP + 1
	ld a, [hl]
	add c
	ld [hld], a
	ld a, [hl]
	adc b
	ld [hl], a

	ld hl, wTempMonSpecies
	ld bc, PARTYMON_STRUCT_LENGTH
	call CopyBytes

	ld a, [wCurSpecies]
	ld [wTempSpecies], a
	xor a
	ld [wMonType], a
	call LearnLevelMoves
	ld a, [wTempSpecies]
	call SetSeenAndCaughtMon

	ld a, [wTempSpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(UNOWN)
	if HIGH(UNOWN) == 0
		or h
	else
		jr nz, .skip_unown
		if HIGH(UNOWN) == 1
			dec h
		else
			ld a, h
			cp HIGH(UNOWN)
		endc
	endc
	jr nz, .skip_unown

	ld hl, wTempMonDVs
	predef GetVariant
	callfar UpdateUnownDex

.skip_unown
	pop de
	pop hl
	ld a, [wTempMonSpecies]
	ld [hl], a
	push hl
	ld l, e
	ld h, d
	jp EvolveAfterBattle_MasterLoop
	
.dont_evolve_check
	ld a, b
	cp EVOLVE_HOLD_LEVEL
	jr z, .dont_evolve_1
	cp EVOLVE_GENDER
	jr z, .dont_evolve_1
	cp EVOLVE_ITEM_LEVEL
	jr z, .dont_evolve_1
	cp EVOLVE_STAT
	jr nz, .dont_evolve_2

.dont_evolve_1
	inc hl
.dont_evolve_2
	inc hl
.dont_evolve_3
	inc hl
	inc hl
	jp .loop

.UnusedReturnToMap: ; unreferenced
	pop hl
.ReturnToMap:
	pop de
	pop bc
	pop hl
	ld a, [wLinkMode]
	and a
	ret nz
	ld a, [wBattleMode]
	and a
	ret nz
	ld a, [wMonTriedToEvolve]
	and a
	call nz, RestartMapMusic
	ret

UpdateSpeciesNameIfNotNicknamed:
	ld a, [wCurSpecies]
	push af
	ld a, [wBaseSpecies]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	pop af
	ld [wCurSpecies], a
	ld hl, wStringBuffer1
	ld de, wStringBuffer2
.loop
	ld a, [de]
	inc de
	cp [hl]
	inc hl
	ret nz
	cp "@"
	jr nz, .loop

	ld a, [wCurPartyMon]
	ld bc, MON_NAME_LENGTH
	ld hl, wPartyMonNicknames
	call AddNTimes
	push hl
	ld a, [wCurSpecies]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	ld hl, wStringBuffer1
	pop de
	ld bc, MON_NAME_LENGTH
	jp CopyBytes

CancelEvolution:
	ld hl, StoppedEvolvingText
	call PrintText
	call ClearTilemap
	jp EvolveAfterBattle_MasterLoop

IsMonHoldingEverstone:
	push hl
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1Item
	ld bc, PARTYMON_STRUCT_LENGTH
	call AddNTimes
	ld a, [hl]
	cp EVERSTONE
	pop hl
	ret

CongratulationsYourPokemonText:
	text_far _CongratulationsYourPokemonText
	text_end

EvolvedIntoText:
	text_far _EvolvedIntoText
	text_end

StoppedEvolvingText:
	text_far _StoppedEvolvingText
	text_end

EvolvingText:
	text_far _EvolvingText
	text_end

LearnLevelMoves:
	ld a, [wTempSpecies]
	ld [wCurPartySpecies], a
	call GetPokemonIndexFromID
	ld b, h
	ld c, l
	ld hl, EvosAttacksPointers
	ld a, BANK(EvosAttacksPointers)
	call LoadDoubleIndirectPointer
	ldh [hTemp], a
	call SkipEvolutions

.find_move
	call GetNextEvoAttackByte
	and a
	jr z, .done

	ld d, a
	ld a, [wEvolutionOldSpecies]
	ld e, a
	ld a, [wCurPartySpecies]
	cp e
	ld a, d
	jr z, .did_not_evolve

	cp LEARN_EVO_MOVE
	jr z, .get_move

.did_not_evolve
	ld b, a
	ld a, [wCurPartyLevel]
	cp b
	
.get_move
	call GetNextEvoAttackByte
	ld e, a
	call GetNextEvoAttackByte
	ld d, a
	jr nz, .find_move

	push hl
	ld h, d
	ld l, e
	call GetMoveIDFromIndex
	ld d, a
	ld hl, wPartyMon1Moves
	ld a, [wCurPartyMon]
	ld bc, PARTYMON_STRUCT_LENGTH
	call AddNTimes

	ld b, NUM_MOVES
.check_move
	call GetNextEvoAttackByte
	cp d
	jr z, .has_move
	dec b
	jr nz, .check_move
	jr .learn
.has_move

	pop hl
	jr .find_move

.learn
	ld a, d
	ld [wPutativeTMHMMove], a
	ld [wNamedObjectIndex], a
	call GetMoveName
	call CopyName1
	predef LearnMove
	pop hl
	jr .find_move

.done
	ld a, [wCurPartySpecies]
	ld [wTempSpecies], a
	ret

FillMoves:
; Fill in moves at de for wCurPartySpecies at wCurPartyLevel

	push hl
	push de
	push bc
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld b, h
	ld c, l
	ld hl, EvosAttacksPointers
	ld a, BANK(EvosAttacksPointers)
	call LoadDoubleIndirectPointer
	ldh [hTemp], a
	call SkipEvolutions
	jr .GetLevel

.NextMove:
	pop de
.GetMove:
	inc hl
	inc hl
.GetLevel:
	call GetNextEvoAttackByte
	and a
	jp z, .done
	ld b, a
	ld a, [wCurPartyLevel]
	cp b
	jp c, .done
	ld a, [wEvolutionOldSpecies]
	and a
	jr z, .CheckMove
	ld a, [wPrevPartyLevel]
	cp b
	jr nc, .GetMove

.CheckMove:
	push de
	ld c, NUM_MOVES
	
	ldh a, [hTemp]
	push hl
	call GetFarWord
	call GetMoveIDFromIndex
	pop hl
	ld b, a
	
.CheckRepeat:
	ld a, [de]
	inc de
	cp b
	jr z, .NextMove
	dec c
	jr nz, .CheckRepeat
	pop de
	push de
	ld c, NUM_MOVES
.CheckSlot:
	ld a, [de]
	and a
	jr z, .LearnMove
	inc de
	dec c
	jr nz, .CheckSlot
	pop de
	push de
	push hl
	ld h, d
	ld l, e
	call ShiftMoves
	ld a, [wEvolutionOldSpecies]
	and a
	jr z, .ShiftedMove
	push de
	ld bc, wPartyMon1PP - (wPartyMon1Moves + NUM_MOVES - 1)
	add hl, bc
	ld d, h
	ld e, l
	call ShiftMoves
	pop de

.ShiftedMove:
	pop hl

.LearnMove:
	ldh a, [hTemp]
	push hl
	call GetFarWord
	call GetMoveIDFromIndex
	pop hl
	ld b, a
	
	ld [de], a
	ld a, [wEvolutionOldSpecies]
	and a
	jr z, .NextMove
	push hl
	
	ld a, b
	ld hl, MON_PP - MON_MOVES
	add hl, de
	push hl
	ld l, a
	ld a, MOVE_PP
	call GetMoveAttribute
	pop hl
	ld [hl], a
	pop hl
	jp .NextMove

.done
	pop bc
	pop de
	pop hl
	ret

ShiftMoves:
	ld c, NUM_MOVES - 1
.loop
	inc de
	ld a, [de]
	ld [hli], a
	dec c
	jr nz, .loop
	ret

EvoFlagAction:
	push de
	ld d, $0
	predef SmallFarFlagAction
	pop de
	ret

GetLowestEvolutionStage:
; Return the first mon to evolve into wCurPartySpecies.
; Instead of looking it up, we just load it from a table. This is a lot more efficient.
	ld a, [wCurPartySpecies]    ; loading mother species into a
	call GetPokemonIndexFromID  ; in: a = 8-bit index, out: hl = 16-bit index; a clobbered
	ld bc, FirstEvoStages ;- 2   ; load this into bc?
	add hl, hl                  ; hl + hl, idk what this does
	add hl, bc                  ; hl + firstevostages bank?
	ld a, BANK(FirstEvoStages)  ; load bank?
	call GetFarWord             ; retrive a word from a (the bank), return in hl
	call GetPokemonIDFromIndex  ; convert hl back to a
	ld [wCurPartySpecies], a    ; load a into current species
	ret

SkipEvolutions::
; Receives a pointer to the evos and attacks for a mon in b:hl, and skips to the attacks.
	ld a, b
	call GetFarByte
	inc hl
	and a
	ret z
	cp EVOLVE_HOLD_LEVEL
	jr z, .extra_skip
	cp EVOLVE_GENDER
	jr z, .extra_skip
	cp EVOLVE_ITEM_LEVEL
	jr z, .extra_skip
	cp EVOLVE_STAT
	jr nz, .no_extra_skip
.extra_skip
	inc hl
.no_extra_skip
	inc hl
	inc hl
	inc hl
	jr SkipEvolutions

DetermineEvolutionItemResults::
; in: b:de: pointer to evos and attacks struct, wCurItem: item
; out: de: species ID or zero; a, b, hl: clobbered
	ld h, d
	ld l, e
	ld de, 0
	ld a, b
	ldh [hTemp], a
.loop
	call GetNextEvoAttackByte
	and a
	ret z
	cp EVOLVE_STAT
	jr z, .skip_species_two_parameters
	cp EVOLVE_GENDER
	jr z, .skip_species_two_parameters
	cp EVOLVE_MOVE
	jr z, .skip_species_two_parameters
	cp EVOLVE_HOLD
	jr z, .skip_species_two_parameters
	cp EVOLVE_HOLD_LEVEL
	jr z, .skip_species_three_parameters
	cp EVOLVE_ITEM_LEVEL
	jr z, .next	

	cp EVOLVE_ITEM
	jr nz, .skip_species_parameter

	call GetNextEvoAttackByte
	ld b, a	
	ld a, [wCurItem]
	cp b
	jr nz, .skip_species
	jr .species

.next
	call GetNextEvoAttackByte
	ld b, a	
	ld a, [wCurItem]
	cp b
	jr nz, .skip_species_parameter

	call GetNextEvoAttackByte
	ld b, a	
	ld a, [wTempMonLevel]
	cp b
	jr nz, .skip_species

.species
	ldh a, [hTemp]
	call GetFarWord
	ld d, h
	ld e, l
	ret

.skip_species_three_parameters
	inc hl
.skip_species_two_parameters
	inc hl
.skip_species_parameter
	inc hl
.skip_species
	inc hl
	inc hl
	jr .loop
	
GetNextEvoAttackByte:
	ldh a, [hTemp]
	call GetFarByte
	inc hl
	ret