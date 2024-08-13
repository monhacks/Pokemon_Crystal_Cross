	db 0 ; species ID placeholder

	db  41,  64,  45,  50,  50,  50
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, DRAGON ; type
	db 45 ; catch rate
	db 84 ; base exp
	db SILVER_SCALE, DRAGON_SCALE ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/dratini/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, HEAL_BELL, DIVE, WHIRLPOOL, OUTRAGE, TWISTER, WAVE_CRASH, SUNNY_DAY, THUNDER_WAVE, SUBSTITUTE, LIGHT_SCREEN, HAIL, WATER_PULSE, SWIFT, MIMIC, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, IRON_TAIL, DRAGONBREATH, THUNDER, RETURN, DOUBLE_TEAM, SLEEP_TALK, FIRE_BLAST, REST, ATTRACT, SURF, WATERFALL, FLAMETHROWER, THUNDERBOLT, ICE_BEAM
	; end
