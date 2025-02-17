	db 0 ; species ID placeholder

	db  70, 100, 115,  30,  30,  65
	;   hp  atk  def  spd  sat  sdf

	db ROCK, ROCK ; type
	db 65 ; catch rate
	db 169 ; base exp
	db NO_ITEM, SITRUS_BERRY ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sudowoodo/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, EARTH_POWER, SHADOWSTRIKE, MEGA_KICK, BULLDOZE, SPIKES, COUNTER, SELFDESTRUCT, SEISMIC_TOSS, MEGA_PUNCH, SUBSTITUTE, CALM_MIND, MIMIC, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, PROTECT, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, ICE_PUNCH, SLEEP_TALK, SANDSTORM, ROCK_SLIDE, THUNDERPUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, STRENGTH
	; end
