	db 0 ; species ID placeholder

	db  75, 115, 105, 65,  60,  70
	;   hp  atk  def  spd  sat  sdf

	db WATER, STEEL ; type
	db 45 ; catch rate
	db 75 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/detoqwil/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, THUNDER_WAVE, DIVE, SHADOW_BALL, ZAP_CANNON, POISON_JAB, SWIFT, BULLDOZE, WAVE_CRASH, HYPER_BEAM, SPIKES, MIMIC, PAIN_SPLIT, SELFDESTRUCT, SWORDS_DANCE, FLASH_CANNON, SUBSTITUTE, HAIL, WATER_PULSE, IRON_TAIL, FIRE_BLAST, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SLEEP_TALK, SLUDGE_BOMB, REST, ATTRACT, SURF, WHIRLPOOL, WATERFALL, ICE_BEAM
	; end
