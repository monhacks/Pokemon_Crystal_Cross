	db 0 ; species ID placeholder

	db  90, 125,  90, 100,  85,  90
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FLYING ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/zapdos/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm VOLT_TACKLE, SHADOW_RUSH, AURA_SPHERE, ROOST, SUBMISSION, LASER_FOCUS, THUNDER_WAVE, COUNTER, MEGA_KICK, SUBSTITUTE, LIGHT_SCREEN, SWIFT, MIMIC, CURSE, ROAR, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, THUNDERBOLT, THUNDER, RETURN, DOUBLE_TEAM, SLEEP_TALK, SANDSTORM, RAZOR_WIND, REST, STEEL_WING, FLASH, THUNDERBOLT
	; end
