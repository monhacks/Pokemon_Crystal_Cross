	db 0 ; species ID placeholder

	db  75, 100,  66, 115,  60,  66
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 118 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/ambipom/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, THUNDER_WAVE, AURA_SPHERE, SHADOWSTRIKE, MEGA_KICK, SOLARBEAM, LASER_FOCUS, SUBMISSION, RAIN_DANCE, MIMIC, COUNTER, SEISMIC_TOSS, MEGA_PUNCH, SUBSTITUTE, WATER_PULSE, SWIFT, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, PROTECT, IRON_TAIL, THUNDER, RETURN, SHADOW_BALL, DOUBLE_TEAM, ICE_PUNCH, SLEEP_TALK, THUNDERBOLT, THUNDERPUNCH, DREAM_EATER, REST, ATTRACT, THIEF, FIRE_PUNCH, FURY_CUTTER, NIGHTMARE, CUT, STRENGTH, THUNDERBOLT
	; end
