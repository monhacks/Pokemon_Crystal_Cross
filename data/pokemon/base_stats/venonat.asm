	db 0 ; species ID placeholder

	db  60,  55,  50,  45,  40,  55
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 190 ; catch rate
	db 94 ; base exp
	db NO_ITEM, ORAN_BERRY ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/venonat/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, NIGHT_SHADE, FLASH, SUBSTITUTE, LASER_FOCUS, MIMIC, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, SOLARBEAM, RETURN, PSYCHIC_M, DOUBLE_TEAM, SLEEP_TALK, SLUDGE_BOMB, REST, ATTRACT, THIEF
	; end
