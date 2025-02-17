	db 0 ; species ID placeholder

	db 130,  85,  80,  60,  85,  95
	;   hp  atk  def  spd  sat  sdf

	db WATER, ICE ; type
	db 45 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NEVERMELTICE ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/lapras/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, HEAL_BELL, DIVE, WATERFALL, AURA_SPHERE, BULLDOZE, MIMIC, HYPER_VOICE, LASER_FOCUS, WAVE_CRASH, ROAR, SUBSTITUTE, REFLECT, HAIL, WATER_PULSE, OUTRAGE, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, IRON_TAIL, DRAGONBREATH, THUNDER, RETURN, PSYCHIC_M, DOUBLE_TEAM, SLEEP_TALK, DREAM_EATER, REST, ATTRACT, NIGHTMARE, SURF, STRENGTH, WHIRLPOOL, THUNDERBOLT, ICE_BEAM
	; end
