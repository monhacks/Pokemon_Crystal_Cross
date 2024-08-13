	db 0 ; species ID placeholder

	db  45,  67,  60,  63,  35,  50
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 225 ; catch rate
	db 139 ; base exp
	db SILVER_SCALE, MYSTIC_WATER ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/goldeen/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SWORDS_DANCE, DIVE, WHIRLPOOL, FURY_CUTTER, AURA_SPHERE, POISON_JAB, SWIFT, BULLDOZE, SUBSTITUTE, HAIL, MIMIC, WATER_PULSE, CURSE, TOXIC, HIDDEN_POWER, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, SURF, WATERFALL, ICE_BEAM
	; end
