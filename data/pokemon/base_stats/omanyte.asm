	db 0 ; species ID placeholder

	db  35,  40, 100,  35,  90,  55
	;   hp  atk  def  spd  sat  sdf

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 150 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/omanyte/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SPIKES, DIVE, ROCK_SLIDE, EARTH_POWER, MIMIC, SUBSTITUTE, HAIL, WATER_PULSE, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, ICY_WIND, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SLEEP_TALK, SANDSTORM, REST, ATTRACT, THIEF, SURF, WHIRLPOOL, ICE_BEAM
	; end
