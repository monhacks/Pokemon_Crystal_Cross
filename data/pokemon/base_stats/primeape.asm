	db 0 ; species ID placeholder

	db  65, 105,  60,  95,  60,  70
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 75 ; catch rate
	db 187 ; base exp
	db NO_ITEM, BERSERK_GENE ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/primeape/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SUBMISSION, POISON_JAB, BULLDOZE, RAIN_DANCE, LASER_FOCUS, EARTHQUAKE, MIMIC, COUNTER, SEISMIC_TOSS, MEGA_KICK, MEGA_PUNCH, SUBSTITUTE, ROCK_CLIMB, OUTRAGE, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, IRON_TAIL, THUNDER, RETURN, DIG, DOUBLE_TEAM, ICE_PUNCH, SLEEP_TALK, THUNDERPUNCH, ROCK_SLIDE, REST, ATTRACT, THIEF, FIRE_PUNCH, STRENGTH, THUNDERBOLT
	; end
