	db 0 ; species ID placeholder

	db  65, 110,  79,  80,  75,  79
	;   hp  atk  def  spd  sat  sdf

	db POISON, DARK ; type
	db 90 ; catch rate
	db 184 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/arbok_dark/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SUBSTITUTE, ROCK_SLIDE, POISON_JAB, BULLDOZE, NIGHT_SHADE, IRON_TAIL, SNARL, RAIN_DANCE, DARK_PULSE, MIMIC, HEADBUTT, CURSE, DRAGONBREATH, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, SLUDGE_BOMB, REST, ATTRACT, THIEF, STRENGTH
	; end
