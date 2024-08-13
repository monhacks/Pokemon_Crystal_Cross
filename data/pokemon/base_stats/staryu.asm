	db 0 ; species ID placeholder

	db  30,  45,  55,  85,  70,  55
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 225 ; catch rate
	db 133 ; base exp
	db STARDUST, STAR_PIECE ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/staryu/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, PAIN_SPLIT, DIVE, RAIN_DANCE, TWISTER, THUNDER_WAVE, WATER_PULSE, SUBSTITUTE, LIGHT_SCREEN, REFLECT, HAIL, FLASH_CANNON, SWIFT, MIMIC, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, THUNDER, RETURN, PSYCHIC_M, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, SURF, FLASH, WHIRLPOOL, WATERFALL, THUNDERBOLT, ICE_BEAM
	; end
