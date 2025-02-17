	db 0 ; species ID placeholder

	db  60,  62,  80,  60,  63,  80
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 177 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/bayleef/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm FURY_CUTTER, SHADOW_RUSH, DRAGONBREATH, ENERGY_BALL, COUNTER, LASER_FOCUS, EARTH_POWER, MIMIC, SWORDS_DANCE, SUBSTITUTE, LIGHT_SCREEN, REFLECT, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, SOLARBEAM, IRON_TAIL, RETURN, DOUBLE_TEAM, SLEEP_TALK, ROCK_SLIDE, REST, ATTRACT, FURY_CUTTER, CUT, STRENGTH, FLASH
	; end
