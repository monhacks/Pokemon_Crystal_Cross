	db 0 ; species ID placeholder

	db 100,  70,  70,  45,  65,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 190 ; catch rate
	db 94 ; base exp
	db NO_ITEM, LUM_BERRY ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/dunsparce/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, CHARGE_BEAM, SHADOW_BALL, FIRE_BLAST, ROCK_SLIDE, POISON_JAB, BULLDOZE, PAIN_SPLIT, COUNTER, EARTH_POWER, EARTHQUAKE, BLIZZARD, ROOST, MIMIC, THUNDER_WAVE, SUBSTITUTE, CALM_MIND, WATER_PULSE, ICE_BEAM, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, SOLARBEAM, IRON_TAIL, THUNDER, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, DREAM_EATER, REST, ATTRACT, THIEF, NIGHTMARE, STRENGTH, FLAMETHROWER, THUNDERBOLT
	; end
