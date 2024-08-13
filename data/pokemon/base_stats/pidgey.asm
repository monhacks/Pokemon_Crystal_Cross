	db 0 ; species ID placeholder

	db  40,  45,  40,  56,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 255 ; catch rate
	db 69 ; base exp
	db NO_ITEM, ORAN_BERRY ; items
	db GENDER_F50 ; gender ratio
	db 7 ; step cycles to hatch
	INCBIN "gfx/pokemon/pidgey/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, ROOST, TWISTER, RAIN_DANCE, SUBSTITUTE, MIMIC, SWIFT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, THIEF, STEEL_WING, FLY
	; end
