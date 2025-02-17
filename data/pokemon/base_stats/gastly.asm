	db 0 ; species ID placeholder

	db  30,  35,  30,  80, 100,  35
	;   hp  atk  def  spd  sat  sdf

	db GHOST, POISON ; type
	db 190 ; catch rate
	db 119 ; base exp
	db NO_ITEM, SPELL_TAG ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/gastly/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, ENERGY_BALL, WILL_O_WISP, SLUDGE_BOMB, PAIN_SPLIT, ICY_WIND, NIGHT_SHADE, SELFDESTRUCT, SUBSTITUTE, DARK_PULSE, MIMIC, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, GIGA_DRAIN, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SLEEP_TALK, DREAM_EATER, REST, ATTRACT, THIEF, NIGHTMARE, THUNDERBOLT
	; end
