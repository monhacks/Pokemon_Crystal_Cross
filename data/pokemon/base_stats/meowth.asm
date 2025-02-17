	db 0 ; species ID placeholder

	db  40,  45,  35,  90,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 87 ; base exp
	db ORAN_BERRY, QUICK_CLAW ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/meowth/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, HYPER_VOICE, DIG, FLASH, FURY_CUTTER, SWIFT, RAIN_DANCE, THUNDER_WAVE, SUBSTITUTE, DARK_PULSE, WATER_PULSE, MIMIC, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SUNNY_DAY, ICY_WIND, PROTECT, IRON_TAIL, THUNDER, RETURN, SHADOW_BALL, DOUBLE_TEAM, SLEEP_TALK, DREAM_EATER, REST, ATTRACT, THIEF, NIGHTMARE, CUT, THUNDERBOLT
	; end
