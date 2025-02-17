	db 0 ; species ID placeholder

	db  65, 125, 100,  85,  55,  70
	;   hp  atk  def  spd  sat  sdf

	db BUG, BUG ; type
	db 45 ; catch rate
	db 250 ; base exp
	db ORAN_BERRY, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 12 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/pinsir/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SPIKES, DIG, ROCK_CLIMB, ROCK_SLIDE, AURA_SPHERE, SHADOWSTRIKE, RAIN_DANCE, BULLDOZE, LASER_FOCUS, EARTHQUAKE, SUBMISSION, SEISMIC_TOSS, MIMIC, SWORDS_DANCE, SUBSTITUTE, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, THIEF, FURY_CUTTER, CUT, STRENGTH
	; end
