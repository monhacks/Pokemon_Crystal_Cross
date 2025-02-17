	db 0 ; species ID placeholder

	db  73,  84,  78,  95, 119,  85
	;   hp  atk  def  spd  sat  sdf

	db FIRE, GHOST ; type
	db 45 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/typhlosion_hisuian/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SACRED_FIRE, SHADOW_RUSH, ROCK_CLIMB, SHADOWSTRIKE, MEGA_KICK, BULLDOZE, SOLARBEAM, COUNTER, LASER_FOCUS, SUBMISSION, VOLT_TACKLE, NIGHT_SHADE, MIMIC, SEISMIC_TOSS, MEGA_PUNCH, SUBSTITUTE, CALM_MIND, AURA_SPHERE, WILL_O_WISP, DARK_PULSE, SHADOW_BALL, SWIFT, DYNAMICPUNCH, HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, IRON_TAIL, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, FIRE_BLAST, ROCK_SLIDE, THUNDERPUNCH, REST, ATTRACT, FIRE_PUNCH, FURY_CUTTER, CUT, STRENGTH, FLAMETHROWER
	; end
