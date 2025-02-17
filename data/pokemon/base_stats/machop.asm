	db 0 ; species ID placeholder

	db  70,  80,  50,  35,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 180 ; catch rate
	db 110 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/machop/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, MEGA_KICK, ROCK_CLIMB, THIEF, ROCK_SLIDE, POISON_JAB, BULLDOZE, RAIN_DANCE, LASER_FOCUS, MIMIC, LIGHT_SCREEN, MEGA_PUNCH, SUBMISSION, COUNTER, SEISMIC_TOSS, SUBSTITUTE, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, PROTECT, RETURN, DIG, DOUBLE_TEAM, ICE_PUNCH, SLEEP_TALK, FIRE_BLAST, THUNDERPUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, STRENGTH, FLAMETHROWER
	; end
