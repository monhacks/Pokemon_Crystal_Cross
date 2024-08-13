	db 0 ; species ID placeholder

	db 100, 100, 100, 100, 100, 100
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, GRASS ; type
	db 45 ; catch rate
	db 80 ; base exp
	db NO_ITEM, MIRACLEBERRY ; items
	db GENDER_UNKNOWN ; gender ratio
	db 60 ; step cycles to hatch
	INCBIN "gfx/pokemon/celebi/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, CHARGE_BEAM, CUT, SWORDS_DANCE, PAIN_SPLIT, LASER_FOCUS, ENERGY_BALL, HEAL_BELL, EARTH_POWER, THUNDER_WAVE, SUBSTITUTE, CALM_MIND, AURA_SPHERE, LIGHT_SCREEN, REFLECT, WATER_PULSE, SWIFT, MIMIC, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, GIGA_DRAIN, SOLARBEAM, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SLEEP_TALK, SANDSTORM, DREAM_EATER, REST, FLASH
	; end
