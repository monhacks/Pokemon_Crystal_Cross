	db 0 ; species ID placeholder

	db  40,  60,  40,  30,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 255 ; catch rate
	db 68 ; base exp
	db NO_ITEM, CHESTO_BERRY ; items
	db GENDER_F50 ; gender ratio
	db 7 ; step cycles to hatch
	INCBIN "gfx/pokemon/spinarak/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SWORDS_DANCE, POISON_JAB, NIGHT_SHADE, MIMIC, SUBSTITUTE, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, SOLARBEAM, RETURN, DIG, PSYCHIC_M, DOUBLE_TEAM, SLEEP_TALK, SLUDGE_BOMB, REST, ATTRACT, THIEF, FLASH
	; end
