	db 0 ; species ID placeholder

	db  55,  81,  60,  97,  50,  70
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 145 ; base exp
	db ORAN_BERRY, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/raticate/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, CHARGE_BEAM, SHADOWSTRIKE, DARK_PULSE, SWORDS_DANCE, RAIN_DANCE, LASER_FOCUS, MIMIC, VOLT_TACKLE, SNARL, THUNDER_WAVE, COUNTER, SUBSTITUTE, HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, IRON_TAIL, THUNDER, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, THIEF, CUT, STRENGTH, THUNDERBOLT, ICE_BEAM
	; end
