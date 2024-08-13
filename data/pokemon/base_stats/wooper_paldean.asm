	db 0 ; species ID placeholder

	db  55,  45,  45,  15,  25,  25
	;   hp  atk  def  spd  sat  sdf

	db POISON, GROUND ; type
	db 255 ; catch rate
	db 65 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/wooper_paldean/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SPIKES, SHADOW_RUSH, DIVE, BULLDOZE, EARTH_POWER, SUBSTITUTE, MIMIC, HAIL, WATER_PULSE, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, ICE_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, SLUDGE_BOMB, SANDSTORM, REST, ATTRACT, SURF, FLASH, ICE_BEAM
	; end
