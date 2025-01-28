probsat: MACRO
prob_totalsat = prob_totalsat + (\1)
	dw prob_totalsat * $ffff / 100
ENDM

EggMoveEggProbabilitiesSaturday:
prob_totalsat = 0
; Bellsprout
	probsat 2
	probsat 2
	probsat 2
; Slugma
	probsat 2
	probsat 2
	probsat 3
; Marill 
	probsat 2
	probsat 1
	probsat 2
	probsat 1
; Teddiursa
	probsat 2
	probsat 2
	probsat 1
	probsat 1
; Togepi 
	probsat 1
	probsat 1
	probsat 2
	probsat 1
	probsat 1
; Ledyba
	probsat 2
	probsat 1
	probsat 1
	probsat 2
; Pineco
	probsat 2
	probsat 1
	probsat 1
	probsat 2
; Cubone 
	probsat 2
	probsat 1
	probsat 1
	probsat 1
	probsat 1
; Larvitar
	probsat 2
	probsat 1
	probsat 1
	probsat 1
	probsat 1
; Tentacool
	probsat 2
	probsat 2
	probsat 2
; Nessi
	probsat 2
	probsat 2
	probsat 1
	probsat 1
; Tyrogue
	probsat 2
	probsat 2
	probsat 1
; Dratini
	probsat 2
	probsat 1
	probsat 1
	probsat 1
	probsat 1
; Corsola 
	probsat 2
	probsat 2
	probsat 2
; Sandshrew 
	probsat 2
	probsat 1
	probsat 1
	probsat 1
	probsat 1
; Eevee 
	probsat 5
; WooperP
	probsat 1
	probsat 1
	probsat 1
	probsat 1
	
	
EggMoveEggSpeciesSaturday:
	dw BELLSPROUT   ;1
	dw BELLSPROUT   ;2
	dw BELLSPROUT   ;3
	dw SLUGMA       ;4
	dw SLUGMA       ;5
	dw SLUGMA       ;6
	dw MARILL       ;7
	dw MARILL       ;8
	dw MARILL       ;9
	dw MARILL       ;10
	dw TEDDIURSA    ;11
	dw TEDDIURSA    ;12
	dw TEDDIURSA    ;13
	dw TEDDIURSA    ;14
	dw TOGEPI       ;15
	dw TOGEPI       ;16
	dw TOGEPI       ;17
	dw TOGEPI       ;18
	dw TOGEPI       ;19
	dw LEDYBA       ;20
	dw LEDYBA       ;21
	dw LEDYBA       ;22
	dw LEDYBA       ;23
	dw PINECO       ;24
	dw PINECO       ;25
	dw PINECO       ;26
	dw PINECO       ;27
	dw CUBONE       ;28
	dw CUBONE       ;29
	dw CUBONE       ;30
	dw CUBONE       ;31
	dw CUBONE       ;32
	dw LARVITAR     ;33
	dw LARVITAR     ;34
	dw LARVITAR     ;35
	dw LARVITAR     ;36
	dw LARVITAR     ;37
	dw TENTACOOL    ;38
	dw TENTACOOL    ;39
	dw TENTACOOL    ;40
	dw NESSI        ;41
	dw NESSI        ;42
	dw NESSI        ;43
	dw NESSI        ;44
	dw TYROGUE      ;45
	dw TYROGUE      ;46
	dw TYROGUE      ;47
	dw DRATINI      ;48
	dw DRATINI      ;49
	dw DRATINI      ;50
	dw DRATINI      ;51
	dw DRATINI      ;52
	dw CORSOLA      ;53
	dw CORSOLA      ;54
	dw CORSOLA      ;55
	dw SANDSHREW    ;56
	dw SANDSHREW    ;57
	dw SANDSHREW    ;58
	dw SANDSHREW    ;59
	dw SANDSHREW    ;60
	dw EEVEE        ;61
	dw WOOPER_PALDEAN  ;62
	dw WOOPER_PALDEAN  ;63
	dw WOOPER_PALDEAN  ;64
	dw WOOPER_PALDEAN  ;65
	

EggMoveEggsSaturday:

	; Bellsprout1
	dw MEGA_DRAIN, GROWTH, LEECH_SEED, ENCORE
	
	; Bellsprout2
	dw WRAP, GROWTH, MORNING_SUN, SMOG
	
	; Bellsprout3
	dw WRAP, GROWTH, LEECH_LIFE, SWAGGER
	
	; Slugma1
	dw EMBER, HARDEN, MIRROR_COAT, ENCORE 
	
	; Slugma2
	dw EMBER, SMOKESCREEN, IRON_DEFENSE, REFRESH
	
	; Slugma3
	dw EMBER, HARDEN, PSYBEAM, ACID_ARMOR
	
	; Marill1
	dw TACKLE, ENCORE, PRESENT, PERISH_SONG

	; Marill2
	dw TACKLE, SUPERSONIC, AMNESIA, SLAM
	
	; Marill3
	dw TACKLE, DEFENSE_CURL, POWERUPPUNCH, AQUA_JET
	
	; Marill4
	dw TACKLE, REFRESH, AURORA_BEAM, SING
	
	; Teddiursa1
	dw SCRATCH, REFRESH, METAL_CLAW, MOONLIGHT
	
	; Teddiursa2
	dw SCRATCH, GROWL, POWERUPPUNCH, CRUNCH
	
	; Teddiursa3
	dw SCRATCH, GROWL, BELLY_DRUM, SLAM
	
	; Teddiursa4
	dw SCRATCH, BULK_UP, METRONOME, LOW_KICK
	
	; Togepi1
	dw PECK, DEFENSE_CURL, PRESENT, ROLLOUT
	
	; Togepi2
	dw PECK, GROWL, CONFUSION, MIRROR_MOVE
	
	; Togepi3
	dw PECK, GROWL, MYSTICALFIRE, MORNING_SUN
	
	; Togepi4
	dw PECK, GROWL, ECHOED_VOICE, NASTY_PLOT
	
	; Togepi5
	dw PECK, SCREECH, SPARK, PSYCH_UP
	
	; Ledyba1
	dw TACKLE, REFRESH, LEECH_LIFE, SCREECH
	
	; Ledyba2
	dw TACKLE, ENDURE, AIR_CUTTER, ROLLOUT
	
	; Ledyba3
	dw TACKLE, HYPNOSIS, PSYBEAM, OMINOUS_WIND
	
	; Ledyba4
	dw GUST, SUPERSONIC, BUG_BITE, VACUUM_WAVE
	
	; Pineco1
	dw TACKLE, DEFENSE_CURL, ROLLOUT, REFRESH
	
	; Pineco2
	dw TACKLE, PROTECT, CONFUSION, RECOVER
	
	; Pineco3
	dw TACKLE, STRING_SHOT, SCREECH, FLAIL
	
	; Pineco4
	dw TACKLE, PROTECT, BUG_BUZZ, REVERSAL
	
	; Cubone1
	dw POUND, GROWL, PERISH_SONG, CHARM
	
	; Cubone2
	dw POUND, GROWL, POWERUPPUNCH, LOW_KICK
	
	; Cubone3
	dw POUND, ENDURE, ANCIENTPOWER, HEX
	
	; Cubone4
	dw POUND, GROWL, SKY_UPPERCUT, IRON_DEFENSE
	
	; Cubone5
	dw POUND, GROWL, DOUBLE_KICK, BELLY_DRUM
	
	; Larvitar1
	dw TACKLE, SPITE, ANCIENTPOWER, PURSUIT
	
	; Larvitar2
	dw TACKLE, LEER, POWERUPPUNCH, ENDURE
	
	; Larvitar3
	dw TACKLE, LEER, DOUBLE_KICK, POWER_GEM
	
	; Larvitar4
	dw TACKLE, LEER, IRON_DEFENSE, SLAM
	
	; Larvitar5
	dw TACKLE, LEER, DRAGON_DANCE, STOMP
	
	; Tentacool1
	dw POISON_STING, CONFUSE_RAY, ACID_SPRAY, PURSUIT
	
	; Tentacool2
	dw POISON_STING, SUPERSONIC, AURORA_BEAM, RAPID_SPIN
	
	; Tentacool3
	dw POISON_STING, SAFEGUARD, POWER_GEM, MIRROR_COAT

	; Nessi1
	dw POWDER_SNOW, HYPNOSIS, ECHOED_VOICE, CONFUSION
	
	; Nessi2
	dw POWDER_SNOW, GROWL, DRAGON_DANCE, BITE
	
	; Nessi3
	dw POWDER_SNOW, GROWL, BUBBLEBEAM, ANCIENTPOWER
	
	; Nessi4
	dw WATER_GUN, GROWL, DRAGON_RAGE, PURSUIT
	
	; Tyrogue1
	dw TACKLE, ENDURE, POWERUPPUNCH, REVERSAL
	
	; Tyrogue2
	dw TACKLE, BULK_UP, BULLET_PUNCH, SWAGGER
	
	; Tyrogue3
	dw TACKLE, ENDURE, LOW_KICK, RAPID_SPIN
	
	; Dratini1
	dw WRAP, LEER, MOONLIGHT, PURSUIT
	
	; Dratini2
	dw WRAP, REFRESH, SUPERSONIC, AQUA_JET
	
	; Dratini3
	dw WRAP, LEER, COIL, EXTREMESPEED
	
	; Dratini4
	dw WRAP, LEER, HYDRO_PUMP, HAZE
	
	; Dratini5
	dw WRAP, LEER, PSYBEAM, MYSTICALFIRE
	
	; Corsola1
	dw TACKLE, ENDURE, IRON_DEFENSE, FLAIL
	
	; Corsola2
	dw TACKLE, DEFENSE_CURL, ROLLOUT, SCREECH
	
	; Corsola3
	dw TACKLE, CONFUSE_RAY, AMNESIA, SLAM
	
	; Sandshrew1
	dw SCRATCH, DEFENSE_CURL, MUD_SHOT, SAFEGUARD
	
	; Sandshrew2
	dw SCRATCH, DEFENSE_CURL, METAL_CLAW, X_SCISSOR
	
	; Sandshrew3
	dw SCRATCH, ENDURE, LEECH_LIFE, SUPER_FANG
	
	; Sandshrew4
	dw MUD_SLAP, DEFENSE_CURL, DIRE_CLAW, SLAM
	
	; Sandshrew5
	dw SCRATCH, DEFENSE_CURL, NIGHT_SLASH, FURY_SWIPES
	
	; Eevee4
	dw TACKLE, TAIL_WHIP, MILK_DRINK, SLAM
	
	; WooperPaldean1
	dw POISON_STING, SAFEGUARD, ANCIENTPOWER, HAZE
	
	; WooperPaldean2
	dw POISON_STING, TAIL_WHIP, BELLY_DRUM, DOUBLE_KICK
	
	; WooperPaldean3
	dw POISON_STING, ENCORE, THUNDERSHOCK, RECOVER
	
	; WooperPaldean4
	dw POISON_STING, ENDURE, POWERUPPUNCH, PURSUIT
	