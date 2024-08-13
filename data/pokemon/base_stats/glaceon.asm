	db 0 ; species ID placeholder

	db  65,  60,  110, 65, 130,  95
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 45 ; catch rate
	db 247 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 35 ; step cycles to hatch
	INCBIN "gfx/pokemon/glaceon/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, HEAL_BELL, STRENGTH, REFLECT, LASER_FOCUS, ROAR, HYPER_VOICE, SUBSTITUTE, CALM_MIND, AURA_SPHERE, HAIL, WATER_PULSE, DIG, SWIFT, MIMIC, HEADBUTT, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, SLEEP_TALK, REST, ATTRACT, FLASH
	; end
