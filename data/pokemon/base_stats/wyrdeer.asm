	db 0 ; species ID placeholder

	db 103, 105, 72,  65,  105, 75
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 35 ; catch rate
	db 207 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/wyrdeer/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, CHARGE_BEAM, ENERGY_BALL, BULLDOZE, THUNDER, EARTH_POWER, VOLT_TACKLE, THUNDERBOLT, IRON_TAIL, SOLARBEAM, CALM_MIND, NIGHT_SHADE, THUNDER_WAVE, SUBSTITUTE, LIGHT_SCREEN, REFLECT, HYPER_BEAM, SHADOW_BALL, SWIFT, MIMIC, HEADBUTT, CURSE, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, EARTHQUAKE, RETURN, PSYCHIC_M, DOUBLE_TEAM, SLEEP_TALK, DREAM_EATER, REST, ATTRACT, THIEF, NIGHTMARE, FLASH, THUNDERBOLT
	; end
