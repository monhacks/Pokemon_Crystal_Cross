	db 0 ; species ID placeholder

	db  30,  40,  70,  60,  70,  25
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 225 ; catch rate
	db 104 ; base exp
	db NO_ITEM, SILVER_SCALE ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/horsea/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, TWISTER, DIVE, SWIFT, SUBSTITUTE, LASER_FOCUS, HAIL, FLASH_CANNON, WATER_PULSE, MIMIC, CURSE, TOXIC, HIDDEN_POWER, ICY_WIND, PROTECT, RAIN_DANCE, DRAGONBREATH, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, SURF, WHIRLPOOL, WATERFALL, ICE_BEAM
	; end
