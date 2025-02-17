	db 0 ; species ID placeholder

	db  65,  45,  55,  45,  45,  70
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 190 ; catch rate
	db 125 ; base exp
	db NO_ITEM, NEVERMELTICE ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/seel/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SUBSTITUTE, THIEF, WAVE_CRASH, IRON_TAIL, HAIL, MIMIC, WATER_PULSE, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, ICE_BEAM, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, SURF, WHIRLPOOL, WATERFALL, ICE_BEAM
	; end
