	db 0 ; species ID placeholder

	db  75,  38,  38,  67,  56,  56
	;   hp  atk  def  spd  sat  sdf

	db WATER, ELECTRIC ; type
	db 190 ; catch rate
	db 113 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/chinchou/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, CHARGE_BEAM, DIVE, HEAL_BELL, THUNDER_WAVE, SUBSTITUTE, MIMIC, HAIL, WATER_PULSE, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, ICE_BEAM, PROTECT, RAIN_DANCE, THUNDERBOLT, THUNDER, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, SURF, FLASH, WHIRLPOOL, WATERFALL, THUNDERBOLT, ICE_BEAM
	; end
