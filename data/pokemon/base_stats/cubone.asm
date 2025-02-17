	db 0 ; species ID placeholder

	db  50,  50,  95,  35,  40,  50
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 190 ; catch rate
	db 109 ; base exp
	db NO_ITEM, THICK_CLUB ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/cubone/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SEISMIC_TOSS, FIRE_BLAST, FURY_CUTTER, SHADOWSTRIKE, SWIFT, MEGA_PUNCH, BULLDOZE, EARTH_POWER, LASER_FOCUS, COUNTER, MIMIC, SWORDS_DANCE, SUBSTITUTE, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, BLIZZARD, ICY_WIND, PROTECT, IRON_TAIL, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, SANDSTORM, FIRE_BLAST, THUNDERPUNCH, ROCK_SLIDE, REST, ATTRACT, THIEF, FIRE_PUNCH, STRENGTH, FLAMETHROWER, ICE_BEAM
	; end
