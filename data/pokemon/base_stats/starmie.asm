	db 0 ; species ID placeholder

	db  60,  75,  85, 115, 100,  85
	;   hp  atk  def  spd  sat  sdf

	db WATER, PSYCHIC_TYPE ; type
	db 60 ; catch rate
	db 255 ; base exp
	db STARDUST, STAR_PIECE ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/starmie/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, PAIN_SPLIT, DIVE, AURA_SPHERE, RAIN_DANCE, TWISTER, THUNDER_WAVE, WATER_PULSE, SUBSTITUTE, LIGHT_SCREEN, REFLECT, HAIL, FLASH_CANNON, SWIFT, MIMIC, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, THUNDER, RETURN, PSYCHIC_M, DOUBLE_TEAM, SLEEP_TALK, DREAM_EATER, REST, ATTRACT, SURF, FLASH, WHIRLPOOL, WATERFALL, THUNDERBOLT, ICE_BEAM
	; end
