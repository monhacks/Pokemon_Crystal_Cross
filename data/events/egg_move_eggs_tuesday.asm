probtue: MACRO
prob_totaltue = prob_totaltue + (\1)
	dw prob_totaltue * $ffff / 100
ENDM

EggMoveEggProbabilitiesTuesday:
prob_totaltue = 0
; Exeggcute
	probtue 2
	probtue 2
	probtue 2
; Ponyta	
	probtue 2
	probtue 1
	probtue 1
	probtue 2
; Squirtle
	probtue 1
	probtue 1
	probtue 1
	probtue 1
	probtue 1
	probtue 1
; Meowth
	probtue 1
	probtue 1
	probtue 1
	probtue 1
	probtue 1
	probtue 1
; Lickitung
	probtue 2
	probtue 2
	probtue 2
; Pidgey
	probtue 2
	probtue 2
	probtue 2
; Venonat
	probtue 2
	probtue 1
	probtue 1
	probtue 2
; Onix
	probtue 2
	probtue 1
	probtue 1
	probtue 2
; Houndour
	probtue 2
	probtue 1
	probtue 1
	probtue 1
	probtue 1
; NidoranM
	probtue 2
	probtue 1
	probtue 1
	probtue 1
	probtue 1
; Poliwag
	probtue 2
	probtue 1
	probtue 1
	probtue 2
; Abra
	probtue 2
	probtue 2
	probtue 2
; Bonsly
	probtue 2
	probtue 3
; Geodude
	probtue 2
	probtue 1
	probtue 2
; Machop
	probtue 3
	probtue 3
; Dunsparce
	probtue 2
	probtue 1
	probtue 1
	probtue 1
	probtue 1
; SandshrewA
	probtue 2
	probtue 1
	probtue 1
	probtue 2
	
	
EggMoveEggSpeciesTuesday:
	dw EXEGGCUTE    ;1
	dw EXEGGCUTE    ;2
	dw EXEGGCUTE    ;3
	dw PONYTA       ;4
	dw PONYTA       ;5
	dw PONYTA       ;6
	dw PONYTA       ;7
	dw SQUIRTLE     ;8
	dw SQUIRTLE     ;9
	dw SQUIRTLE     ;10
	dw SQUIRTLE     ;11
	dw SQUIRTLE     ;12
	dw SQUIRTLE     ;13
	dw MEOWTH       ;14
	dw MEOWTH       ;15
	dw MEOWTH       ;16
	dw MEOWTH       ;17
	dw MEOWTH       ;18
	dw MEOWTH       ;19
	dw LICKITUNG    ;20
	dw LICKITUNG    ;21
	dw LICKITUNG    ;22
	dw PIDGEY       ;23
	dw PIDGEY       ;24
	dw PIDGEY       ;25
	dw VENONAT      ;26
	dw VENONAT      ;27
	dw VENONAT      ;28
	dw VENONAT      ;29
	dw ONIX         ;30
	dw ONIX         ;31
	dw ONIX         ;32
	dw ONIX         ;33
	dw HOUNDOUR     ;34
	dw HOUNDOUR     ;35
	dw HOUNDOUR     ;36
	dw HOUNDOUR     ;37
	dw HOUNDOUR     ;38
	dw NIDORAN_M    ;39
	dw NIDORAN_M    ;40
	dw NIDORAN_M    ;41
	dw NIDORAN_M    ;42
	dw NIDORAN_M    ;43
	dw POLIWAG      ;44
	dw POLIWAG      ;45
	dw POLIWAG      ;46
	dw POLIWAG      ;47
	dw ABRA         ;48
	dw ABRA         ;49
	dw ABRA         ;50
	dw BONSLY       ;51
	dw BONSLY       ;52
	dw GEODUDE      ;53
	dw GEODUDE      ;54
	dw GEODUDE      ;55
	dw MACHOP       ;56
	dw MACHOP       ;57
	dw DUNSPARCE    ;58
	dw DUNSPARCE    ;59
	dw DUNSPARCE    ;60
	dw DUNSPARCE    ;61
	dw DUNSPARCE    ;62
	dw SANDSHREW_ALOLAN ;63
	dw SANDSHREW_ALOLAN ;64
	dw SANDSHREW_ALOLAN ;65
	dw SANDSHREW_ALOLAN ;66
	

EggMoveEggsTuesday:

	; Exeggcute1
	dw CONFUSION, HYPNOSIS, PSYBEAM, PSYCH_UP
	
	; Exeggcute2
	dw CONFUSION, HYPNOSIS, ANCIENTPOWER, ENDURE
	
	; Exeggcute3
	dw CONFUSION, HYPNOSIS, MOONLIGHT, REFRESH
	
	; Ponyta1
	dw TACKLE, CHARM, ECHOED_VOICE, BATON_PASS
	
	; Ponyta2
	dw TACKLE, GROWL, LICK, HYPNOSIS
	
	; Ponyta3
	dw QUICK_ATTACK, GROWL, JUMP_KICK, SWAGGER
	
	; Ponyta4
	dw TACKLE, GROWL, MORNING_SUN, LOW_KICK
	
	; Squirtle1
	dw TACKLE, TAIL_WHIP, CONFUSION, ECHOED_VOICE
	
	; Squirtle2
	dw TACKLE, TAIL_WHIP, AURORA_BEAM, HAZE
	
	; Squirtle3
	dw TACKLE, REFRESH, MIRROR_COAT, ANCIENTPOWER
	
	; Squirtle4
	dw TACKLE, ENDURE, POWDER_SNOW, FLAIL
	
	; Squirtle5
	dw TACKLE, TAIL_WHIP, POWERUPPUNCH, AQUA_JET
	
	; Squirtle6
	dw TACKLE, TAIL_WHIP, ROLLOUT, ICE_FANG

	; Meowth1
	dw SCRATCH, SPITE, PURSUIT, PERISH_SONG
	
	; Meowth2
	dw SCRATCH, GROWL, PSYCHO_CUT, PSYCH_UP
	
	; Meowth3
	dw SCRATCH, GROWL, HYPNOSIS, METAL_CLAW
	
	; Meowth4
	dw SCRATCH, GROWL, ICE_FANG, AMNESIA
	
	; Meowth5
	dw SCRATCH, SING, ECHOED_VOICE, FLAIL
	
	; Meowth6
	dw SCRATCH, GROWL, DIRE_CLAW, SCARY_FACE
	
	; Lickitung1
	dw LICK, DEFENSE_CURL, AMNESIA, ANCIENTPOWER
	
	; Lickitung2
	dw LICK, SUPERSONIC, POWERUPPUNCH, TAKE_DOWN
	
	; Lickitung3
	dw LICK, DEFENSE_CURL, POUND, MUD_SHOT
	
	; Pidgey1
	dw TACKLE, REFRESH, OMINOUS_WIND, MUD_SLAP
	
	; Pidgey2
	dw TACKLE, LEER, DRILL_PECK, FEATHERDANCE
	
	; Pidgey3
	dw TACKLE, SAND_ATTACK, PURSUIT, TAKE_DOWN
	
	; Venonat1
	dw TACKLE, STRING_SHOT, ACID_SPRAY, REFRESH
	
	; Venonat2
	dw TACKLE, DISABLE, AGILITY, BATON_PASS
	
	; Venonat3
	dw TACKLE, TELEPORT, LEECH_LIFE, HYPNOSIS
	
	; Venonat4
	dw TACKLE, SWEET_SCENT, POISON_STING, SCREECH

	; Onix1
	dw TACKLE, DEFENSE_CURL, ROLLOUT, ENDURE
	
	; Onix2
	dw TACKLE, ENDURE, IRON_DEFENSE, FLAIL
	
	; Onix3
	dw TACKLE, HARDEN, MIRROR_SHOT, DRAGON_DANCE
	
	; Onix4
	dw TACKLE, HARDEN, MIRROR_COAT, COIL

	; Houndour1
	dw EMBER, HOWL, SPITE, PURSUIT
	
	; Houndour2
	dw EMBER, LEER, TAKE_DOWN, DESTINY_BOND
	
	; Houndour3
	dw EMBER, HOWL, SUPER_FANG, CHARM
	
	; Houndour4
	dw EMBER, SMOKESCREEN, POISON_FANG, HEX
	
	; Houndour5
	dw EMBER, HOWL, FLAME_WHEEL, REVERSAL

	; NidoranM1
	dw PECK, LEER, PURSUIT, SLASH
	
	; NidoranM2
	dw PECK, LEER, DISABLE, CONFUSION
	
	; NidoranM3
	dw PECK, LEER, ECHOED_VOICE, AMNESIA
	
	; NidoranM4
	dw PECK, LEER, FELL_STINGER, POISON_FANG
	
	; NidoranM5
	dw PECK, LEER, SUPERSONIC, SUPER_FANG

	; Poliwag1
	dw POUND, GROWTH, CONFUSION, REFRESH
	
	; Poliwag2
	dw SPLASH, HYPNOSIS, POWDER_SNOW, AMNESIA
	
	; Poliwag3
	dw POUND, ENCORE, AURORA_BEAM, HAZE 
	
	; Poliwag4
	dw DEFENSE_CURL, HYPNOSIS, ECHOED_VOICE, ENDURE

	; Abra1
	dw TELEPORT, CONFUSION, METRONOME, COSMIC_POWER
	
	; Abra2
	dw HYPNOSIS, CONFUSION, SAFEGUARD, MIRROR_COAT
	
	; Abra3
	dw TELEPORT, CONFUSION, VACUUM_WAVE, ENCORE
	
	; Bonsly1
	dw TACKLE, HARDEN, ENDURE, REVERSAL
	
	; Bonsly2
	dw TACKLE, DEFENSE_CURL, ROCK_THROW, ROLLOUT
	
	; Geodude1
	dw TACKLE, ENDURE, POWERUPPUNCH, FLAIL
	
	; Geodude2
	dw TACKLE, ENDURE, IRON_DEFENSE, SWAGGER
	
	; Geodude3
	dw TACKLE, DEFENSE_CURL, BULK_UP, MUD_SLAP
	
	; Machop1
	dw POUND, ENCORE, BULLET_PUNCH, SLAM
	
	; Machop2
	dw STOMP, LEER, SKY_UPPERCUT, SWAGGER
	
	; Dunsparce1
	dw TACKLE, DEFENSE_CURL, DESTINY_BOND, HEX
	
	; Dunsparce2
	dw TACKLE, HYPNOSIS, ECHOED_VOICE, MUD_SLAP
	
	; Dunsparce3
	dw TACKLE, REFRESH, HORN_DRILL, PURSUIT
	
	; Dunsparce4
	dw TACKLE, DEFENSE_CURL, AGILITY, BATON_PASS
	
	; Dunsparce5
	dw TACKLE, DEFENSE_CURL, AMNESIA, BITE
	
	; Sandshrew Alolan1
	dw SCRATCH, ENDURE, X_SCISSOR, FLAIL
	
	; Sandshrew Alolan2
	dw SCRATCH, DEFENSE_CURL, DIRE_CLAW, RAPID_SPIN
	
	; Sandshrew Alolan3
	dw LEECH_LIFE, DEFENSE_CURL, SUPER_FANG, SLAM
	
	; Sandshrew Alolan4
	dw SCRATCH, DEFENSE_CURL, ICE_SHARD, SAFEGUARD
	
	; Sandshrew Alolan4
	dw SCRATCH, DEFENSE_CURL, NIGHT_SLASH, FURY_SWIPES
	