	db 0 ; species ID placeholder

	db  50,  95,  95,  70,  35, 110
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 173 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/hitmontop/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SEISMIC_TOSS, SANDSTORM, ROCK_SLIDE, POISON_JAB, SWIFT, MEGA_PUNCH, BULLDOZE, EARTHQUAKE, LASER_FOCUS, RAIN_DANCE, TWISTER, MIMIC, SUBMISSION, COUNTER, MEGA_KICK, SUBSTITUTE, AURA_SPHERE, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, PROTECT, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, THIEF, STRENGTH
	; end
