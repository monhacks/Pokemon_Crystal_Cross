	db 0 ; species ID placeholder

	db  90, 120, 120,  50,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 60 ; catch rate
	db 237 ; base exp
	db NO_ITEM, HARD_STONE ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/donphan/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, HYPER_VOICE, THIEF, POISON_JAB, BULLDOZE, IRON_TAIL, LASER_FOCUS, SUBMISSION, EARTH_POWER, COUNTER, SUBSTITUTE, MIMIC, HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, EARTHQUAKE, RETURN, DOUBLE_TEAM, SLEEP_TALK, SANDSTORM, ROCK_SLIDE, REST, ATTRACT, STRENGTH
	; end
