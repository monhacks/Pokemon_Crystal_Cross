	db 0 ; species ID placeholder

	db  50,  65,  90,  15,  35,  35
	;   hp  atk  def  spd  sat  sdf

	db BUG, BUG ; type
	db 238 ; catch rate
	db 60 ; base exp
	db NO_ITEM, SILVERPOWDER ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/pineco/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SWIFT, SANDSTORM, ROCK_SLIDE, SPIKES, BULLDOZE, LIGHT_SCREEN, COUNTER, PAIN_SPLIT, SELFDESTRUCT, MIMIC, SUBSTITUTE, REFLECT, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, SOLARBEAM, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, STRENGTH
	; end
