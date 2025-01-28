;Effect Commands 2 because 1 is out of space
	
BattleCommand_EffectSporeStatusChance2:
	farcall BattleCommand_EffectChance
	; 1/2 chance of each status
	call BattleRandom
	swap a
	and %01
	jr z, .paralyze
	farcall BattleCommand_PoisonTarget
	jr .end
.paralyze
	farcall BattleCommand_ParalyzeTarget
.end
	ret
	
BattleCommand_AccuracyDownPoisonChance2:
	ld a, [wAttackMissed]
	and a
	jr nz, .end

	; 1/2 chance of poison
	call BattleRandom
	swap a
	and %01
	jr z, .end
	farcall BattleCommand_PoisonTarget
.end
	ret
	
BattleCommand_ElementFangChance2:
	farcall BattleCommand_EffectChance
	; 1/2 chance of each status
	call BattleRandom
	swap a
	and %01
	jr z, .checkfang
	farcall BattleCommand_FlinchTarget
	jr .end
.checkfang
	ld a, BATTLE_VARS_MOVE_EFFECT
	call GetBattleVar
	cp EFFECT_THUNDER_FANG
	jr z, .paralyze
	cp EFFECT_FIRE_FANG
	jr z, .burn
	;EFFECT_ICE_FANG
	farcall BattleCommand_FreezeTarget
	jr .end
.paralyze
	farcall BattleCommand_ParalyzeTarget
	jr .end
.burn
	farcall BattleCommand_BurnTarget
.end
	ret
	
BattleCommand_AuroraVeil2:	
	ld a, [wBattleWeather]
	cp WEATHER_HAIL
	jr nz, .failed
; screen
	ld hl, wPlayerScreens
	ld bc, wPlayerLightScreenCount
	ldh a, [hBattleTurn]
	and a
	jr z, .got_screens_pointer
	ld hl, wEnemyScreens
	ld bc, wEnemyLightScreenCount	
.got_screens_pointer
	bit SCREENS_LIGHT_SCREEN, [hl]
	jr nz, .failed
	bit SCREENS_REFLECT, [hl]
	jr nz, .failed
; set screens
	set SCREENS_LIGHT_SCREEN, [hl]
	set SCREENS_REFLECT, [hl]
	ld a, 5
	ld [bc], a
	inc bc
	ld [bc], a
.good
	farcall AnimateCurrentMove
	ld hl, AuroraVeilEffectText
	call StdBattleTextbox
	ret
.failed
	farcall AnimateFailedMove
	ld hl, ButItFailedText
	call StdBattleTextbox
	ret
