	db 0 ; species ID placeholder

	db  90, 120,  75,  55,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 75 ; catch rate
	db 223 ; base exp
	db NO_ITEM, PINK_BOW ; items
	db GENDER_F75 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/granbull/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SUBMISSION, ROCK_CLIMB, FLAMETHROWER, FIRE_BLAST, ROCK_SLIDE, AURA_SPHERE, SHADOWSTRIKE, OUTRAGE, BULLDOZE, IRON_TAIL, VOLT_TACKLE, EARTHQUAKE, MIMIC, SOLARBEAM, SNARL, HEAL_BELL, HYPER_VOICE, THUNDER_WAVE, COUNTER, SEISMIC_TOSS, MEGA_KICK, MEGA_PUNCH, SUBSTITUTE, REFLECT, WATER_PULSE, DYNAMICPUNCH, HEADBUTT, CURSE, ROAR, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, THUNDER, RETURN, SHADOW_BALL, DOUBLE_TEAM, ICE_PUNCH, SLEEP_TALK, SLUDGE_BOMB, THUNDERPUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, STRENGTH, THUNDERBOLT
	; end
