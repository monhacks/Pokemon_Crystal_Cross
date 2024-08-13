	db 0 ; species ID placeholder

	db  60, 60, 60, 105, 105, 105
	;   hp  atk   def  spd  sat  sdf

	db GHOST, GHOST ; type
	db 45 ; catch rate
	db 184 ; base exp
	db NO_ITEM, CLEANSE_TAG ; items
	db GENDER_F50 ; gender ratio
	db 12 ; step cycles to hatch
	INCBIN "gfx/pokemon/mismagius/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, HEAL_BELL, SACRED_FIRE, CHARGE_BEAM, MIMIC, ENERGY_BALL, PAIN_SPLIT, HYPER_VOICE, NIGHT_SHADE, THUNDER_WAVE, SUBSTITUTE, CALM_MIND, WILL_O_WISP, DARK_PULSE, ICY_WIND, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SLEEP_TALK, DREAM_EATER, REST, ATTRACT, THIEF, FLASH, THUNDERBOLT
	; end
