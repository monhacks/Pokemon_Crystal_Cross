	db 0 ; species ID placeholder

	db  80, 110,  65, 130,  60,  75
	;   hp  atk  def  spd  sat  sdf

	db GHOST, DRAGON ; type
	db 45 ; catch rate
	db 253 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 17 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/aerodactyl_fossil/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, STRENGTH, ROOST, SWIFT, THIEF, SHADOWSTRIKE, BULLDOZE, TWISTER, LASER_FOCUS, NIGHT_SHADE, AEROBLAST, EARTH_POWER, SUBSTITUTE, MIMIC, DRAGON_CLAW, HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, DRAGONBREATH, EARTHQUAKE, RETURN, DOUBLE_TEAM, SLEEP_TALK, SANDSTORM, FIRE_BLAST, RAZOR_WIND, FLAMETHROWER, ROCK_SLIDE, REST, ATTRACT, STEEL_WING, FLY, FLAMETHROWER
	; end
