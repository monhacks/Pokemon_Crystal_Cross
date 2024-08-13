	db 0 ; species ID placeholder

	db  40,  20,  30,  55,  40,  80
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 255 ; catch rate
	db 68 ; base exp
	db NO_ITEM, SILVERPOWDER ; items
	db GENDER_F50 ; gender ratio
	db 7 ; step cycles to hatch
	INCBIN "gfx/pokemon/ledyba/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, MEGA_PUNCH, SWORDS_DANCE, ROOST, MIMIC, SUBSTITUTE, LIGHT_SCREEN, REFLECT, SWIFT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, SOLARBEAM, RETURN, DIG, DOUBLE_TEAM, ICE_PUNCH, SLEEP_TALK, THUNDERPUNCH, REST, ATTRACT, THIEF, FLASH
	; end
