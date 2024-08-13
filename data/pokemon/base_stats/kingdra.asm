	db 0 ; species ID placeholder

	db  75,  95,  95,  85,  95,  95
	;   hp  atk  def  spd  sat  sdf

	db WATER, DRAGON ; type
	db 45 ; catch rate
	db 255 ; base exp
	db NO_ITEM, DRAGON_SCALE ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kingdra/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, TWISTER, DIVE, SWIFT, RAZOR_WIND, POISON_JAB, SUBSTITUTE, LASER_FOCUS, WAVE_CRASH, AEROBLAST, MIMIC, HAIL, FLASH_CANNON, WATER_PULSE, OUTRAGE, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, DRAGONBREATH, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, SURF, WHIRLPOOL, WATERFALL, ICE_BEAM
	; end
