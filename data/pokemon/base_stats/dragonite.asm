	db 0 ; species ID placeholder

	db  91, 134,  95,  80, 100, 100
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, FLYING ; type
	db 45 ; catch rate
	db 255 ; base exp
	db NO_ITEM, DRAGON_SCALE ; items
	db GENDER_F50 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/dragonite/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, HEAL_BELL, DIVE, CUT, ROCK_SLIDE, RAZOR_WIND, AURA_SPHERE, BULLDOZE, SACRED_FIRE, WAVE_CRASH, ROAR, AEROBLAST, SUNNY_DAY, ROOST, TWISTER, SUBMISSION, THUNDER_WAVE, MEGA_KICK, MEGA_PUNCH, SUBSTITUTE, LIGHT_SCREEN, HAIL, WATER_PULSE, DRAGON_CLAW, SWIFT, MIMIC, OUTRAGE, EARTHQUAKE, DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, IRON_TAIL, DRAGONBREATH, THUNDER, RETURN, DOUBLE_TEAM, ICE_PUNCH, SLEEP_TALK, SANDSTORM, FIRE_BLAST, THUNDERPUNCH, REST, ATTRACT, STEEL_WING, FIRE_PUNCH, FURY_CUTTER, FLY, SURF, STRENGTH, WHIRLPOOL, WATERFALL, FLAMETHROWER, THUNDERBOLT, ICE_BEAM
	; end
