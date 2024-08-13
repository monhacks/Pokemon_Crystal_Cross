probmon: MACRO
prob_totalmon = prob_totalmon + (\1)
	dw prob_totalmon * $ffff / 100
ENDM

EggMoveEggProbabilitiesMonday:
prob_totalmon = 0
; Oddish
	probmon 3
	probmon 3
; Charmander
	probmon 2
	probmon 1
	probmon 1
	probmon 1
	probmon 1
; Krabby
	probmon 2
	probmon 1
	probmon 2
	probmon 1
; Clefairy
	probmon 2
	probmon 1
	probmon 1
	probmon 1
	probmon 1
; Mooby
	probmon 2
	probmon 2
	probmon 1
	probmon 1
; Zubat
	probmon 2
	probmon 1
	probmon 1
	probmon 1
	probmon 1
; Weedle
	probmon 3
	probmon 3
; Scyther
	probmon 2
	probmon 1
	probmon 1
	probmon 1
	probmon 1
; Rinrin
	probmon 2
	probmon 2
	probmon 1
	probmon 1
; Koffing
	probmon 2
	probmon 1
	probmon 2
; Farfetchd
	probmon 2
	probmon 1
	probmon 1
	probmon 1
	probmon 1
; Drowzee
	probmon 2
	probmon 2
	probmon 1
	probmon 1
; Kabuto
	probmon 2
	probmon 1
	probmon 1
	probmon 1
	probmon 1
; Diglett
	probmon 2
	probmon 1
	probmon 1
	probmon 1
	probmon 1
; Mareep
	probmon 2
	probmon 2
	probmon 2
; Misdreavus
	probmon 2
	probmon 1
	probmon 1
	probmon 2
; Eevee
	probmon 5
	
	
EggMoveEggSpeciesMonday:
	dw ODDISH      ;1
	dw ODDISH      ;2
	dw CHARMANDER  ;3
	dw CHARMANDER  ;4
	dw CHARMANDER  ;5
	dw CHARMANDER  ;6
	dw CHARMANDER  ;7
	dw KRABBY      ;8
	dw KRABBY      ;9
	dw KRABBY      ;10
	dw KRABBY      ;11
	dw CLEFAIRY    ;12
	dw CLEFAIRY    ;13
	dw CLEFAIRY    ;14
	dw CLEFAIRY    ;15
	dw CLEFAIRY    ;16
	dw MOOBY       ;17
	dw MOOBY       ;18
	dw MOOBY       ;19
	dw MOOBY       ;20
	dw ZUBAT       ;21
	dw ZUBAT       ;22
	dw ZUBAT       ;23
	dw ZUBAT       ;24
	dw ZUBAT       ;25
	dw WEEDLE      ;26
	dw WEEDLE      ;27
	dw SCYTHER     ;28
	dw SCYTHER     ;29
	dw SCYTHER     ;30
	dw SCYTHER     ;31
	dw SCYTHER     ;32
	dw RINRIN      ;33
	dw RINRIN      ;34
	dw RINRIN      ;35
	dw RINRIN      ;36
	dw KOFFING     ;37
	dw KOFFING     ;38
	dw KOFFING     ;39
	dw FARFETCH_D  ;40
	dw FARFETCH_D  ;41
	dw FARFETCH_D  ;42
	dw FARFETCH_D  ;43
	dw FARFETCH_D  ;44
	dw DROWZEE     ;45
	dw DROWZEE     ;46
	dw DROWZEE     ;47
	dw DROWZEE     ;48
	dw KABUTO      ;49
	dw KABUTO      ;50
	dw KABUTO      ;51
	dw KABUTO      ;52
	dw KABUTO      ;53
	dw DIGLETT     ;54
	dw DIGLETT     ;55
	dw DIGLETT     ;56
	dw DIGLETT     ;57
	dw DIGLETT     ;58
	dw MAREEP      ;59
	dw MAREEP      ;60
	dw MAREEP      ;61
	dw MISDREAVUS  ;62
	dw MISDREAVUS  ;63
	dw MISDREAVUS  ;64
	dw MISDREAVUS  ;65
	dw EEVEE       ;66
	

EggMoveEggsMonday:

	; Oddish1
	dw MEGA_DRAIN, CHARM, SYNTHESIS, SMOG
	
	; Oddish2
	dw MEGA_DRAIN, ENDURE, RAZOR_LEAF, FLAIL
	
	; Charmander1
	dw SCRATCH, GROWL, DRAGON_DANCE, CRUNCH
	
	; Charmander2
	dw SCRATCH, GROWL, BELLY_DRUM, ECHOED_VOICE
	
	; Charmander3
	dw SCRATCH, SHARPEN, FURY_SWIPES, BITE
	
	; Charmander4
	dw SCRATCH, GROWL, AIR_CUTTER, POISON_FANG
	
	; Charmander5
	dw SCRATCH, GROWL, ANCIENTPOWER, POWERUPPUNCH
	
	; Krabby1
	dw WATER_GUN, ENDURE, REVERSAL, ANCIENTPOWER
	
	; Krabby2
	dw WATER_GUN, AMNESIA, CONFUSION, HAZE

	; Krabby3
	dw WATER_GUN, HARDEN, X_SCISSOR, AGILITY

	; Krabby4
	dw WATER_GUN, LEER, IRON_DEFENSE, SLASH
	
	; Clefairy1
	dw POUND, DEFENSE_CURL, BELLY_DRUM, PRESENT

	; Clefairy2
	dw POUND, DEFENSE_CURL, PETAL_DANCE, AMNESIA

	; Clefairy3
	dw POUND, GROWL, MYSTICALFIRE, MIRROR_COAT

	; Clefairy4
	dw POUND, PSYCH_UP, POWERUPPUNCH, RECOVER
	
	; Clefairy5
	dw POUND, SPLASH, BUBBLEBEAM, ECHOED_VOICE
	
	; Mooby1
	dw TACKLE, ENDURE, BULK_UP, REVERSAL

	; Mooby2
	dw TACKLE, TAIL_WHIP, DOUBLE_KICK, SLAM

	; Mooby3
	dw TACKLE, REFRESH, ECHOED_VOICE, SPARK
	
	; Mooby4
	dw TACKLE, GROWL, BLAZE_KICK, QUICK_ATTACK
	
	; Zubat1
	dw LEECH_LIFE, SUPERSONIC, OMINOUS_WIND, HYPNOSIS

	; Zubat2
	dw LEECH_LIFE, SUPERSONIC, ICE_FANG, WHIRLWIND

	; Zubat3
	dw LEECH_LIFE, SUPERSONIC, FIRE_FANG, PURSUIT

	; Zubat4
	dw MEGA_DRAIN, SUPERSONIC, NASTY_PLOT, HEX

	; Zubat5
	dw GUST, SUPERSONIC, QUICK_ATTACK, MIRROR_MOVE
	
	; Weedle1
	dw POISON_STING, STRING_SHOT, ACID_SPRAY, LEECH_LIFE

	; Weedle2
	dw POISON_STING, STRING_SHOT, MEGAHORN, SHARPEN
	
	; Scyher1
	dw VACUUM_WAVE, ENDURE, TAKE_DOWN, REVERSAL

	; Scyher2
	dw QUICK_ATTACK, SAFEGUARD, SILVER_WIND, BATON_PASS

	; Scyher3
	dw QUICK_ATTACK, LEER, MORNING_SUN, BUG_BUZZ

	; Scyher4
	dw QUICK_ATTACK, LEER, AIR_CUTTER, BUG_BITE

	; Scyher5
	dw QUICK_ATTACK, LEER, METAL_CLAW, OMINOUS_WIND 
	
	; Rinrin1
	dw SCRATCH, GROWL, PAY_DAY, PSYCH_UP

	; Rinrin2
	dw SCRATCH, HYPNOSIS, AMNESIA, FALSE_SWIPE

	; Rinrin3
	dw SCRATCH, SPITE, NASTY_PLOT, ECHOED_VOICE
	
	; Rinrin4
	dw SCRATCH, PURSUIT, PERISH_SONG, HAZE
	
	; Koffing1
	dw TACKLE, DEFENSE_CURL, SCREECH, PURSUIT
	
	; Koffing2
	dw TACKLE, DEFENSE_CURL, SPITE, PSYBEAM

	; Koffing3
	dw TACKLE, DEFENSE_CURL, SUPERSONIC, ROLLOUT
	
	; Farfetchd1
	dw PECK, ENDURE, BONE_CLUB, REVERSAL

	; Farfetchd2
	dw QUICK_ATTACK, LEER, OMINOUS_WIND, BATON_PASS

	; Farfetchd3
	dw MUD_SLAP, LEER, RAZOR_LEAF, FLAIL

	; Farfetchd4
	dw PECK, LEER, NIGHT_SLASH, PSYCH_UP

	; Farfetchd5
	dw GUST, LEER, FEATHERDANCE, MIRROR_MOVE
	
	; Drowzee1
	dw POUND, HYPNOSIS, LOW_KICK, SWAGGER

	; Drowzee2
	dw POUND, HYPNOSIS, AMNESIA, POWERUPPUNCH
	
	; Drowzee3
	dw POUND, HYPNOSIS, ECHOED_VOICE, HAZE
	
	; Drowzee4
	dw POUND, HYPNOSIS, METRONOME, BATON_PASS
	
	; Kabuto1
	dw LEECH_LIFE, LEER, CONFUSION, FLAIL

	; Kabuto2
	dw SCRATCH, HARDEN, BUBBLEBEAM, HAZE

	; Kabuto3
	dw SCRATCH, LEER, AURORA_BEAM, IRON_DEFENSE

	; Kabuto4
	dw SCRATCH, SHARPEN, ROCK_THROW, RAPID_SPIN

	; Kabuto5
	dw SCRATCH, LEER, TAKE_DOWN, CONFUSE_RAY

	; Diglett1
	dw SCRATCH, ENDURE, ECHOED_VOICE, REVERSAL
	
	; Diglett2
	dw SCRATCH, CHARM, METAL_CLAW, FALSE_SWIPE
	
	; Diglett3
	dw SCRATCH, SHARPEN, ROCK_THROW, MUD_SHOT
	
	; Diglett4
	dw SCRATCH, GROWL, ANCIENTPOWER, SCREECH
	
	; Diglett5
	dw SCRATCH, GROWL, AGILITY, NIGHT_SLASH

	; Mareep1
	dw TACKLE, DEFENSE_CURL, SAFEGUARD, SLAM

	; Mareep2
	dw TACKLE, SAND_ATTACK, ENDURE, SCREECH

	; Mareep3
	dw TACKLE, GROWL, AGILITY, ECHOED_VOICE

	; Misdreavus1
	dw SMOKESCREEN, CONFUSION, OMINOUS_WIND, HAZE

	; Misdreavus2
	dw GROWL, CONFUSION, PSYCH_UP, ECHOED_VOICE

	; Misdreavus3
	dw HYPNOSIS, CONFUSION, DESTINY_BOND, SMOG

	; Misdreavus4
	dw GROWL, CONFUSION, MEGA_DRAIN, NASTY_PLOT

	; Eevee2
	dw TACKLE, TAIL_WHIP, ENDURE, REVERSAL
	