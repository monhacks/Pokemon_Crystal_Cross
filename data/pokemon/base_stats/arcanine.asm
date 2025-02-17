	db 0 ; species ID placeholder

	db  90, 110,  80,  95, 100,  80
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 75 ; catch rate
	db 255 ; base exp
	db BURNT_BERRY, BURNT_BERRY ; items
	db GENDER_F25 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/arcanine/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SACRED_FIRE, SHADOW_RUSH, THIEF, STRENGTH, SWIFT, AURA_SPHERE, BULLDOZE, SOLARBEAM, LASER_FOCUS, VOLT_TACKLE, SNARL, HYPER_VOICE, MIMIC, SUBMISSION, SUBSTITUTE, WILL_O_WISP, ROCK_CLIMB, OUTRAGE, HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, IRON_TAIL, DRAGONBREATH, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, FIRE_BLAST, FLAMETHROWER, REST, ATTRACT, FLAMETHROWER
	; end
