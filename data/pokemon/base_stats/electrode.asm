	db 0 ; species ID placeholder

	db  60,  50,  70, 140,  80,  80
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 60 ; catch rate
	db 188 ; base exp
	db POKE_BALL, ULTRA_BALL ; items
	db GENDER_UNKNOWN ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/electrode/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, CHARGE_BEAM, SELFDESTRUCT, VOLT_TACKLE, THUNDER_WAVE, SUBSTITUTE, MIMIC, LIGHT_SCREEN, REFLECT, SWIFT, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, HYPER_BEAM, PROTECT, RAIN_DANCE, THUNDER, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, FLASH, THUNDERBOLT
	; end
