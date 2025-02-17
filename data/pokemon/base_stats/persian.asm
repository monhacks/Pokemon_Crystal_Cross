	db 0 ; species ID placeholder

	db  65,  90,  60, 115,  75,  75
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 185 ; base exp
	db CHERI_BERRY, QUICK_CLAW ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/persian/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SNARL, SWIFT, FLASH, DIG, FURY_CUTTER, HYPER_VOICE, RAIN_DANCE, THUNDER_WAVE, SUBSTITUTE, DARK_PULSE, WATER_PULSE, MIMIC, HEADBUTT, CURSE, ROAR, TOXIC, ZAP_CANNON, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, ICY_WIND, PROTECT, THUNDERBOLT, IRON_TAIL, THUNDER, RETURN, SHADOW_BALL, DOUBLE_TEAM, SLEEP_TALK, DREAM_EATER, REST, ATTRACT, THIEF, NIGHTMARE, CUT, THUNDERBOLT
	; end
