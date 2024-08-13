	db 0 ; species ID placeholder

	db 100,  05,  05,  30,  15, 65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 130 ; catch rate
	db 255 ; base exp
	db NO_ITEM, LUCKY_EGG ; items
	db GENDER_F100 ; gender ratio
	db 12 ; step cycles to hatch
	INCBIN "gfx/pokemon/happiny/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, HYPER_VOICE, LIGHT_SCREEN, SEISMIC_TOSS, MIMIC, HEAL_BELL, THUNDER_WAVE, SUBSTITUTE, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, ICY_WIND, PROTECT, RAIN_DANCE, THUNDERBOLT, SOLARBEAM, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SLEEP_TALK, FIRE_BLAST, FLAMETHROWER, DREAM_EATER, REST, ATTRACT, FLASH, FLAMETHROWER, THUNDERBOLT
	; end
