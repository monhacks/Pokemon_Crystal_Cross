	db 0 ; species ID placeholder

	db  50,  75,  90,  40,  10,  35
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 255 ; catch rate
	db 117 ; base exp
	db NO_ITEM, NEVERMELTICE ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/sandshrew_alolan/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SUBSTITUTE, ROCK_SLIDE, POISON_JAB, FLASH_CANNON, BULLDOZE, SWORDS_DANCE, SEISMIC_TOSS, HAIL, MIMIC, COUNTER, ICE_PUNCH, ICY_WIND, BLIZZARD, SWIFT, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, PROTECT, IRON_TAIL, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, THIEF, FURY_CUTTER, CUT, STRENGTH
	; end
