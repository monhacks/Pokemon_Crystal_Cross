	db 0 ; species ID placeholder

	db  90, 130,  80,  55,  65,  85
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 242 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/machamp/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SUBMISSION, THIEF, POISON_JAB, SHADOWSTRIKE, BULLDOZE, RAIN_DANCE, MIMIC, LASER_FOCUS, LIGHT_SCREEN, COUNTER, SEISMIC_TOSS, MEGA_KICK, MEGA_PUNCH, SUBSTITUTE, ROCK_CLIMB, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, ICE_PUNCH, SLEEP_TALK, FIRE_BLAST, THUNDERPUNCH, ROCK_SLIDE, REST, ATTRACT, THIEF, FIRE_PUNCH, STRENGTH, FLAMETHROWER
	; end
