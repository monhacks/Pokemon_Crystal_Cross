	db 0 ; species ID placeholder

	db  20,  45,  15,  60,  40,  35
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 53 ; base exp
	db NO_ITEM, BERRY ; items
	db GENDER_F50 ; gender ratio
	db 5 ; step cycles to hatch
	INCBIN "gfx/pokemon/pichu_spiky/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, LIGHT_SCREEN, SWIFT, MIMIC, CHARGE_BEAM, PAIN_SPLIT, THUNDER_WAVE, SUBSTITUTE, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDER, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, FLASH, THUNDERBOLT
	; end
