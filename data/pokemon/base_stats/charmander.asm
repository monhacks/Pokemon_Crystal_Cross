	db 0 ; species ID placeholder

	db  39,  52,  43,  65,  60,  50
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 82 ; base exp
	db NO_ITEM, CHARCOAL ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/charmander/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SEISMIC_TOSS, ROCK_SLIDE, SWIFT, THUNDERPUNCH, MEGA_PUNCH, MEGA_KICK, SWORDS_DANCE, OUTRAGE, COUNTER, SUBSTITUTE, WILL_O_WISP, MIMIC, DRAGON_CLAW, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, PROTECT, FLAMETHROWER, IRON_TAIL, DRAGONBREATH, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, FIRE_BLAST, REST, ATTRACT, FIRE_PUNCH, FURY_CUTTER, CUT, STRENGTH, FLAMETHROWER
	; end
