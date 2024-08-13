	db 0 ; species ID placeholder

	db  39,  62,  33,  65,  70,  40
	;   hp  atk  def  spd  sat  sdf

	db FIRE, DARK ; type
	db 45 ; catch rate
	db 82 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/charmander_clone/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SEISMIC_TOSS, ROCK_SLIDE, SWIFT, THUNDERPUNCH, MEGA_PUNCH, MEGA_KICK, SWORDS_DANCE, OUTRAGE, SUBSTITUTE, COUNTER, WILL_O_WISP, MIMIC, DRAGON_CLAW, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, PROTECT, FLAMETHROWER, IRON_TAIL, DRAGONBREATH, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, FIRE_BLAST, REST, ATTRACT, FIRE_PUNCH, FURY_CUTTER, CUT, STRENGTH, FLAMETHROWER
	; end
