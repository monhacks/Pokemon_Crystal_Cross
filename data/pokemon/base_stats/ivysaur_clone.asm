	db 0 ; species ID placeholder

	db  60,  72,  53,  60,  90,  70
	;   hp  atk  def  spd  sat  sdf

	db GRASS, DARK ; type
	db 45 ; catch rate
	db 177 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/ivysaur_clone/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, ENERGY_BALL, ROCK_SMASH, STRENGTH, THIEF, SLUDGE_BOMB, SWORDS_DANCE, MIMIC, EARTH_POWER, SELFDESTRUCT, SUBSTITUTE, LIGHT_SCREEN, REFLECT, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, SOLARBEAM, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, FURY_CUTTER, CUT, FLASH
	; end
