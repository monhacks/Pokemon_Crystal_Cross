	db 0 ; species ID placeholder

	db  35,  65,  44,  55,  45,  54
	;   hp  atk  def  spd  sat  sdf

	db POISON, DARK ; type
	db 255 ; catch rate
	db 78 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/ekans_dark/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SUBSTITUTE, ROCK_SLIDE, POISON_JAB, DRAGONBREATH, BULLDOZE, IRON_TAIL, RAIN_DANCE, DARK_PULSE, MIMIC, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, SLUDGE_BOMB, REST, ATTRACT, THIEF, STRENGTH
	; end
