	db 0 ; species ID placeholder

	db  20,  40,  15,  60,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 53 ; base exp
	db NO_ITEM, BERRY ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 5 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/pichu/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, LIGHT_SCREEN, SWIFT, MIMIC, CHARGE_BEAM, THUNDER_WAVE, SUBSTITUTE, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDER, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, FLASH, THUNDERBOLT
	; end
