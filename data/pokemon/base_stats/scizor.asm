	db 0 ; species ID placeholder

	db  70, 130, 100,  65,  55,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, STEEL ; type
	db 25 ; catch rate
	db 250 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/scizor/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, ROOST, SWIFT, RAIN_DANCE, LASER_FOCUS, SUBMISSION, COUNTER, MIMIC, SWORDS_DANCE, SUBSTITUTE, LIGHT_SCREEN, REFLECT, FLASH_CANNON, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RETURN, DOUBLE_TEAM, SLEEP_TALK, SANDSTORM, RAZOR_WIND, REST, ATTRACT, THIEF, STEEL_WING, FURY_CUTTER, CUT, STRENGTH
	; end
