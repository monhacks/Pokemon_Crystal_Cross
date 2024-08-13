probfri: MACRO
prob_totalfri = prob_totalfri + (\1)
	dw prob_totalfri * $ffff / 100
ENDM

EggMoveEggProbabilitiesFriday:
prob_totalfri = 0
; Eevee
	probfri 3
; Growlithe
	probfri 2
	probfri 2
	probfri 1
	probfri 2
; Totodile
	probfri 2
	probfri 1
	probfri 1
	probfri 1
	probfri 2
; Kangaskid
	probfri 2
	probfri 2
	probfri 2
; Sentret
	probfri 2
	probfri 2
	probfri 1
	probfri 2
; Doduo 
	probfri 2
	probfri 1
	probfri 1
	probfri 1
	probfri 1
; Paras 
	probfri 2
	probfri 1
	probfri 1
	probfri 1
	probfri 1
	probfri 1
; Skarmory 
	probfri 3
	probfri 2
	probfri 2
; Murkrow 
	probfri 2
	probfri 1
	probfri 1
	probfri 1
	probfri 2
; Spinarak 
	probfri 2
	probfri 1
	probfri 1
	probfri 1
	probfri 1
; Delibird 
	probfri 2
	probfri 1
	probfri 1
	probfri 1
	probfri 1
; Horsea
	probfri 2
	probfri 1
	probfri 2
	probfri 1
; Natu 
	probfri 2
	probfri 2
	probfri 1
	probfri 1
; Shuckle
	probfri 2
	probfri 2
	probfri 2
; Phanpy
	probfri 1
	probfri 2
	probfri 1
	probfri 2
; Sunkern
	probfri 2
	probfri 2
	probfri 1
; Eevee
	probfri 2
	
	
EggMoveEggSpeciesFriday:
	dw EEVEE      ;1
	dw GROWLITHE  ;2
	dw GROWLITHE  ;3
	dw GROWLITHE  ;4
	dw GROWLITHE  ;5
	dw TOTODILE   ;6
	dw TOTODILE   ;7
	dw TOTODILE   ;8
	dw TOTODILE   ;9
	dw TOTODILE   ;10
	dw KANGASKID  ;11
	dw KANGASKID  ;12
	dw KANGASKID  ;13
	dw SENTRET    ;14
	dw SENTRET    ;15
	dw SENTRET    ;16
	dw SENTRET    ;17
	dw DODUO      ;18
	dw DODUO      ;19
	dw DODUO      ;20
	dw DODUO      ;21
	dw DODUO      ;22
	dw PARAS      ;23
	dw PARAS      ;24
	dw PARAS      ;25
	dw PARAS      ;26
	dw PARAS      ;27
	dw PARAS      ;28
	dw SKARCHIC   ;29
	dw SKARCHIC   ;30
	dw SKARCHIC   ;31
	dw MURKROW    ;32
	dw MURKROW    ;33
	dw MURKROW    ;34
	dw MURKROW    ;35
	dw MURKROW    ;36
	dw SPINARAK   ;37
	dw SPINARAK   ;38
	dw SPINARAK   ;39
	dw SPINARAK   ;40
	dw SPINARAK   ;41
	dw DELIBIRD   ;42
	dw DELIBIRD   ;43
	dw DELIBIRD   ;44
	dw DELIBIRD   ;45
	dw DELIBIRD   ;46
	dw HORSEA     ;47
	dw HORSEA     ;48
	dw HORSEA     ;49
	dw HORSEA     ;50
	dw NATU       ;51
	dw NATU       ;52
	dw NATU       ;53
	dw NATU       ;54
	dw SHUCKLE    ;55
	dw SHUCKLE    ;56
	dw SHUCKLE    ;57
	dw PHANPY     ;58
	dw PHANPY     ;59
	dw PHANPY     ;60
	dw PHANPY     ;61
	dw SUNKERN    ;62
	dw SUNKERN    ;63
	dw SUNKERN    ;64
	dw EEVEE      ;65

EggMoveEggsFriday:

	; Eevee3
	dw TACKLE, TAIL_WHIP, ECHOED_VOICE, SAFEGUARD
	
	; Growlithe1
	dw EMBER, ENDURE, DOUBLE_KICK, BITE
	
	; Growlithe2
	dw EMBER, GROWL, MORNING_SUN, BITE
	
	; Growlithe3
	dw EMBER, CHARM, SAFEGUARD, SLAM
	
	; Growlithe4
	dw EMBER, LEER, DRAGON_RAGE, SWAGGER
	
	; Totodile1
	dw SCRATCH, LEER, DRAGON_DANCE, SLAM
	
	; Totodile2
	dw SCRATCH, ENDURE, AQUA_JET, FLAIL
	
	; Totodile3
	dw SCRATCH, LEER, MUD_SHOT, ANCIENTPOWER
	
	; Totodile4
	dw SCRATCH, LEER, POWERUPPUNCH, TAKE_DOWN
	
	; Totodile5
	dw SCRATCH, LEER, METAL_CLAW, WATER_GUN
	
	; Kangaskid1
	dw TACKLE, LEER, DOUBLE_KICK, SAFEGUARD
	
	; Kangaskid2
	dw TACKLE, LEER, LOW_KICK, SWAGGER
	
	; Kangaskid3
	dw TACKLE, DISABLE, ECHOED_VOICE, SING
	
	; Sentret1
	dw SCRATCH, LASER_FOCUS, PURSUIT, SLASH
	
	; Sentret2
	dw TACKLE, DEFENSE_CURL, ECHOED_VOICE, ROLLOUT
	
	; Sentret3
	dw SCRATCH, ENDURE, POWERUPPUNCH, REVERSAL
	
	; Sentret4
	dw SCRATCH, CHARM, SUPER_FANG, CONFUSION

	; Doduo1
	dw PECK, ENDURE, LOW_KICK, FLAIL
	
	; Doduo2
	dw PECK, GROWL, AIR_CUTTER, MIRROR_MOVE
	
	; Doduo3
	dw PECK, GROWL, FEATHERDANCE, SKY_ATTACK
	
	; Doduo4
	dw PECK, GROWL, JUMP_KICK, BATON_PASS
	
	; Doduo5
	dw MUD_SLAP, GROWL, EXTREMESPEED, HAZE
	
	; Paras1
	dw SCRATCH, EFFECT_SPORE, AGILITY, PSYBEAM
	
	; Paras2
	dw SCRATCH, ENDURE, METAL_CLAW, FLAIL
	
	; Paras3
	dw SCRATCH, EFFECT_SPORE, ACID_SPRAY, SYNTHESIS
	
	; Paras4
	dw SCRATCH, SWEET_SCENT, FELL_STINGER, LEECH_SEED
	
	; Paras5
	dw SCRATCH, EFFECT_SPORE, PURSUIT, SCREECH
	
	; Paras6
	dw SCRATCH, EFFECT_SPORE, SHARPEN, BUG_BITE
	
	; Skarmory1
	dw PECK, LEER, METAL_CLAW, X_SCISSOR
	
	; Skarmory2
	dw PECK, ENDURE, SKY_ATTACK, HAZE
	
	; Skarmory3
	dw PECK, LEER, PURSUIT, MIRROR_MOVE
	
	; Murkrow1
	dw PECK, PSYCH_UP, PERISH_SONG, HEX
	
	; Murkrow2
	dw PECK, SHARPEN, QUICK_ATTACK, DRILL_PECK
	
	; Murkrow3
	dw PECK, SPITE, FEATHERDANCE, AIR_CUTTER
	
	; Murkrow4
	dw PECK, SPITE, WHIRLWIND, SKY_ATTACK
	
	; Murkrow5
	dw PECK, SPITE, MYSTICALFIRE, OMINOUS_WIND
	
	; Spinarak1
	dw POISON_STING, DISABLE, FELL_STINGER, PSYBEAM
	
	; Spinarak2
	dw POISON_STING, GROWTH, PIN_MISSILE, SLASH
	
	; Spinarak3
	dw POISON_STING, STRING_SHOT, MEGAHORN, PURSUIT
	
	; Spinarak4
	dw POISON_STING, SHARPEN, X_SCISSOR, BATON_PASS 
	
	; Spinarak5
	dw POISON_STING, STRING_SHOT, SONICBOOM, BUG_BUZZ
	
	; Delibird1
	dw SPLASH, GROWL, CONFUSION, METRONOME
	
	; Delibird2
	dw PECK, GROWL, ECHOED_VOICE, SKY_ATTACK
	
	; Delibird3
	dw WATER_GUN, GROWL, AURORA_BEAM, SLAM
	
	; Delibird4
	dw PECK, GROWL, POWERUPPUNCH, BATON_PASS
	
	; Delibird5
	dw ICE_SHARD, GROWL, DESTINY_BOND, RAPID_SPIN
	
	; Horsea1
	dw WATER_GUN, DISABLE, MUD_SHOT, SMOG
	
	; Horsea2
	dw WATER_GUN, LEER, AURORA_BEAM, HAZE 
	
	; Horsea3
	dw WATER_GUN, LEER, DRAGON_RAGE, AQUA_JET
	
	; Horsea4
	dw POWDER_SNOW, LEER, CONFUSE_RAY, FLAIL
	
	; Natu1
	dw PECK, LEER, SKY_ATTACK, FEATHERDANCE
	
	; Natu2
	dw PECK, LEER, SILVER_WIND, REFRESH
	
	; Natu3
	dw PECK, PSYCH_UP, DRILL_PECK, HAZE
	
	; Natu4
	dw GUST, LEER, QUICK_ATTACK, SAND_ATTACK
	
	; Shuckle1
	dw WRAP, HARDEN, MIRROR_COAT, REFRESH
	
	; Shuckle2
	dw WRAP, SWEET_SCENT, MUD_SHOT, ENDURE
	
	; Shuckle3
	dw WRAP, STRING_SHOT, TRI_ATTACK, SWAGGER
	
	; Phanpy1
	dw TACKLE, GROWL, WATER_GUN, ECHOED_VOICE
	
	; Phanpy2
	dw TACKLE, GROWL, ANCIENTPOWER, REVERSAL
	
	; Phanpy3
	dw TACKLE, SAND_ATTACK, ICE_SHARD, HOWL
	
	; Phanpy4
	dw TACKLE, GROWL, BULK_UP, POWDER_SNOW
	
	; Sunkern1
	dw VINE_WHIP, GROWTH, SAFEGUARD, SING

	; Sunkern2
	dw POUND, ENDURE, MUD_SHOT, ACID_SPRAY

	; Sunkern3
	dw POUND, SWEET_SCENT, PSYBEAM, MORNING_SUN
	
	; EEVEE
	dw TACKLE, TAIL_WHIP, DOUBLE_KICK, FLAIL
	