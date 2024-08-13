	db 0 ; species ID placeholder

	db  45,  49,  49,  45,  65,  65
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 80 ; base exp
	db NO_ITEM, MIRACLE_SEED ; items
	db GENDER_F12_5 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/bulbasaur/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, ENERGY_BALL, ROCK_SMASH, STRENGTH, THIEF, SLUDGE_BOMB, SWORDS_DANCE, EARTH_POWER, SELFDESTRUCT, MIMIC, SUBSTITUTE, LIGHT_SCREEN, REFLECT, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, SOLARBEAM, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, FURY_CUTTER, CUT, FLASH
	; end
