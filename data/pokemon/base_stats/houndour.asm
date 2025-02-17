	db 0 ; species ID placeholder

	db  45,  60,  30,  65,  80,  50
	;   hp  atk  def  spd  sat  sdf

	db DARK, FIRE ; type
	db 120 ; catch rate
	db 143 ; base exp
	db NO_ITEM, BLACKGLASSES ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/houndour/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SNARL, SHADOWSTRIKE, HYPER_VOICE, COUNTER, SUBSTITUTE, WILL_O_WISP, MIMIC, DARK_PULSE, HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, PROTECT, SOLARBEAM, IRON_TAIL, RETURN, SHADOW_BALL, DOUBLE_TEAM, SLEEP_TALK, SLUDGE_BOMB, FIRE_BLAST, DREAM_EATER, REST, ATTRACT, THIEF, NIGHTMARE, FLAMETHROWER
	; end
