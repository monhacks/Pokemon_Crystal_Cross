	db 0 ; species ID placeholder

	db  70,  55,  50,  70,  100,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 45 ; catch rate
	db 200 ; base exp
	db ORAN_BERRY, SILVERPOWDER ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/butterfree/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, ENERGY_BALL, SHADOW_BALL, THIEF, DREAM_EATER, SWIFT, RAIN_DANCE, AEROBLAST, ROOST, TWISTER, MIMIC, SUBSTITUTE, REFLECT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SOLARBEAM, RETURN, PSYCHIC_M, DOUBLE_TEAM, SLEEP_TALK, RAZOR_WIND, REST, ATTRACT, FLASH
	; end
