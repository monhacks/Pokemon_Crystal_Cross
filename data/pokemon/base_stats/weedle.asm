	db 0 ; species ID placeholder

	db  40,  35,  30,  50,  20,  20
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 255 ; catch rate
	db 65 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 7 ; step cycles to hatch
	INCBIN "gfx/pokemon/weedle/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH
	; end
