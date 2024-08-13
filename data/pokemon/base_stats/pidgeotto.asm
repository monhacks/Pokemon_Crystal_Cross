	db 0 ; species ID placeholder

	db  63,  60,  55,  71,  50,  50
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 120 ; catch rate
	db 142 ; base exp
	db ORAN_BERRY, PERSIM_BERRY ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/pidgeotto/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, ROOST, RAIN_DANCE, TWISTER, SUBSTITUTE, MIMIC, SWIFT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, THIEF, STEEL_WING, FLY
	; end
