	db 0 ; species ID placeholder

	db  55,  50, 70,  70,  40,  60
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 25 ; catch rate
	db 210 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 12 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/skarchic/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SWIFT, ROOST, FURY_CUTTER, TWISTER, ICY_WIND, COUNTER, MIMIC, SWORDS_DANCE, SUBSTITUTE, DARK_PULSE, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RETURN, DOUBLE_TEAM, SLEEP_TALK, SANDSTORM, RAZOR_WIND, ROCK_SLIDE, REST, ATTRACT, THIEF, CUT, FLY
	; end
