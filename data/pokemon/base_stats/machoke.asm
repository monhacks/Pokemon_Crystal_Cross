	db 0 ; species ID placeholder

	db  80, 100,  70,  45,  50,  60
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 90 ; catch rate
	db 183 ; base exp
	db BLACKBELT_I, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/machoke/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, MEGA_KICK, THIEF, POISON_JAB, SHADOWSTRIKE, BULLDOZE, RAIN_DANCE, LASER_FOCUS, MIMIC, LIGHT_SCREEN, SUBMISSION, COUNTER, SEISMIC_TOSS, MEGA_PUNCH, SUBSTITUTE, ROCK_CLIMB, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, PROTECT, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, ICE_PUNCH, SLEEP_TALK, FIRE_BLAST, THUNDERPUNCH, ROCK_SLIDE, REST, ATTRACT, THIEF, FIRE_PUNCH, STRENGTH, FLAMETHROWER
	; end
