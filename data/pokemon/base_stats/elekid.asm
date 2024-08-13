	db 0 ; species ID placeholder

	db  45,  63,  37,  95,  65,  55
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 133 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	db 12 ; step cycles to hatch
	INCBIN "gfx/pokemon/elekid/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SEISMIC_TOSS, SWIFT, LIGHT_SCREEN, MEGA_PUNCH, MIMIC, CHARGE_BEAM, THUNDER_WAVE, SUBSTITUTE, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, PROTECT, RAIN_DANCE, THUNDER, RETURN, PSYCHIC_M, DOUBLE_TEAM, ICE_PUNCH, SLEEP_TALK, THUNDERPUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, FLASH, THUNDERBOLT
	; end
