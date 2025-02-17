	db 0 ; species ID placeholder

	db  60,  50,  70, 140,  80,  80
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, GRASS ; type
	db 60 ; catch rate
	db 188 ; base exp
	db RED_APRICORN, BLK_APRICORN ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/electrode_hisuian/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, CHARGE_BEAM, REFLECT, ENERGY_BALL, VOLT_TACKLE, SELFDESTRUCT, THUNDER_WAVE, MIMIC, SUBSTITUTE, SOLARBEAM, GIGA_DRAIN, SWIFT, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, HYPER_BEAM, PROTECT, RAIN_DANCE, THUNDER, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, FLASH, THUNDERBOLT
	; end
