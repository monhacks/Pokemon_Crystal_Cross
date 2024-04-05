	db 0 ; species ID placeholder

	db 115,  45,  20,  20,  45,  25
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 170 ; catch rate
	db 95 ; base exp
	db CHESTO_BERRY, PINK_BOW ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/jigglypuff/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, PAIN_SPLIT, SEISMIC_TOSS, MEGA_PUNCH, CHARGE_BEAM, HEAL_BELL, HYPER_VOICE, SELFDESTRUCT, THUNDER_WAVE, SUBSTITUTE, LIGHT_SCREEN, REFLECT, WATER_PULSE, MIMIC, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SUNNY_DAY, BLIZZARD, PROTECT, RAIN_DANCE, SOLARBEAM, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, ICE_PUNCH, SLEEP_TALK, FIRE_BLAST, THUNDERPUNCH, DREAM_EATER, REST, ATTRACT, FIRE_PUNCH, NIGHTMARE, STRENGTH, FLASH, FLAMETHROWER, THUNDERBOLT, ICE_BEAM
	; end
