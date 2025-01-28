probsun: MACRO
prob_totalsun = prob_totalsun + (\1)
	dw prob_totalsun * $ffff / 100
ENDM

EggMoveEggProbabilitiesSunday:
prob_totalsun = 0
; Bulbasaur
	probsun 2
	probsun 1
	probsun 1
	probsun 1
	probsun 1
; Vulpix
	probsun 2
	probsun 1
	probsun 1
	probsun 1
	probsun 1
; Psyduck
	probsun 2
	probsun 1
	probsun 1
	probsun 1
	probsun 1
; Rattata
	probsun 2
	probsun 1
	probsun 1
	probsun 2
; Munchlax
	probsun 2
	probsun 1
	probsun 2
; Spearow
	probsun 1
	probsun 1
	probsun 1
	probsun 2
	probsun 1
; Caterpie
	probsun 3
	probsun 3
; Pichu
	probsun 2
	probsun 1
	probsun 1
	probsun 1
	probsun 1
; Eevee
	probsun 5
; NidoranF
	probsun 2
	probsun 2
	probsun 1
	probsun 1
; Mankey
	probsun 2
	probsun 1
	probsun 1
	probsun 2
; Slowpoke
	probsun 2
	probsun 1
	probsun 1
	probsun 2
; Omanyte
	probsun 2
	probsun 1
	probsun 1
	probsun 2
; Gligar
	probsun 2
	probsun 1
	probsun 1
	probsun 1
	probsun 1
; Shellder
	probsun 2
	probsun 1
	probsun 1
	probsun 2
; Gastly
	probsun 2
	probsun 1
	probsun 1
	probsun 2
; Magikarp
	probsun 3
	probsun 3
	
	
EggMoveEggSpeciesSunday:
	dw BULBASAUR    ;1
	dw BULBASAUR    ;2
	dw BULBASAUR    ;3
	dw BULBASAUR    ;4
	dw BULBASAUR    ;5
	dw VULPIX       ;6
	dw VULPIX       ;7
	dw VULPIX       ;8
	dw VULPIX       ;9
	dw VULPIX       ;10
	dw PSYDUCK      ;11
	dw PSYDUCK      ;12
	dw PSYDUCK      ;13
	dw PSYDUCK      ;14
	dw PSYDUCK      ;15
	dw RATTATA      ;16
	dw RATTATA      ;17
	dw RATTATA      ;18
	dw RATTATA      ;19
	dw MUNCHLAX     ;20
	dw MUNCHLAX     ;21
	dw MUNCHLAX     ;22
	dw SPEAROW      ;23
	dw SPEAROW      ;24
	dw SPEAROW      ;25
	dw SPEAROW      ;26
	dw SPEAROW      ;27
	dw CATERPIE     ;28
	dw CATERPIE     ;29
	dw PICHU        ;30
	dw PICHU        ;31
	dw PICHU        ;32
	dw PICHU        ;33
	dw PICHU        ;34
	dw EEVEE        ;35
	dw NIDORAN_F    ;36
	dw NIDORAN_F    ;37
	dw NIDORAN_F    ;38
	dw NIDORAN_F    ;39
	dw MANKEY       ;40
	dw MANKEY       ;41
	dw MANKEY       ;42
	dw MANKEY       ;43
	dw SLOWPOKE     ;44
	dw SLOWPOKE     ;45
	dw SLOWPOKE     ;46
	dw SLOWPOKE     ;47
	dw OMANYTE      ;48
	dw OMANYTE      ;49
	dw OMANYTE      ;50
	dw OMANYTE      ;51
	dw GLIGAR       ;52
	dw GLIGAR       ;53
	dw GLIGAR       ;54
	dw GLIGAR       ;55
	dw GLIGAR       ;56
	dw SHELLDER     ;57
	dw SHELLDER     ;58
	dw SHELLDER     ;59
	dw SHELLDER     ;60
	dw GASTLY       ;61
	dw GASTLY       ;62
	dw GASTLY       ;63
	dw GASTLY       ;64
	dw MAGIKARP     ;65
	dw MAGIKARP     ;66
	

EggMoveEggsSunday:

	; Bulbasaur1
	dw TACKLE, GROWL, ENDURE, SLAM
	
	; Bulbasaur2
	dw TACKLE, GROWL, CHARM, ANCIENTPOWER
	
	; Bulbasaur3
	dw TACKLE, GROWL, SAFEGUARD, PETAL_DANCE
	
	; Bulbasaur4
	dw TACKLE, GROWL, AMNESIA, ACID_SPRAY
	
	; Bulbasaur5
	dw TACKLE, GROWL, SING, ECHOED_VOICE

	; Vulpix1
	dw EMBER, HOWL, FIRE_FANG, PURSUIT
	
	; Vulpix2
	dw EMBER, DISABLE, CHARM, FLAIL
	
	; Vulpix3
	dw EMBER, TAIL_WHIP, OMINOUS_WIND, DESTINY_BOND
	
	; Vulpix4
	dw EMBER, TAIL_WHIP, HYPNOSIS, CONFUSION
	
	; Vulpix5
	dw EMBER, LICK, ENCORE, FLAME_WHEEL

	; Psyduck1
	dw SCRATCH, HYPNOSIS, BUBBLEBEAM, MUD_SHOT
	
	; Psyduck2
	dw SCRATCH, TAIL_WHIP, TRI_ATTACK, ENCORE
	
	; Psyduck3
	dw SCRATCH, TAIL_WHIP, POWERUPPUNCH, AQUA_JET
	
	; Psyduck4
	dw SCRATCH, TAIL_WHIP, SMOG, CONFUSE_RAY
	
	; Psyduck5
	dw SCRATCH, CHARM, REFRESH, VACUUM_WAVE

	; Rattata1
	dw TACKLE, TAIL_WHIP, REVERSAL, SCREECH

	; Rattata2
	dw TACKLE, LEER, POISON_FANG, FLAME_WHEEL

	; Rattata3
	dw TACKLE, TAIL_WHIP, BUBBLEBEAM, SPARK
	
	; Rattata4
	dw TACKLE, TAIL_WHIP, FIRE_FANG, ICE_FANG

	; Munchlax1
	dw TACKLE, SPLASH, PRESENT, POWERUPPUNCH
	
	; Munchlax2
	dw TACKLE, CHARM, PURSUIT, WHIRLWIND
	
	; Munchlax3
	dw TACKLE, DEFENSE_CURL, MUD_SLAP, ROLLOUT
	
	; Spearow1
	dw PECK, GROWL, SONICBOOM, WHIRLWIND
	
	; Spearow2
	dw PECK, SCARY_FACE, OMINOUS_WIND, BATON_PASS

	; Spearow3
	dw PECK, GROWL, QUICK_ATTACK, FEATHERDANCE	
	
	; Spearow4
	dw PECK, SUPERSONIC, ECHOED_VOICE, TRI_ATTACK

	; Spearow5
	dw PECK, GROWL, AIR_CUTTER, FALSE_SWIPE

	; Caterpie1
	dw TACKLE, STRING_SHOT, MEGA_DRAIN, CONFUSION
	
	; Caterpie2
	dw TACKLE, STRING_SHOT, LEECH_LIFE, ACID_SPRAY

	; Pichu1
	dw THUNDERSHOCK, ENDURE, DOUBLE_KICK, REVERSAL

	; Pichu2
	dw THUNDERSHOCK, TAIL_WHIP, PETAL_DANCE, SING

	; Pichu3
	dw THUNDERSHOCK, SCARY_FACE, POWERUPPUNCH, REFRESH

	; Pichu4
	dw THUNDERSHOCK, ENCORE, METRONOME, PRESENT

	; Pichu5
	dw THUNDERSHOCK, TAIL_WHIP, ECHOED_VOICE, FLAIL
	
	; Eevee1
	dw TACKLE, TAIL_WHIP, PAY_DAY, SING

	; NidoranF1
	dw TACKLE, TAIL_WHIP, POWDER_SNOW, AMNESIA

	; NidoranF2
	dw TACKLE, ENDURE, TAKE_DOWN, MOONLIGHT

	; NidoranF3
	dw TACKLE, TAIL_WHIP, ECHOED_VOICE, DISABLE

	; NidoranF4
	dw TACKLE, SUPERSONIC, PURSUIT, SUPER_FANG

	; Mankey1
	dw SCRATCH, ENDURE, POWERUPPUNCH, REVERSAL

	; Mankey2
	dw SCRATCH, ENCORE, BELLY_DRUM, SLAM 	
	
	; Mankey3
	dw SCRATCH, LEER, BULK_UP, NIGHT_SLASH

	; Mankey4
	dw SCRATCH, SCARY_FACE, VACUUM_WAVE, PSYCH_UP

	; Slowpoke1
	dw TACKLE, GROWL, BELLY_DRUM, MUD_SHOT

	; Slowpoke2
	dw TACKLE, SAFEGUARD, ACID_SPRAY, SLAM

	; Slowpoke3
	dw TACKLE, GROWL, METRONOME, ECHOED_VOICE

	; Slowpoke4
	dw TACKLE, GROWL, BUBBLEBEAM, STOMP

	; Omanyte1
	dw WRAP, LEER, ROCK_THROW, ENDURE

	; Omanyte2
	dw WRAP, HARDEN, AURORA_BEAM, RAPID_SPIN

	; Omanyte3
	dw WRAP, LEER, WATER_GUN, SUPERSONIC 

	; Omanyte4
	dw WRAP, DEFENSE_CURL, ROLLOUT, SLAM

	; Gligar1
	dw POISON_STING, SAND_ATTACK, METAL_CLAW, FURY_CUTTER

	; Gligar2
	dw POISON_STING, HARDEN, CRABHAMMER, MUD_SHOT

	; Gligar3
	dw POISON_STING, HARDEN, TAKE_DOWN, BATON_PASS

	; Gligar4
	dw POISON_STING, SAND_ATTACK, AGILITY, BITE

	; Gligar5
	dw POISON_STING, HARDEN, LEECH_LIFE, AIR_CUTTER

	; Shellder1
	dw TACKLE, LEER, CONFUSE_RAY, ENDURE

	; Shellder2
	dw TACKLE, HARDEN, TAKE_DOWN, REFRESH

	; Shellder3
	dw TACKLE, HARDEN, RAPID_SPIN, SAFEGUARD

	; Shellder4
	dw TACKLE, HARDEN, MUD_SHOT, SCREECH

	; Gastly1
	dw LICK, SPITE, CONFUSION, HAZE

	; Gastly2
	dw LICK, SPITE, SCARY_FACE, OMINOUS_WIND
	
	; Gastly3
	dw LICK, DISABLE, HEX, PERISH_SONG

	; Gastly4
	dw LICK, SPITE, PURSUIT, PSYCH_UP

	; Magikarp1
	dw SPLASH, TACKLE, DRAGON_RAGE, AQUA_JET

	; Magikarp2
	dw SPLASH, TACKLE, HYDRO_PUMP, REVERSAL
	