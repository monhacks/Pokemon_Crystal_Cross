	db 0 ; species ID placeholder

	db  55,  55,  85,  35,  65,  85
	;   hp  atk  def  spd  sat  sdf

	db WATER, ROCK ; type
	db 60 ; catch rate
	db 142 ; base exp
	db NO_ITEM, MYSTIC_WATER ; items
	db GENDER_F75 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/corsola/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, PAIN_SPLIT, DIG, SHADOW_BALL, BULLDOZE, SPIKES, ICY_WIND, HYPER_BEAM, MIMIC, BLIZZARD, EARTH_POWER, SELFDESTRUCT, SUBSTITUTE, CALM_MIND, LIGHT_SCREEN, REFLECT, HAIL, WATER_PULSE, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, PROTECT, RAIN_DANCE, EARTHQUAKE, RETURN, PSYCHIC_M, DOUBLE_TEAM, SLEEP_TALK, SANDSTORM, ROCK_SLIDE, REST, ATTRACT, SURF, STRENGTH, WHIRLPOOL, ICE_BEAM
	; end
