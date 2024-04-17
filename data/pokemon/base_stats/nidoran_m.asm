	db 0 ; species ID placeholder

	db  46,  57,  40,  50,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 235 ; catch rate
	db 75 ; base exp
	db NO_ITEM, ORAN_BERRY ; items
	db GENDER_F0 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/nidoran_m/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SUBSTITUTE, CUT, DIG, POISON_JAB, CURSE, LASER_FOCUS, COUNTER, TOXIC, MIMIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, THIEF, THUNDERBOLT
	; end
