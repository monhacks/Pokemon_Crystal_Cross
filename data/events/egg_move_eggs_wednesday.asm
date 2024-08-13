probwed: MACRO
prob_totalwed = prob_totalwed + (\1)
	dw prob_totalwed * $ffff / 100
ENDM

EggMoveEggProbabilitiesWednesday:
prob_totalwed = 0
; Chikorita
	probwed 2
	probwed 1
	probwed 1
	probwed 1
	probwed 2
; Magby
	probwed 3
	probwed 2
	probwed 2
; Goldeen
	probwed 2
	probwed 2
	probwed 1
	probwed 2
; Jigglypuff
	probwed 2
	probwed 1
	probwed 1
	probwed 2
; Aipom
	probwed 2
	probwed 2
	probwed 1
	probwed 2
; Hoothoot
	probwed 2
	probwed 1
	probwed 1
	probwed 1
	probwed 2
; Yanma
	probwed 2
	probwed 1
	probwed 1
	probwed 1
	probwed 1
; Qwilfish
	probwed 2
	probwed 1
	probwed 1
	probwed 2
; Sneasel
	probwed 1
	probwed 1
	probwed 1
	probwed 1
	probwed 1
	probwed 1
; Grimer
	probwed 2
	probwed 2
	probwed 2
; Staryu
	probwed 2
	probwed 1
	probwed 1
	probwed 2
; Aerodactyl
	probwed 2
	probwed 2
	probwed 1
	probwed 1
; Rhyhorn
	probwed 2
	probwed 1
	probwed 1
	probwed 2
; Heracross
	probwed 2
	probwed 1
	probwed 1
	probwed 1
	probwed 1
; Chinchou
	probwed 2
	probwed 2
	probwed 2
; Tangela
	probwed 1
	probwed 2
	probwed 2
	
	
EggMoveEggSpeciesWednesday:
	dw CHIKORITA     ;1
	dw CHIKORITA     ;2
	dw CHIKORITA     ;3
	dw CHIKORITA     ;4
	dw CHIKORITA     ;5
	dw MAGBY         ;6
	dw MAGBY         ;7
	dw MAGBY         ;8
	dw GOLDEEN       ;9
	dw GOLDEEN       ;10
	dw GOLDEEN       ;11
	dw GOLDEEN       ;12
	dw JIGGLYPUFF    ;13
	dw JIGGLYPUFF    ;14
	dw JIGGLYPUFF    ;15
	dw JIGGLYPUFF    ;16
	dw AIPOM         ;17
	dw AIPOM         ;18
	dw AIPOM         ;19
	dw AIPOM         ;20
	dw HOOTHOOT      ;21
	dw HOOTHOOT      ;22
	dw HOOTHOOT      ;23
	dw HOOTHOOT      ;24
	dw HOOTHOOT      ;25
	dw YANMA         ;26
	dw YANMA         ;27
	dw YANMA         ;28
	dw YANMA         ;29
	dw YANMA         ;30
	dw QWILFISH      ;31
	dw QWILFISH      ;32
	dw QWILFISH      ;33
	dw QWILFISH      ;34
	dw SNEASEL       ;35
	dw SNEASEL       ;36
	dw SNEASEL       ;37
	dw SNEASEL       ;38
	dw SNEASEL       ;39
	dw SNEASEL       ;40
	dw GRIMER        ;41
	dw GRIMER        ;42
	dw GRIMER        ;43
	dw STARYU        ;44
	dw STARYU        ;45
	dw STARYU        ;46
	dw STARYU        ;47
	dw AERODON       ;48
	dw AERODON       ;49
	dw AERODON       ;50
	dw AERODON       ;51
	dw RHYHORN       ;52
	dw RHYHORN       ;53
	dw RHYHORN       ;54
	dw RHYHORN       ;55
	dw HERACROSS     ;56
	dw HERACROSS     ;57
	dw HERACROSS     ;58
	dw HERACROSS     ;59
	dw HERACROSS     ;60
	dw CHINCHOU      ;61
	dw CHINCHOU      ;62
	dw CHINCHOU      ;63
	dw TANGELA       ;64
	dw TANGELA       ;65
	dw TANGELA       ;66
	

EggMoveEggsWednesday:

	; Chikorita1
	dw TACKLE, ENDURE, LEAF_BLADE, FLAIL
	
	; Chikorita2
	dw TACKLE, GROWL, ANCIENTPOWER, DRAGON_DANCE
	
	; Chikorita3
	dw TACKLE, SWEET_SCENT, TAKE_DOWN, MORNING_SUN
	
	; Chikorita4
	dw TACKLE, REFRESH, ECHOED_VOICE, SING
	
	; Chikorita5
	dw TACKLE, LEECH_SEED, VINE_WHIP, EFFECT_SPORE
	
	; Magby1
	dw SCRATCH, LEER, FLAME_WHEEL, SCREECH
	
	; Magby2
	dw SCRATCH, LEER, BELLY_DRUM, LOW_KICK
	
	; Magby3
	dw SCRATCH, ENDURE, POWERUPPUNCH, SWAGGER
	
	; Goldeen1
	dw PECK, TAIL_WHIP, PSYBEAM, HAZE
	
	; Goldeen2
	dw PECK, TAIL_WHIP, MUD_SHOT, HYDRO_PUMP
	
	; Goldeen3
	dw PECK, TAIL_WHIP, DRAGON_DANCE, AQUA_JET
	
	; Goldeen4
	dw SPLASH, TAIL_WHIP, BUBBLEBEAM, SLAM
	
	; Jigglypuff1
	dw POUND, PSYCH_UP, POWERUPPUNCH, PRESENT 
	
	; Jigglypuff2
	dw POUND, DEFENSE_CURL, PETAL_DANCE, SAFEGUARD
	
	; Jigglypuff3
	dw POUND, DEFENSE_CURL, BUBBLEBEAM, SPARK
	
	; Jigglypuff4
	dw POUND, DEFENSE_CURL, PERISH_SONG, MOONLIGHT
	
	; Aipom1
	dw SCRATCH, SPITE, NASTY_PLOT, MUD_SLAP
	
	; Aipom2
	dw SCRATCH, TAIL_WHIP, SWAGGER, SLAM
	
	; Aipom3
	dw SCRATCH, GROWL, METRONOME, SPARK
	
	; Aipom4
	dw SCRATCH, HOWL, PURSUIT, LOW_KICK
	
	; Hoothoot1
	dw PECK, MEAN_LOOK, PURSUIT, OMINOUS_WIND
	
	; Hoothoot2
	dw PECK, SUPERSONIC, PSYBEAM, RECOVER
	
	; Hoothoot3
	dw PECK, REFRESH, AGILITY, SILVER_WIND
	
	; Hoothoot4
	dw PECK, GROWL, FEATHERDANCE, MIRROR_MOVE
	
	; Hoothoot5
	dw TACKLE, GROWL, WHIRLWIND, SKY_ATTACK
	
	; Yanma1
	dw TACKLE, LASER_FOCUS, TAKE_DOWN, CONFUSION
	
	; Yanma2
	dw GUST, LASER_FOCUS, SILVER_WIND, REVERSAL
	
	; Yanma3
	dw LEECH_LIFE, QUIVER_DANCE, PSYBEAM, WHIRLWIND
	
	; Yanma4
	dw TACKLE, DRAGON_DANCE, QUICK_ATTACK, PURSUIT
	
	; Yanma5
	dw TACKLE, LASER_FOCUS, AIR_CUTTER, OMINOUS_WIND
	
	; Qwilfish1
	dw POISON_STING, HARDEN, FELL_STINGER, HEX
	
	; Qwilfish2
	dw TACKLE, SUPERSONIC, SPARK, HAZE
	
	; Qwilfish3
	dw TACKLE, HARDEN, AQUA_JET, ACID_SPRAY
	
	; Qwilfish4
	dw TACKLE, DEFENSE_CURL, BUBBLEBEAM, FLAIL
	
	; Sneasel1
	dw SCRATCH, LEER, VACUUM_WAVE, X_SCISSOR 
	
	; Sneasel2
	dw SCRATCH, PSYCH_UP, PSYCHO_CUT, MOONLIGHT
	
	; Sneasel3
	dw SCRATCH, SPITE, AIR_CUTTER, NASTY_PLOT
	
	; Sneasel4
	dw BITE, LEER, POWERUPPUNCH, POWDER_SNOW
	
	; Sneasel5
	dw SCRATCH, LEER, DIRE_CLAW, DOUBLE_KICK
	
	; Sneasel6
	dw SCRATCH, LEER, ICICLE_CRASH, LOW_KICK
	
	; Grimer1
	dw LICK, HARDEN, SCARY_FACE, MEAN_LOOK 
	
	; Grimer2
	dw POUND, HARDEN, POWERUPPUNCH, SLAM
	
	; Grimer3
	dw POUND, SPITE, PURSUIT, HAZE

	; Staryu1
	dw TACKLE, HARDEN, TRI_ATTACK, PSYCH_UP
	
	; Staryu2
	dw TACKLE, HARDEN, CONFUSION, SAFEGUARD
	
	; Staryu3
	dw TACKLE, SUPERSONIC, AURORA_BEAM, HAZE
	
	; Staryu4
	dw TACKLE, HARDEN, ANCIENTPOWER, ICE_SHARD
	
	; Aerodactyl1
	dw ROCK_THROW, LEER, WHIRLWIND, SKY_ATTACK
	
	; Aerodactyl2
	dw ROCK_THROW, LEER, TRI_ATTACK, GLARE
	
	; Aerodactyl3
	dw ROCK_THROW, SHARPEN, ACCELEROCK, PURSUIT
	
	; Aerodactyl4
	dw EMBER, LEER, DRAGON_DANCE, DRAGON_RAGE
	
	; Rhyhorn1
	dw TACKLE, ENDURE, FIRE_FANG, REVERSAL
	
	; Rhyhorn2
	dw TACKLE, TAIL_WHIP, ICE_FANG, PURSUIT
	
	; Rhyhorn3
	dw TACKLE, TAIL_WHIP, STOMP, CRUNCH
	
	; Rhyhorn4
	dw TACKLE, TAIL_WHIP, SCARY_FACE, SLAM
	
	; Heracross1
	dw TACKLE, HARDEN, LOW_KICK, FLAIL 
	
	; Heracross2
	dw TACKLE, LEER, SILVER_WIND, METAL_CLAW
	
	; Heracross3
	dw TACKLE, LEER, SKY_UPPERCUT, PURSUIT
	
	; Heracross4
	dw TACKLE, IRON_DEFENSE, BUG_BITE, SLAM
	
	; Heracross5
	dw TACKLE, LEER, BUG_BUZZ, FALSE_SWIPE
	
	; Chinchou1
	dw WATER_GUN, SUPERSONIC, RECOVER, HAZE
	
	; Chinchou2
	dw WATER_GUN, ENDURE, NASTY_PLOT, SCREECH
	
	; Chinchou3
	dw WATER_GUN, SUPERSONIC, PSYBEAM, AGILITY
	
	; Tangela1
	dw WRAP, GROWTH, CONFUSION, MORNING_SUN 

	; Tangela2
	dw WRAP, AMNESIA, SPARK, SWAGGER

	; Tangela3
	dw WRAP, ENDURE, LEECH_SEED, FLAIL