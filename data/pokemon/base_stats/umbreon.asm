	db 0 ; species ID placeholder

	db  95,  65, 110,  65,  60, 130
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 45 ; catch rate
	db 247 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 35 ; step cycles to hatch
	INCBIN "gfx/pokemon/umbreon/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SNARL, SLUDGE_BOMB, THIEF, HEAL_BELL, SHADOWSTRIKE, LASER_FOCUS, HYPER_VOICE, NIGHT_SHADE, SUBSTITUTE, CALM_MIND, AURA_SPHERE, DARK_PULSE, DIG, SWIFT, MIMIC, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SLEEP_TALK, DREAM_EATER, REST, ATTRACT, CUT, FLASH
	; end
