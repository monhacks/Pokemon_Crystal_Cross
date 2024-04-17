	db 0 ; species ID placeholder

	db 120,  75,  60,  20,  55, 100
	;   hp  atk  def  spd  sat  sdf

	db POISON, GROUND ; type
	db 90 ; catch rate
	db 172 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/clodsire/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SPIKES, SHADOW_RUSH, DIVE, ROCK_SLIDE, AURA_SPHERE, POISON_JAB, BULLDOZE, EARTH_POWER, COUNTER, WAVE_CRASH, MIMIC, SUBSTITUTE, HAIL, MIMIC, WATER_PULSE, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, SLUDGE_BOMB, SANDSTORM, REST, ATTRACT, SURF, STRENGTH, FLASH, ICE_BEAM
	; end
