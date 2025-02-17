	db 0 ; species ID placeholder

	db  78,  84,  78, 100, 109,  85
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/typhlosion/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SACRED_FIRE, SHADOW_RUSH, ROCK_CLIMB, SHADOWSTRIKE, MEGA_KICK, BULLDOZE, SOLARBEAM, LASER_FOCUS, VOLT_TACKLE, SUBMISSION, MIMIC, COUNTER, SEISMIC_TOSS, MEGA_PUNCH, SUBSTITUTE, AURA_SPHERE, WILL_O_WISP, SWIFT, DYNAMICPUNCH, HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, IRON_TAIL, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, FIRE_BLAST, ROCK_SLIDE, THUNDERPUNCH, REST, ATTRACT, FIRE_PUNCH, FURY_CUTTER, CUT, STRENGTH, FLAMETHROWER
	; end
