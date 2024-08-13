	db 0 ; species ID placeholder

	db  70,  55,  55,  45,  80,  60
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 120 ; catch rate
	db 147 ; base exp
	db LIGHT_BALL, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/flaaffy/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, REFLECT, MEGA_KICK, SEISMIC_TOSS, CHARGE_BEAM, HEAL_BELL, MIMIC, THUNDER_WAVE, COUNTER, SUBSTITUTE, LIGHT_SCREEN, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDER, RETURN, DOUBLE_TEAM, SLEEP_TALK, THUNDERPUNCH, REST, ATTRACT, FIRE_PUNCH, STRENGTH, FLASH, THUNDERBOLT
	; end
