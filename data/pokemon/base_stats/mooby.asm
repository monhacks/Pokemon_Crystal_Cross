	db 0 ; species ID placeholder

	db  35, 40,  40, 45,  15,  25
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/mooby/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, THUNDER_WAVE, BULLDOZE, ATTRACT, MIMIC, COUNTER, RAIN_DANCE, SUBSTITUTE, WATER_PULSE, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, ICY_WIND, PROTECT, IRON_TAIL, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, STRENGTH, THUNDERBOLT, ICE_BEAM
	; end
