	db 0 ; species ID placeholder

	db  25,  35,  70,  45,  95,  55
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, STEEL ; type
	db 190 ; catch rate
	db 112 ; base exp
	db MAGNET, METAL_POWDER ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/magnemite/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, CHARGE_BEAM, MIMIC, LASER_FOCUS, SELFDESTRUCT, THUNDER_WAVE, SUNNY_DAY, SUBSTITUTE, LIGHT_SCREEN, REFLECT, FLASH_CANNON, SWIFT, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, PROTECT, RAIN_DANCE, THUNDER, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, FLASH, THUNDERBOLT
	; end
