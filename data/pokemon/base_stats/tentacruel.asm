	db 0 ; species ID placeholder

	db  80,  70,  65, 100,  80, 120
	;   hp  atk  def  spd  sat  sdf

	db WATER, POISON ; type
	db 60 ; catch rate
	db 255	; base exp
	db NO_ITEM, POISON_BARB ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/tentacruel/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SWORDS_DANCE, DIVE, THIEF, POISON_JAB, SPIKES, SUBSTITUTE, REFLECT, MIMIC, HAIL, WATER_PULSE, CURSE, TOXIC, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, GIGA_DRAIN, RETURN, DOUBLE_TEAM, SLEEP_TALK, SLUDGE_BOMB, REST, ATTRACT, CUT, SURF, WHIRLPOOL, ICE_BEAM
	; end
