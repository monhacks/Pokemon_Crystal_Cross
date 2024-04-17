	db 0 ; species ID placeholder

	db  50,  65,  64,  43,  44,  48
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 83 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/totodile/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SEISMIC_TOSS, WATERFALL, ROCK_SLIDE, THIEF, DRAGONBREATH, MEGA_KICK, SWORDS_DANCE, WAVE_CRASH, COUNTER, SUBSTITUTE, MIMIC, HAIL, WATER_PULSE, DRAGON_CLAW, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, DIG, DOUBLE_TEAM, ICE_PUNCH, SLEEP_TALK, REST, ATTRACT, CUT, SURF, WHIRLPOOL, ICE_BEAM
	; end
