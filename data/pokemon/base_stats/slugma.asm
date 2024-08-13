	db 0 ; species ID placeholder

	db  40,  40,  40,  20,  70,  40
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 98 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/slugma/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, PAIN_SPLIT, WILL_O_WISP, ROCK_SLIDE, EARTH_POWER, SELFDESTRUCT, MIMIC, SUBSTITUTE, LIGHT_SCREEN, REFLECT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, PROTECT, RETURN, DOUBLE_TEAM, SLEEP_TALK, FIRE_BLAST, REST, ATTRACT, FLAMETHROWER
	; end
