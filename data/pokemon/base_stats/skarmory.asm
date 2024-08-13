	db 0 ; species ID placeholder

	db  65,  80, 140,  70,  40,  70
	;   hp  atk  def  spd  sat  sdf

	db STEEL, FLYING ; type
	db 25 ; catch rate
	db 210 ; base exp
	db SHARP_BEAK, METAL_COAT ; items
	db GENDER_F50 ; gender ratio
	db 12 ; step cycles to hatch
	INCBIN "gfx/pokemon/skarmory/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm SHADOW_RUSH, SWIFT, SPIKES, ROCK_SMASH, FURY_CUTTER, AEROBLAST, ICY_WIND, HYPER_BEAM, ROAR, ROOST, MIMIC, TWISTER, COUNTER, SWORDS_DANCE, SUBSTITUTE, FLASH_CANNON, DARK_PULSE, CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RETURN, DOUBLE_TEAM, SLEEP_TALK, SANDSTORM, RAZOR_WIND, ROCK_SLIDE, REST, ATTRACT, THIEF, STEEL_WING, CUT, FLY
	; end
