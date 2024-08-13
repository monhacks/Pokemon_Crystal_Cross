probthu: MACRO
prob_totalthu = prob_totalthu + (\1)
	dw prob_totalthu * $ffff / 100
ENDM

EggMoveEggProbabilitiesThursday:
prob_totalthu = 0
; Hoppip
	probthu 2
	probthu 1
	probthu 1
	probthu 1
	probthu 2
; Cyndaquil
	probthu 2
	probthu 2
	probthu 1
	probthu 2
; Remoraid
	probthu 2
	probthu 1
	probthu 1
	probthu 2
; Happiny
	probthu 2
	probthu 2
	probthu 1
	probthu 1
; Snubbull
	probthu 2
	probthu 1
	probthu 1
	probthu 1
	probthu 2
; Mantyke
	probthu 2
	probthu 3
	probthu 2
; Pinsir
	probthu 2
	probthu 2
	probthu 1
	probthu 2
; VulpixA
	probthu 2
	probthu 2
	probthu 1
	probthu 1
; Girafarig
	probthu 2
	probthu 1
	probthu 1
	probthu 1
	probthu 1
; Ekans
	probthu 2
	probthu 1
	probthu 1
	probthu 2
; Seel
	probthu 2
	probthu 1
	probthu 1
	probthu 1
	probthu 1
; Elekid
	probthu 2
	probthu 2
	probthu 2
; Stantler
	probthu 2
	probthu 1
	probthu 2
	probthu 1
; Wooper
	probthu 2
	probthu 1
	probthu 1
	probthu 1
	probthu 1
; GrowlitheH
	probthu 2
	probthu 1
	probthu 1
	probthu 2
; Swinub
	probmon 2
	probmon 1
	probmon 2
	
	
EggMoveEggSpeciesThursday:
	dw HOPPIP        ;1
	dw HOPPIP        ;2
	dw HOPPIP        ;3
	dw HOPPIP        ;4
	dw HOPPIP        ;5
	dw CYNDAQUIL     ;6
	dw CYNDAQUIL     ;7
	dw CYNDAQUIL     ;8
	dw CYNDAQUIL     ;9
	dw REMORAID      ;10
	dw REMORAID      ;11
	dw REMORAID      ;12
	dw REMORAID      ;13
	dw HAPPINY       ;14
	dw HAPPINY       ;15
	dw HAPPINY       ;16
	dw HAPPINY       ;17
	dw SNUBBULL      ;18
	dw SNUBBULL      ;19
	dw SNUBBULL      ;20
	dw SNUBBULL      ;21
	dw SNUBBULL      ;22
	dw MANTYKE       ;23
	dw MANTYKE       ;24
	dw MANTYKE       ;25
	dw PINSIR        ;26
	dw PINSIR        ;27
	dw PINSIR        ;28
	dw PINSIR        ;29
	dw VULPIX_ALOLAN ;30
	dw VULPIX_ALOLAN ;31
	dw VULPIX_ALOLAN ;32
	dw VULPIX_ALOLAN ;33
	dw OKAPAKO       ;34
	dw OKAPAKO       ;35
	dw OKAPAKO       ;36
	dw OKAPAKO       ;37
	dw OKAPAKO       ;38
	dw EKANS         ;39
	dw EKANS         ;40
	dw EKANS         ;41
	dw EKANS         ;42
	dw SEEL          ;43
	dw SEEL          ;44
	dw SEEL          ;45
	dw SEEL          ;46
	dw SEEL          ;47
	dw ELEKID        ;48
	dw ELEKID        ;49
	dw ELEKID        ;50
	dw STANTLER      ;51
	dw STANTLER      ;52
	dw STANTLER      ;53
	dw STANTLER      ;54
	dw WOOPER        ;55
	dw WOOPER        ;56
	dw WOOPER        ;57
	dw WOOPER        ;58
	dw WOOPER        ;59
	dw GROWLITHE_HISUIAN  ;60
	dw GROWLITHE_HISUIAN  ;61
	dw GROWLITHE_HISUIAN  ;62
	dw GROWLITHE_HISUIAN  ;63
	dw SWINUB             ;64
	dw SWINUB             ;65
	dw SWINUB             ;66
	

EggMoveEggsThursday:

	; Hoppip1
	dw SPLASH, TAIL_WHIP, PAY_DAY, ENCORE
	
	; Hoppip2
	dw TACKLE, TAIL_WHIP, SWEET_SCENT, SING
	
	; Hoppip3
	dw TACKLE, TAIL_WHIP, CONFUSION, AMNESIA
	
	; Hoppip4
	dw TACKLE, GROWL, RAZOR_LEAF, CHARM
	
	; Hoppip5
	dw TACKLE, ENDURE, AGILITY, TAKE_DOWN
	
	; Cyndaquil1
	dw TACKLE, LEER, HOWL, FURY_SWIPES
	
	; Cyndaquil2
	dw TACKLE, LEER, METAL_CLAW, SWAGGER
	
	; Cyndaquil3
	dw TACKLE, LEER, ANCIENTPOWER, CONFUSION
	
	; Cyndaquil4
	dw TACKLE, ENDURE, DOUBLE_KICK, REVERSAL
	
	; Remoraid1
	dw WATER_GUN, LASER_FOCUS, OCTAZOOKA, HAZE
	
	; Remoraid2
	dw WATER_GUN, LASER_FOCUS, SUPERSONIC, FLAIL
	
	; Remoraid3
	dw WATER_GUN, LASER_FOCUS, ACID_SPRAY, SCREECH
	
	; Remoraid4
	dw WATER_GUN, STRING_SHOT, AMNESIA, MUD_SHOT
	
	; Happiny1
	dw POUND, DEFENSE_CURL, PRESENT, PSYCH_UP
	
	; Happiny2
	dw POUND, CHARM, METRONOME, MOONLIGHT
	
	; Happiny3
	dw POUND, DEFENSE_CURL, BUBBLEBEAM, SPARK
	
	; Happiny4
	dw POUND, ENDURE, MUD_SHOT, SAFEGUARD
	
	; Snubbull1
	dw TACKLE, TAIL_WHIP, METRONOME, PRESENT
	
	; Snubbull2
	dw TACKLE, LEER, POISON_FANG, PURSUIT
	
	; Snubbull3
	dw TACKLE, TAIL_WHIP, ENDURE, POWERUPPUNCH
	
	; Snubbull4
	dw TACKLE, SAND_ATTACK, LOW_KICK, SPARK
	
	; Snubbull5
	dw TACKLE, TAIL_WHIP, SUPER_FANG, BULK_UP
	
	; Mantyke1
	dw GUST, SUPERSONIC, MIRROR_COAT, HAZE
	
	; Mantyke2
	dw SPLASH, SUPERSONIC, MUD_SHOT, AMNESIA
	
	; Mantyke3
	dw TACKLE, CHARM, PSYBEAM, SLAM
	
	; Pinsir1
	dw PECK, ENDURE, MEGAHORN, REVERSAL
	
	; Pinsir2
	dw PECK, IRON_DEFENSE, ROCK_THROW, FLAIL
	
	; Pinsir3
	dw PECK, HARDEN, SWAGGER, FALSE_SWIPE
	
	; Pinsir4
	dw PECK, BULK_UP, SKY_UPPERCUT, SLAM
	
	; Vulpix Alolan1
	dw POWDER_SNOW, HOWL, ICE_FANG, FLAIL
	
	; Vulpix Alolan2
	dw POWDER_SNOW, CHARM, CONFUSION, ENCORE
	
	; Vulpix Alolan3
	dw LICK, TAIL_WHIP, ICE_SHARD, PURSUIT
	
	; Vulpix Alolan4
	dw POWDER_SNOW, HYPNOSIS, DESTINY_BOND, HEX
	
	; Girafarig1
	dw TACKLE, GROWL, AMNESIA, PSYSTRIKE
	
	; Girafarig2
	dw TACKLE, PSYCH_UP, MEAN_LOOK, PSYCHO_CUT
	
	; Girafarig3
	dw TACKLE, GROWL, TRI_ATTACK, MIRROR_COAT
	
	; Girafarig4
	dw TACKLE, GROWL, THUNDERSHOCK, ECHOED_VOICE
	
	; Girafarig5
	dw TACKLE, GROWL, DOUBLE_KICK, SLAM
	
	; Ekans1
	dw WRAP, LEER, SPITE, CRUNCH
	
	; Ekans2
	dw WRAP, LEER, SUPER_FANG, DISABLE
	
	; Ekans3
	dw WRAP, LEER, DRAGON_DANCE, PURSUIT, 
	
	; Ekans4
	dw WRAP, LEER, DRAGON_RAGE, ICE_FANG
	
	; Seel1
	dw LICK, GROWL, BUBBLEBEAM, PERISH_SONG
	
	; Seel2
	dw PECK, GROWL, HORN_ATTACK, HORN_DRILL
	
	; Seel3
	dw TACKLE, GROWL, DRILL_RUN, PURSUIT
	
	; Seel4
	dw TACKLE, GROWL, AQUA_JET, ECHOED_VOICE
	
	; Seel5
	dw TACKLE, DISABLE, MILK_DRINK, SLAM
	
	; Elekid1
	dw QUICK_ATTACK, ENDURE, SPARK, REVERSAL
	
	; Elekid2
	dw QUICK_ATTACK, LEER, SWAGGER, PURSUIT
	
	; Elekid3
	dw THUNDERSHOCK, LEER, POWERUPPUNCH, BATON_PASS
	
	; Stantler1
	dw TACKLE, SPITE, PSYCHO_CUT, BITE
	
	; Stantler2
	dw TACKLE, LEER, MEGAHORN, BLAZE_KICK
	
	; Stantler3
	dw TACKLE, LEER, SAFEGUARD, SLAM
	
	; Stantler4
	dw TACKLE, LEER, DOUBLE_KICK, PSYCH_UP
	
	; Wooper1
	dw WATER_GUN, TAIL_WHIP, SAFEGUARD, ANCIENTPOWER
	
	; Wooper2
	dw WATER_GUN, TAIL_WHIP, BELLY_DRUM, DOUBLE_KICK
	
	; Wooper3
	dw WATER_GUN, TAIL_WHIP, ACID_SPRAY, RECOVER
	
	; Wooper4
	dw WATER_GUN, ENDURE, POWERUPPUNCH, PURSUIT
	
	; Wooper5
	dw WATER_GUN, TAIL_WHIP, THUNDERSHOCK, ENCORE
	
	; GrowlitheHisuian1
	dw EMBER, ENDURE, DOUBLE_KICK, SWAGGER
	
	; GrowlitheHisuian2
	dw EMBER, GROWL, MORNING_SUN, BITE
	
	; GrowlitheHisuian3
	dw EMBER, CHARM, SAFEGUARD, SLAM
	
	; GrowlitheHisuian4
	dw EMBER, LEER, DRAGON_RAGE, ANCIENTPOWER
	
	; Swinub1
	dw TACKLE, SAND_ATTACK, HOWL, BITE

	; Swinub2
	dw TACKLE, CHARM, WHIRLWIND, SLAM

	; Swinub3
	dw TACKLE, DEFENSE_CURL, SWAGGER, SLAM
	