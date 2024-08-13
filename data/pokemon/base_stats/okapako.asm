	db 0 ; species ID placeholder

	db  50,  60,  45,  65,  70,  45
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, PSYCHIC_TYPE ; type
	db 60 ; catch rate
	db 187 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/okapako/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, CHARGE_BEAM, FLASH, AURA_SPHERE, BULLDOZE, RAIN_DANCE, MIMIC, ENERGY_BALL, HYPER_VOICE, NIGHT_SHADE, THUNDER_WAVE, SUBSTITUTE, CALM_MIND, LIGHT_SCREEN, REFLECT, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, PROTECT, IRON_TAIL, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SLEEP_TALK, DREAM_EATER, REST, ATTRACT, THIEF, STRENGTH, THUNDERBOLT
	; end
