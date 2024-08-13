	db 0 ; species ID placeholder

	db  44,  58,  55,  43,  60,  54
	;   hp  atk  def  spd  sat  sdf

	db WATER, DARK ; type
	db 45 ; catch rate
	db 83 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/squirtle/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SUBSTITUTE, DIVE, ROCK_SLIDE, MEGA_PUNCH, MEGA_KICK, SEISMIC_TOSS, WAVE_CRASH, COUNTER, AURA_SPHERE, REFLECT, MIMIC, HAIL, WATER_PULSE, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, DIG, DOUBLE_TEAM, ICE_PUNCH, SLEEP_TALK, REST, ATTRACT, SURF, STRENGTH, WHIRLPOOL, WATERFALL, ICE_BEAM
	; end
