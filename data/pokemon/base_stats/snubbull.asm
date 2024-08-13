	db 0 ; species ID placeholder

	db  60,  80,  50,  30,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 190 ; catch rate
	db 79 ; base exp
	db PINK_BOW, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/snubbull/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SNARL, FLAMETHROWER, BULLDOZE, SEISMIC_TOSS, SOLARBEAM, HEAL_BELL, COUNTER, MIMIC, HYPER_VOICE, THUNDER_WAVE, SUBSTITUTE, REFLECT, WATER_PULSE, HEADBUTT, CURSE, ROAR, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, THUNDER, RETURN, SHADOW_BALL, DOUBLE_TEAM, ICE_PUNCH, SLEEP_TALK, SLUDGE_BOMB, THUNDERPUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, STRENGTH, THUNDERBOLT
	; end
