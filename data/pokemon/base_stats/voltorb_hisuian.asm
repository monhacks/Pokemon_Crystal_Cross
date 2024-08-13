	db 0 ; species ID placeholder

	db  40,  30,  50, 100,  55,  55
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, GRASS ; type
	db 190 ; catch rate
	db 129 ; base exp
	db NO_ITEM, RED_APRICORN ; items
	db GENDER_UNKNOWN ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/voltorb_hisuian/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, CHARGE_BEAM, GIGA_DRAIN, ENERGY_BALL, MIMIC, SELFDESTRUCT, REFLECT, THUNDER_WAVE, SUBSTITUTE, SOLARBEAM, SWIFT, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, PROTECT, RAIN_DANCE, THUNDER, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, FLASH, THUNDERBOLT
	; end
