	db 0 ; species ID placeholder

	db  85, 105, 100,  78,  79,  83
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/feraligatr/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SUBMISSION, COUNTER, SEISMIC_TOSS, MEGA_KICK, MEGA_PUNCH, SUBSTITUTE, HAIL, WATER_PULSE, DRAGON_CLAW, ROCK_CLIMB, OUTRAGE, DYNAMICPUNCH, HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, IRON_TAIL, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, ICE_PUNCH, SLEEP_TALK, ROCK_SLIDE, REST, ATTRACT, FURY_CUTTER, CUT, SURF, STRENGTH, WHIRLPOOL, ICE_BEAM
	; end
