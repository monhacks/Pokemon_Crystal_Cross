	db 0 ; species ID placeholder

	db  65,  100,  65, 100,  61,  61
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 90 ; catch rate
	db 203 ; base exp
	db SHARP_BEAK, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/fearow/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, ROOST, SHADOWSTRIKE, TWISTER, LASER_FOCUS, RAIN_DANCE, LASER_FOCUS, SWORDS_DANCE, MIMIC, SUBSTITUTE, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RETURN, DOUBLE_TEAM, SLEEP_TALK, RAZOR_WIND, REST, ATTRACT, THIEF, STEEL_WING, FLY
	; end
