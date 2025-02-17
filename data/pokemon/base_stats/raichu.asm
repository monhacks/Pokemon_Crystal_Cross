	db 0 ; species ID placeholder

	db  70,  95,  55, 100,  95,  80
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 75 ; catch rate
	db 153 ; base exp
	db NO_ITEM, BERRY ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/raichu/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm VOLT_TACKLE, SHADOW_RUSH, ROCK_SMASH, DIG, AURA_SPHERE, SEISMIC_TOSS, LASER_FOCUS, CHARGE_BEAM, SUBMISSION, THUNDER_WAVE, COUNTER, MEGA_KICK, MEGA_PUNCH, SUBSTITUTE, LIGHT_SCREEN, SWIFT, MIMIC, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDER, RETURN, DOUBLE_TEAM, SLEEP_TALK, THUNDERPUNCH, REST, ATTRACT, THIEF, STRENGTH, FLASH, SURF, THUNDERBOLT
	; end
