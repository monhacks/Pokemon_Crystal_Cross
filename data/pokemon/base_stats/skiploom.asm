	db 0 ; species ID placeholder

	db  55,  45,  50,  80,  45,  65
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FLYING ; type
	db 120 ; catch rate
	db 170 ; base exp
	db HEAL_POWDER, ENERGYPOWDER ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/skiploom/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FAIRY, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, ENERGY_BALL, THIEF, SWORDS_DANCE, SUBSTITUTE, REFLECT, MIMIC, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, SOLARBEAM, RETURN, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, FLASH
	; end
