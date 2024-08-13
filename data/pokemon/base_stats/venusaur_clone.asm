	db 0 ; species ID placeholder

	db  80,  92,  73,  80, 110, 90
	;   hp  atk  def  spd  sat  sdf

	db GRASS, DARK ; type
	db 45 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/venusaur_clone/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, ENERGY_BALL, ROCK_SMASH, ROCK_CLIMB, STRENGTH, SLUDGE_BOMB, THIEF, BULLDOZE, SWORDS_DANCE, EARTH_POWER, MIMIC, SELFDESTRUCT, SUBSTITUTE, LIGHT_SCREEN, REFLECT, OUTRAGE, HEADBUTT, CURSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, EARTHQUAKE, HYPER_BEAM, PROTECT, GIGA_DRAIN, SOLARBEAM, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, FURY_CUTTER, CUT, FLASH
	; end
