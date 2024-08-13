	db 0 ; species ID placeholder

	db  35,  20,  65,  20,  40,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 190 ; catch rate
	db 93 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 5 ; step cycles to hatch
	INCBIN "gfx/pokemon/togepi/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, HEAL_BELL, AURA_SPHERE, SWIFT, HYPER_VOICE, THUNDER_WAVE, MIMIC, SUBSTITUTE, LIGHT_SCREEN, REFLECT, WATER_PULSE, CURSE, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, SOLARBEAM, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SLEEP_TALK, FIRE_BLAST, DREAM_EATER, REST, ATTRACT, FLASH, FLAMETHROWER
	; end
