; move ids
; indexes for:
; - Moves (see data/moves/moves.asm)
; - MoveNames (see data/moves/names.asm)
; - MoveDescriptions (see data/moves/descriptions.asm)
; - BattleAnimations (see data/moves/animations.asm)
	const_def
	const NO_MOVE      ; 00
	const POUND        ; 01
	const BUG_BUZZ     ; 03
	const MEGA_PUNCH   ; 05
	const PAY_DAY      ; 06
	const FIRE_PUNCH   ; 07
	const ICE_PUNCH    ; 08
	const THUNDERPUNCH ; 09
	const SCRATCH      ; 0a
	const MUD_SHOT     ; 0b spd -1
	const OMINOUS_WIND ; 0c
	const RAZOR_WIND   ; 0d
	const SWORDS_DANCE ; 0e atk +2
	const CUT          ; 0f
	const GUST         ; 10
	const WING_ATTACK  ; 11
	const WHIRLWIND    ; 12
	const FLY          ; 13
	const AURA_SPHERE  ; 14 
	const SLAM         ; 15
	const VINE_WHIP    ; 16
	const STOMP        ; 17
	const DOUBLE_KICK  ; 18 
	const MEGA_KICK    ; 19
	const JUMP_KICK    ; 1a
	const EARTH_POWER  ; 1b
	const SAND_ATTACK  ; 1c acc -1
	const HEADBUTT     ; 1d
	const HORN_ATTACK  ; 1e
	const HORN_DRILL   ; 20
	const TACKLE       ; 21
	const POWER_GEM    ; 22
	const WRAP         ; 23
	const TAKE_DOWN    ; 24
	const ICE_FANG     ; 26
	const TAIL_WHIP    ; 27 def -1
	const POISON_STING ; 28
	const PIN_MISSILE  ; 2a spd -1
	const LEER         ; 2b def -1
	const BITE         ; 2c
	const GROWL        ; 2d atk -1
	const ROAR         ; 2e
	const SING         ; 2f
	const SUPERSONIC   ; 30
	const SONICBOOM    ; 31
	const DISABLE      ; 32
	const WATER_PULSE  ; 33
	const EMBER        ; 34
	const FLAMETHROWER ; 35
	const REFRESH      ; 36 
	const WATER_GUN    ; 37
	const HYDRO_PUMP   ; 38
	const SURF         ; 39
	const ICE_BEAM     ; 3a
	const BLIZZARD     ; 3b
	const PSYBEAM      ; 3c
	const BUBBLEBEAM   ; 3d spd -1
	const AURORA_BEAM  ; 3e spatk -1
	const HYPER_BEAM   ; 3f
	const PECK         ; 40
	const DRILL_PECK   ; 41
	const SUBMISSION   ; 42
	const LOW_KICK     ; 43 
	const COUNTER      ; 44
	const SEISMIC_TOSS ; 45
	const STRENGTH     ; 46
	const MEGA_DRAIN   ; 48
	const LEECH_SEED   ; 49
	const GROWTH       ; 4a atk +1 spatk +1
	const RAZOR_LEAF   ; 4b
	const SOLARBEAM    ; 4c
	const SLEEP_POWDER ; 4f
	const PETAL_DANCE  ; 50
	const STRING_SHOT  ; 51 spd -1
	const DRAGON_RAGE  ; 52
	const FIRE_SPIN    ; 53
	const THUNDERSHOCK ; 54
	const THUNDERBOLT  ; 55
	const THUNDER_WAVE ; 56
	const THUNDER      ; 57
	const ROCK_THROW   ; 58
	const EARTHQUAKE   ; 59
	const X_SCISSOR    ; 5a
	const DIG          ; 5b
	const TOXIC        ; 5c
	const CONFUSION    ; 5d
	const PSYCHIC_M    ; 5e spdef -1
	const HYPNOSIS     ; 5f
	const HOWL         ; 60
	const AGILITY      ; 61 spd +2
	const QUICK_ATTACK ; 62
	const TELEPORT     ; 64
	const NIGHT_SHADE  ; 65
	const MIMIC        ; 66
	const SCREECH      ; 67 def -2
	const DOUBLE_TEAM  ; 68 evade +2
	const RECOVER      ; 69
	const HARDEN       ; 6a def +1
	const SMOKESCREEN  ; 6c acc -1
	const CONFUSE_RAY  ; 6d 
	const HEX          ; 6e
	const DEFENSE_CURL ; 6f def +1
	const CALM_MIND    ; 70
	const LIGHT_SCREEN ; 71 
	const HAZE         ; 72
	const REFLECT      ; 73 
	const SILVER_WIND  ; 75 allup
	const METRONOME    ; 76
	const MIRROR_MOVE  ; 77
	const SELFDESTRUCT ; 78
	const DRAGON_DANCE ; 79
	const LICK         ; 7a
	const SMOG         ; 7b
	const ACID_SPRAY   ; 7c 
	const BONE_CLUB    ; 7d
	const FIRE_BLAST   ; 7e
	const WATERFALL    ; 7f
	const SWIFT        ; 81
	const SPIKE_CANNON ; 83
	const POISON_FANG  ; 84 
	const AMNESIA      ; 85 spdef +2
	const WILL_O_WISP  ; 88 
	const GLARE        ; 89
	const DREAM_EATER  ; 8a
	const PSYCHO_CUT   ; 8b 
	const FLASH_CANNON ; 8c spdef -1
	const LEECH_LIFE   ; 8d
	const ROOST        ; 8e
	const SKY_ATTACK   ; 8f
	const TRANSFORM    ; 90
	const FLASH        ; 94 acc -1 spatk +1 
	const ICICLE_CRASH ; 95
	const SPLASH       ; 96
	const ACID_ARMOR   ; 97 def +2
	const CRABHAMMER   ; 98
	const SNARL        ; 99
	const FURY_SWIPES  ; 9a
	const BONEMERANG   ; 9b
	const REST         ; 9c
	const ROCK_SLIDE   ; 9d
	const SHARPEN      ; 9f
	const FIRE_FANG    ; a0
	const TRI_ATTACK   ; a1
	const SUPER_FANG   ; a2
	const SLASH        ; a3
	const SUBSTITUTE   ; a4
	const SKETCH       ; a6
	const COSMIC_POWER ; a7
	const THIEF        ; a8
	const SPIDER_WEB   ; a9
	const DRAGON_CLAW  ; aa
	const FLAME_WHEEL  ; ac
	const CURSE        ; ae atk +1 def +1 spd -1
	const AEROBLAST    ; b1
	const REVERSAL     ; b3
	const SPITE        ; b4
	const POWDER_SNOW  ; b5
	const PROTECT      ; b6
	const SCARY_FACE   ; b8 spd -2
	const BELLY_DRUM   ; bb atk +3
	const SLUDGE_BOMB  ; bc
	const MUD_SLAP     ; bd acc -1
	const OCTAZOOKA    ; be acc -1
	const SPIKES       ; bf
	const ZAP_CANNON   ; c0
	const DESTINY_BOND ; c2
	const PERISH_SONG  ; c3
	const ICY_WIND     ; c4 spd -1
	const FEATHERDANCE ; c5
	const OUTRAGE      ; c8
	const SANDSTORM    ; c9
	const GIGA_DRAIN   ; ca
	const ENDURE       ; cb
	const CHARM        ; cc atk -2
	const ROLLOUT      ; cd
	const FALSE_SWIPE  ; ce
	const SWAGGER      ; cf 
	const MILK_DRINK   ; d0
	const SPARK        ; d1
	const FURY_CUTTER  ; d2
	const STEEL_WING   ; d3
	const MEAN_LOOK    ; d4
	const ATTRACT      ; d5
	const SLEEP_TALK   ; d6
	const HEAL_BELL    ; d7
	const RETURN       ; d8
	const PRESENT      ; d9
	const HAIL         ; da
	const SAFEGUARD    ; db
	const PAIN_SPLIT   ; dc
	const SACRED_FIRE  ; dd
	const MEGAHORN     ; e0
	const DRAGONBREATH ; e1
	const BATON_PASS   ; e2
	const ENCORE       ; e3
	const PURSUIT      ; e4
	const RAPID_SPIN   ; e5
	const SWEET_SCENT  ; e6 evade -1
	const IRON_TAIL    ; e7 def -1
	const METAL_CLAW   ; e8 atk +1
	const MORNING_SUN  ; ea
	const ENERGY_BALL  ; eb
	const MOONLIGHT    ; ec
	const HIDDEN_POWER ; ed
	const TWISTER      ; ef
	const RAIN_DANCE   ; f0
	const SUNNY_DAY    ; f1
	const CRUNCH       ; f2 def -1
	const MIRROR_COAT  ; f3
	const PSYCH_UP     ; f4
	const EXTREMESPEED ; f5
	const ANCIENTPOWER ; f6 allup
	const SHADOW_BALL  ; f7 spdef -1
	const HYPER_VOICE  ; f8
	const ROCK_SMASH   ; f9 def -1
	const WHIRLPOOL    ; fa
	const ROCK_CLIMB   ; fc
	const DARK_PULSE   ; 253 
	const POISON_JAB   ; 254
	const DIVE         ; 02
	const VOLT_TACKLE  ; 04
	const POWERUPPUNCH ; 6b 
	const IRON_DEFENSE ; 80
	const LEAF_BLADE   ; 82
	const ICE_SHARD    ; 92 
	const RAZOR_SHELL  ; c6
	const CHARGE_BEAM  ; e9
	const SHADOW_RUSH  ; a5
	const SYNTHESIS
	const EFFECT_SPORE
	const BULLDOZE
	const BULLET_PUNCH
	const BUG_BITE
	const COIL
	const FLAIL
	const AIR_CUTTER
	const MIRROR_SHOT
	const PSYSTRIKE
	const VACUUM_WAVE
	const SHADOWSTRIKE
	const ECHOED_VOICE
	const DIRE_CLAW
	const AQUA_JET
	const MYSTICALFIRE
	const NASTY_PLOT
	const FELL_STINGER
	const LASER_FOCUS
	const DRILL_RUN
	const ACCELEROCK
	const WAVE_CRASH
	const NIGHT_SLASH
	const SKY_UPPERCUT
	const BLAZE_KICK
	const QUIVER_DANCE
	const BULK_UP
	const STRUGGLE
	
NUM_ATTACKS EQU const_value - 1

; Battle animations use the same constants as the moves up to this point
	const ANIM_SWEET_SCENT_2     ; ff
	const ANIM_THROW_POKE_BALL   ; 100
	const ANIM_SEND_OUT_MON      ; 101
	const ANIM_RETURN_MON        ; 102
	const ANIM_CONFUSED          ; 103
	const ANIM_SLP               ; 104
	const ANIM_BRN               ; 105
	const ANIM_PSN               ; 106
	const ANIM_SAP               ; 107
	const ANIM_FRZ               ; 108
	const ANIM_PAR               ; 109
	const ANIM_IN_LOVE           ; 10a
	const ANIM_IN_SANDSTORM      ; 10b
	const ANIM_IN_NIGHTMARE      ; 10c
	const ANIM_IN_WHIRLPOOL      ; 10d
; battle anims
	const ANIM_MISS              ; 10e
	const ANIM_ENEMY_DAMAGE      ; 10f
	const ANIM_ENEMY_STAT_DOWN   ; 110
	const ANIM_PLAYER_STAT_DOWN  ; 111
	const ANIM_PLAYER_DAMAGE     ; 112
	const ANIM_WOBBLE            ; 113
	const ANIM_SHAKE             ; 114
	const ANIM_HIT_CONFUSION     ; 115

; wNumHits uses offsets from ANIM_MISS
	const_def
	const BATTLEANIM_NONE
	const BATTLEANIM_ENEMY_DAMAGE
	const BATTLEANIM_ENEMY_STAT_DOWN
	const BATTLEANIM_PLAYER_STAT_DOWN
	const BATTLEANIM_PLAYER_DAMAGE
	const BATTLEANIM_WOBBLE
	const BATTLEANIM_SHAKE
	const BATTLEANIM_HIT_CONFUSION
