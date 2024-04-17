INCLUDE "constants.asm"


SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * dbbw EVOLVE_LEVEL, level, species
;    * dbbw EVOLVE_ITEM, used item, species
;    * dbbw EVOLVE_TRADE, held item (or -1 for none), species
;    * dbbw EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * dbbbw EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

INCLUDE "data/pokemon/evos_attacks_pointers.asm"
INCLUDE "data/pokemon/evolution_moves.asm"

EvosAttacks::

BulbasaurEvosAttacks:                ;final
	dbbw EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, VINE_WHIP
	db 8, LEECH_SEED
	db 13, EFFECT_SPORE
	db 16, GROWTH
	db 24, RAZOR_LEAF
	db 27, SWEET_SCENT
	db 30, TOXIC
	db 33, TAKE_DOWN
	db 36, SYNTHESIS
	db 44, SOLARBEAM
	db 0 ; no more level-up moves

IvysaurEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, VINE_WHIP
	db 8, LEECH_SEED
	db 13, EFFECT_SPORE
	db 15, GROWTH
	db 27, RAZOR_LEAF
	db 32, SWEET_SCENT
	db 35, TOXIC
	db 42, TAKE_DOWN
	db 45, SYNTHESIS
	db 50, SOLARBEAM
	db 0 ; no more level-up moves

VenusaurEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, SLUDGE_BOMB
	db 1, TACKLE
	db 1, GROWL
	db 4, VINE_WHIP
	db 8, LEECH_SEED
	db 13, EFFECT_SPORE
	db 15, GROWTH
	db 27, RAZOR_LEAF
	db 31, SWEET_SCENT
	db 31, PETAL_DANCE   ;evolution move
	db 38, TOXIC
	db 44, TAKE_DOWN
	db 47, SYNTHESIS
	db 55, SOLARBEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:               ;final
	dbbw EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 4, EMBER
	db 8, SMOKESCREEN
	db 12, METAL_CLAW
	db 16, DRAGON_RAGE
	db 20, SCARY_FACE
	db 24, FIRE_FANG
	db 28, DRAGONBREATH
	db 34, FLAMETHROWER
	db 37, SLASH
	db 43, FIRE_BLAST
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:               ;final
	dbbw EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 4, EMBER
	db 8, SMOKESCREEN
	db 12, METAL_CLAW
	db 15, DRAGON_RAGE
	db 24, SCARY_FACE
	db 28, FIRE_FANG
	db 34, DRAGONBREATH
	db 37, FLAMETHROWER
	db 43, SLASH
	db 50, FIRE_BLAST
	db 0 ; no more level-up moves

CharizardEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, DRAGON_CLAW
	db 1, SCRATCH
	db 1, GROWL
	db 4, EMBER
	db 8, SMOKESCREEN
	db 12, METAL_CLAW
	db 15, DRAGON_RAGE
	db 24, SCARY_FACE
	db 28, FIRE_FANG
	db 34, DRAGONBREATH
	db 35, WING_ATTACK   ;evolution move
	db 41, FLAMETHROWER
	db 47, SLASH
	db 55, FIRE_BLAST
	db 0 ; no more level-up moves

SquirtleEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, WATER_GUN
	db 10, HARDEN
	db 16, BITE
	db 19, RAPID_SPIN
	db 24, BUBBLEBEAM
	db 27, PROTECT
	db 31, RAIN_DANCE
	db 35, RAZOR_SHELL
	db 38, IRON_DEFENSE
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:                ;final
	dbbw EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, WATER_GUN
	db 10, HARDEN
	db 15, BITE
	db 23, RAPID_SPIN
	db 27, BUBBLEBEAM
	db 31, PROTECT
	db 35, RAIN_DANCE
	db 38, RAZOR_SHELL
	db 44, IRON_DEFENSE
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, WATER_GUN
	db 10, HARDEN
	db 15, BITE
	db 23, RAPID_SPIN
	db 27, BUBBLEBEAM
	db 31, PROTECT
	db 35, RAIN_DANCE
	db 35, FLASH_CANNON   ;evolution move
	db 42, RAZOR_SHELL
	db 49, IRON_DEFENSE
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

CaterpieEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 15, BUG_BITE
	db 0 ; no more level-up moves

MetapodEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN         ;evolution move
	db 15, IRON_DEFENSE
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:               ;final
	db 0 ; no more evolutions
	db 1, AIR_CUTTER
	db 1, TACKLE
	db 1, STRING_SHOT
	db 9, CONFUSION      ;evolution move
	db 12, EFFECT_SPORE
	db 16, GUST
	db 18, SUPERSONIC
	db 22, WHIRLWIND
	db 24, PSYBEAM
	db 28, SILVER_WIND
	db 35, SLEEP_POWDER
	db 39, SAFEGUARD
	db 44, MORNING_SUN
	db 47, BUG_BUZZ
	db 53, QUIVER_DANCE
	db 0 ; no more level-up moves

WeedleEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 15, BUG_BITE
	db 0 ; no more level-up moves

KakunaEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, HARDEN
	db 15, IRON_DEFENSE
	db 0 ; no more level-up moves

BeedrillEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, BATON_PASS
	db 1, STRING_SHOT
	db 1, POISON_STING
	db 9, FELL_STINGER   ;evolution move
	db 12, LASER_FOCUS
	db 17, BUG_BITE
	db 22, AGILITY
	db 24, PURSUIT
	db 28, POISON_JAB
	db 35, PIN_MISSILE
	db 38, SPIKES
	db 43, X_SCISSOR
	db 48, SWORDS_DANCE
	db 54, DRILL_RUN

	db 0 ; no more level-up moves

PidgeyEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 4, GUST
	db 9, QUICK_ATTACK
	db 13, WHIRLWIND
	db 17, TWISTER
	db 21, AGILITY
	db 25, WING_ATTACK
	db 32, ROOST
	db 36, TAKE_DOWN
	db 40, MIRROR_MOVE
	db 44, RAZOR_WIND
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:                ;final
	dbbw EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	db 1, AIR_CUTTER
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 4, GUST
	db 9, QUICK_ATTACK
	db 13, WHIRLWIND
	db 17, TWISTER
	db 17, FEATHERDANCE  ;evolution move
	db 25, WING_ATTACK
	db 33, AGILITY
	db 37, ROOST
	db 41, TAKE_DOWN
	db 45, MIRROR_MOVE
	db 49, RAZOR_WIND
	db 0 ; no more level-up moves

PidgeotEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, AIR_CUTTER
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 4, GUST
	db 9, QUICK_ATTACK
	db 13, WHIRLWIND
	db 17, TWISTER
	db 17, FEATHERDANCE
	db 25, WING_ATTACK
	db 33, AGILITY
	db 41, ROOST
	db 45, TAKE_DOWN
	db 49, MIRROR_MOVE
	db 55, RAZOR_WIND
	db 0 ; no more level-up moves

RattataEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, QUICK_ATTACK
	db 7, LASER_FOCUS
	db 10, BITE
	db 13, SHARPEN
	db 19, FURY_SWIPES
	db 22, PURSUIT
	db 27, SUPER_FANG
	db 32, SWAGGER
	db 36, TAKE_DOWN
	db 45, CRUNCH
	db 0 ; no more level-up moves

RaticateEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, REFRESH
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, QUICK_ATTACK
	db 7, LASER_FOCUS
	db 10, BITE
	db 13, SHARPEN
	db 19, FURY_SWIPES
	db 19, SCARY_FACE    ;evolution move
	db 27, PURSUIT
	db 32, SUPER_FANG
	db 36, SWAGGER 
	db 45, TAKE_DOWN
	db 52, CRUNCH
	db 0 ; no more level-up moves

SpearowEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 4, LEER
	db 9, PURSUIT
	db 14, SHARPEN
	db 19, AIR_CUTTER
	db 21, LASER_FOCUS
	db 25, MIRROR_MOVE
	db 29, AGILITY
	db 33, TAKE_DOWN
	db 37, ROOST
	db 45, DRILL_PECK
	db 0 ; no more level-up moves

FearowEvosAttacks:                   ;final
	db 0 ; no more evolutions
	db 1, SKY_ATTACK
	db 1, PECK
	db 1, GROWL
	db 4, LEER
	db 9, PURSUIT
	db 14, SHARPEN
	db 19, WING_ATTACK   ;evolution move
	db 25, LASER_FOCUS
	db 29, MIRROR_MOVE
	db 33, AGILITY
	db 37, TAKE_DOWN
	db 43, ROOST
	db 47, DRILL_PECK 
	db 55, DRILL_RUN
	db 0 ; no more level-up moves

EkansEvosAttacks:                    ;final
	dbbw EVOLVE_LEVEL_REGION_SEVII, 24, ARBOK_SEVII
	dbbw EVOLVE_LEVEL_REGION, 24, ARBOK_KANTO
	dbbw EVOLVE_LEVEL, 24, ARBOK
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 4, BITE
	db 9, REFRESH
	db 12, GLARE   
	db 17, SCREECH
	db 20, POISON_FANG
	db 22, SLAM
	db 27, ACID_SPRAY
	db 32, MUD_SHOT
	db 36, COIL
	db 44, POISON_JAB
	db 48, HAZE
	db 0 ; no more level-up moves

ArbokEvosAttacks:                    ;final
	db 0 ; no more evolutions
	db 1, FIRE_FANG
	db 1, ICE_FANG
	db 1, WRAP
	db 1, LEER
	db 4, BITE
	db 9, REFRESH
	db 12, GLARE   
	db 17, SCREECH
	db 20, POISON_FANG
	db 22, SLAM
	db 23, SCARY_FACE    ;evolution move
	db 32, ACID_SPRAY
	db 36, MUD_SHOT
	db 40, COIL
	db 45, POISON_JAB
	db 49, CRUNCH
	db 55, HAZE
	db 0 ; no more level-up moves

PichuEvosAttacks:                    ;final
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	db 1, CHARM
	db 1, THUNDERSHOCK
	db 4, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 12, QUICK_ATTACK
	db 15, NASTY_PLOT
	db 0 ; no more level-up moves

PikachuEvosAttacks:                  ;final
	dbbw EVOLVE_ITEM_REGION_SEVII, THUNDERSTONE, RAICHU_ALOLAN
	dbbw EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	db 1, NASTY_PLOT
	db 1, VOLT_TACKLE
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 4, TAIL_WHIP
	db 10, THUNDER_WAVE
	db 13, QUICK_ATTACK
	db 18, DOUBLE_TEAM
	db 21, SPARK
	db 26, AGILITY
	db 34, SLAM
	db 37, THUNDERBOLT
	db 42, LIGHT_SCREEN
	db 45, THUNDER
	db 0 ; no more level-up moves

RaichuEvosAttacks:                   ;final
	db 0 ; no more evolutions
	db 1, JUMP_KICK
	db 1, NASTY_PLOT
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 4, TAIL_WHIP
	db 10, THUNDER_WAVE
	db 13, QUICK_ATTACK
	db 18, SPARK
	db 22, DOUBLE_TEAM
	db 30, SLAM
	db 35, AGILITY
	db 42, THUNDERBOLT
	db 45, LIGHT_SCREEN
	db 54, VOLT_TACKLE
	db 0 ; no more level-up moves

SandshrewEvosAttacks:                ;final
	dbbw EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 4, SAND_ATTACK
	db 9, POISON_STING
	db 11, ROLLOUT
	db 14, FURY_CUTTER
	db 17, BULLDOZE
	db 20, RAPID_SPIN
	db 24, SWIFT
	db 29, AGILITY
	db 35, SANDSTORM
	db 42, EARTHQUAKE
	db 0 ; no more level-up moves

SandslashEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, DRILL_RUN
	db 1, SCRATCH
	db 1, SHARPEN
	db 4, SAND_ATTACK
	db 9, POISON_STING
	db 11, ROLLOUT
	db 14, FURY_CUTTER
	db 17, BULLDOZE
	db 20, RAPID_SPIN
	db 21, SLASH         ;evolution move
	db 24, PIN_MISSILE
	db 29, SWORDS_DANCE
	db 35, SANDSTORM
	db 53, EARTHQUAKE
	db 0 ; no more level-up moves

NidoranFEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 4, POISON_STING
	db 9, LASER_FOCUSG
	db 14, DOUBLE_KICK
	db 19, BITE
	db 23, FURY_SWIPES
	db 28, SHARPEN
	db 35, POISON_FANG
	db 38, CHARM
	db 43, CRUNCH
	db 0 ; no more level-up moves

NidorinaEvosAttacks:                 ;final
	dbbw EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 4, POISON_STING
	db 9, LASER_FOCUSG
	db 14, DOUBLE_KICK
	db 23, BITE
	db 28, FURY_SWIPES
	db 35, SHARPEN
	db 38, POISON_FANG
	db 43, CHARM
	db 47, CRUNCH
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, BULK_UP
	db 1, SLAM           ;evolution move
	db 1, SCRATCH
	db 1, GROWL
	db 4, POISON_STING
	db 9, LASER_FOCUSG
	db 14, DOUBLE_KICK
	db 23, BITE
	db 28, FURY_SWIPES
	db 35, SHARPEN
	db 38, POISON_FANG
	db 43, CHARM
	db 47, CRUNCH
	db 52, EARTH_POWER
	db 58, SUBMISSION
	db 0 ; no more level-up moves

NidoranMEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 4, POISON_STING
	db 9, LASER_FOCUSG
	db 14, DOUBLE_KICK
	db 19, HORN_ATTACK
	db 23, PIN_MISSILE
	db 28, SHARPEN
	db 35, POISON_JAB
	db 38, SWAGGER
	db 43, TAKE_DOWN
	db 0 ; no more level-up moves

NidorinoEvosAttacks:                 ;final
	dbbw EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 4, POISON_STING
	db 9, LASER_FOCUSG
	db 14, DOUBLE_KICK
	db 23, HORN_ATTACK
	db 28, PIN_MISSILE
	db 35, SHARPEN
	db 38, POISON_JAB
	db 43, SWAGGER
	db 47, TAKE_DOWN
	db 0 ; no more level-up moves

NidokingEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, POWERUPPUNCH
	db 1, HORN_DRILL     ;evolution move
	db 1, PECK
	db 1, LEER
	db 4, POISON_STING
	db 9, LASER_FOCUSG
	db 14, DOUBLE_KICK
	db 23, HORN_ATTACK
	db 28, PIN_MISSILE
	db 35, SHARPEN
	db 38, POISON_JAB
	db 43, SWAGGER
	db 47, TAKE_DOWN
	db 52, DRILL_RUN
	db 58, MEGAHORN
	db 0 ; no more level-up moves

ClefairyEvosAttacks:                 ;final
	dbbbw EVOLVE_ITEM_LEVEL, MOON_STONE, 25, CLEFABLE
	db 0 ; no more evolutions
	db 1, POUND
	db 1, DEFENSE_CURL
	db 4, ENCORE
	db 10, SING
	db 13, CHARM
	db 17, SWIFT
	db 22, DOUBLE_TEAM
	db 25, METRONOME
	db 28, COSMIC_POWER
	db 31, SAFEGUARD
	db 34, SLAM
	db 37, MOONLIGHT
	db 43, LIGHT_SCREEN
	db 46, TRI_ATTACK
	db 0 ; no more level-up moves

ClefableEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, MYSTICALFIRE
	db 1, HEAL_BELL      ;evolution move
	db 1, POUND
	db 1, DEFENSE_CURL
	db 4, ENCORE
	db 10, SING
	db 13, CHARM
	db 17, SWIFT
	db 22, DOUBLE_TEAM
	db 25, METRONOME
	db 31, COSMIC_POWER
	db 34, SAFEGUARD
	db 37, SLAM
	db 43, MOONLIGHT
	db 46, LIGHT_SCREEN
	db 53, TRI_ATTACK
	db 0 ; no more level-up moves

VulpixEvosAttacks:                   ;final
	dbbbw EVOLVE_ITEM_LEVEL, FIRE_STONE, 25, NINETALES
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, TAIL_WHIP
	db 4, SPITE
	db 7, QUICK_ATTACK
	db 12, CONFUSE_RAY
	db 15, MYSTICALFIRE
	db 20, SHADOWSTRIKE
	db 24, WILL_O_WISP
	db 28, HEX
	db 34, FLAMETHROWER
	db 39, SAFEGUARD
	db 45, FIRE_BLAST
	db 0 ; no more level-up moves

NinetalesEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, NASTY_PLOT
	db 1, EMBER
	db 1, TAIL_WHIP
	db 4, SPITE
	db 7, QUICK_ATTACK
	db 12, CONFUSE_RAY
	db 15, MYSTICALFIRE
	db 20, SHADOWSTRIKE
	db 24, WILL_O_WISP
	db 24, CURSE         ;evolution move
	db 34, HEX
	db 39, FLAMETHROWER
	db 45, SAFEGUARD
	db 53, FIRE_BLAST
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:               ;final
	dbbbw EVOLVE_ITEM_LEVEL, MOON_STONE, 25, WIGGLYTUFF
	db 0 ; no more evolutions
	db 1, POUND
	db 1, DEFENSE_CURL
	db 4, DISABLE
	db 8, ROLLOUT
	db 13, SING
	db 17, CHARM
	db 24, ECHOED_VOICE
	db 29, REST
	db 32, SLEEP_TALK
	db 35, SLAM
	db 38, MIMIC
	db 44, HYPER_VOICE
	db 49, TAKE_DOWN
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:               ;final
	db 0 ; no more evolutions
	db 1, COUNTER
	db 1, POUND
	db 1, DEFENSE_CURL
	db 4, DISABLE
	db 8, ROLLOUT
	db 13, SING
	db 17, CHARM
	db 24, ECHOED_VOICE
	db 24, PAIN_SPLIT    ;evolution move
	db 32, REST
	db 35, SLEEP_TALK
	db 38, SLAM
	db 44, MIMIC
	db 49, HYPER_VOICE
	db 54, TAKE_DOWN
	db 0 ; no more level-up moves

ZubatEvosAttacks:                    ;final
	dbbw EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 1, SUPERSONIC
	db 4, BITE
	db 8, SCREECH
	db 12, WING_ATTACK
	db 15, CONFUSE_RAY
	db 19, POISON_FANG
	db 24, SWIFT
	db 32, AIR_CUTTER	
	db 36, SUPER_FANG
	db 42, HAZE
	db 0 ; no more level-up moves

GolbatEvosAttacks:                   ;final
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	db 1, LICK           ;evolution move
	db 1, LEECH_LIFE
	db 1, SUPERSONIC
	db 4, BITE
	db 8, SCREECH
	db 12, WING_ATTACK
	db 15, CONFUSE_RAY
	db 19, POISON_FANG
	db 25, SWIFT
	db 32, AIR_CUTTER
	db 38, MEAN_LOOK
	db 43, SKY_ATTACK
	db 49, HAZE
	db 0 ; no more level-up moves
	
CrobatEvosAttacks:                   ;final
	db 0 ; no more evolutions
	db 1, X_SCISSOR
	db 1, POISON_JAB    ;evolution move
	db 1, LEECH_LIFE
	db 1, SUPERSONIC
	db 4, BITE
	db 8, SCREECH
	db 12, WING_ATTACK
	db 15, CONFUSE_RAY
	db 19, POISON_FANG
	db 32, SWIFT
	db 38, AIR_CUTTER
	db 43, MEAN_LOOK
	db 49, SKY_ATTACK
	db 54, HAZE
	db 0 ; no more level-up moves

OddishEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	db 1, MEGA_DRAIN
	db 1, GROWTH
	db 4, SWEET_SCENT
	db 9, EFFECT_SPORE
	db 14, ACID_SPRAY
	db 18, LEECH_SEED
	db 23, TOXIC
	db 28, GIGA_DRAIN
	db 34, SLEEP_POWDER
	db 41, MOONLIGHT
	db 0 ; no more level-up moves

GloomEvosAttacks:                    ;final
	dbbw EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	dbbw EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	db 1, MEGA_DRAIN
	db 1, GROWTH
	db 4, SWEET_SCENT
	db 9, EFFECT_SPORE
	db 14, ACID_SPRAY
	db 18, LEECH_SEED
	db 25, TOXIC
	db 32, GIGA_DRAIN
	db 38, SLEEP_POWDER
	db 44, MOONLIGHT
	db 0 ; no more level-up moves

VileplumeEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, SLAM
	db 1, SLUDGE_BOMB    ;evolution move
	db 1, MEGA_DRAIN
	db 1, GROWTH
	db 4, SWEET_SCENT
	db 9, EFFECT_SPORE
	db 14, ACID_SPRAY
	db 18, LEECH_SEED
	db 28, TOXIC
	db 38, GIGA_DRAIN
	db 44, SLEEP_POWDER
	db 49, MOONLIGHT
	db 54, PETAL_DANCE
	db 0 ; no more level-up moves
	
BellossomEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, QUIVER_DANCE
	db 1, PETAL_DANCE    ;evolution move
	db 1, MEGA_DRAIN
	db 1, GROWTH
	db 4, SWEET_SCENT
	db 9, EFFECT_SPORE
	db 14, ACID_SPRAY
	db 18, LEECH_SEED
	db 28, SUNNY_DAY
	db 38, GIGA_DRAIN
	db 44, SLEEP_POWDER
	db 49, SYNTHESIS
	db 54, SOLARBEAM
	db 0 ; no more level-up moves

ParasEvosAttacks:                    ;final
	dbbw EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEECH_LIFE
	db 4, EFFECT_SPORE
	db 11, FURY_SWIPES
	db 17, GROWTH
	db 22, FURY_CUTTER
	db 27, GIGA_DRAIN
	db 33, REFRESH
	db 38, SLEEP_POWDER
	db 45, X_SCISSOR
	db 0 ; no more level-up moves

ParasectEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, CRABHAMMER
	db 1, SCRATCH
	db 1, LEECH_LIFE
	db 4, EFFECT_SPORE
	db 11, FURY_SWIPES
	db 17, GROWTH
	db 22, FURY_CUTTER
	db 23, SLASH         ;evolution moves
	db 33, GIGA_DRAIN
	db 38, REFRESH
	db 45, SLEEP_POWDER
	db 51, X_SCISSOR
	db 56, FALSE_SWIPE
	db 0 ; no more level-up moves

VenonatEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 4, CONFUSION
	db 7, SUPERSONIC
	db 11, BUG_BITE
	db 15, EFFECT_SPORE
	db 19, PSYBEAM
	db 25, SLEEP_POWER
	db 31, POISON_FANG
	db 35, MOONLIGHT
	db 37, PSYCHIC_M
	db 41, BUG_BUZZ
	db 0 ; no more level-up moves

VenomothEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, POISON_FANG
	db 1, GUST
	db 1, DISABLE
	db 4, CONFUSION
	db 7, SUPERSONIC
	db 11, BUG_BITE
	db 15, EFFECT_SPORE
	db 19, PSYBEAM
	db 25, SLEEP_POWER
	db 30, SILVER_WIND   ;evolution move
	db 37, MOONLIGHT
	db 41, PSYCHIC_M
	db 47, BUG_BUZZ
	db 55, QUIVER_DANCE
	db 0 ; no more level-up moves

DiglettEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 4, SAND_ATTACK
	db 8, MUD_SLAP
	db 12, BULLDOZE
	db 16, PURSUIT
	db 20, FURY_SWIPES
	db 24, DIG
	db 28, SWAGGER
	db 32, EARTH_POWER
	db 36, SANDSTORM
	db 44, EARTHQUAKE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, TRI_ATTACK
	db 1, SCRATCH
	db 1, GROWL
	db 4, SAND_ATTACK
	db 8, MUD_SLAP
	db 12, BULLDOZE
	db 16, PURSUIT
	db 20, FURY_SWIPES
	db 24, DIG
	db 25, SLASH         ;evolution move
	db 32, SWAGGER
	db 36, EARTH_POWER
	db 44, SANDSTORM
	db 51, EARTHQUAKE
	db 0 ; no more level-up moves

MeowthEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 4, SHARPEN
	db 9, FURY_SWIPES
	db 14, BITE
	db 17, SCREECH
	db 22, SHADOWSTRIKE
	db 28, PAY_DAY
	db 32, SLASH
	db 37, NASTY_PLOT
	db 41, NIGHT_SLASH
	db 45, CHARM
	db 49, FALSE_SWIPE
	db 0 ; no more level-up moves

PersianEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, SLAM
	db 1, SCRATCH
	db 1, GROWL
	db 4, SHARPEN
	db 9, FURY_SWIPES
	db 14, BITE
	db 17, SCREECH
	db 22, SHADOWSTRIKE
	db 27, SWIFT         ;evolution move
	db 32, POWER_GEM
	db 37, SLASH
	db 41, NASTY_PLOT
	db 45, NIGHT_SLASH
	db 49, SWAGGER
	db 54, FALSE_SWIPE
	db 0 ; no more level-up moves

PsyduckEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 4, WATER_GUN
	db 9, DISABLE
	db 14, CONFUSION
	db 18, FURY_SWIPES
	db 22, WATER_PULSE
	db 27, SCREECH     
	db 34, PSYBEAM    
	db 39, AMNESIA   
	db 44, HYDRO_PUMP
	db 48, PSYCH_UP
	db 0 ; no more level-up moves

GolduckEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 4, WATER_GUN
	db 9, DISABLE
	db 14, CONFUSION
	db 18, FURY_SWIPES
	db 22, WATER_PULSE
	db 27, SCREECH    
	db 32, POWER_GEM     ;evolution move
	db 36, PSYBEAM    
	db 39, WAVE_CRASH  
	db 44, AMNESIA
	db 48, HYDRO_PUMP
	db 53, PSYCH_UP
	db 0 ; no more level-up moves

MankeyEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 4, LOW_KICK
	db 9, HOWL
	db 13, FURY_SWIPES
	db 17, SEISMIC_TOSS
	db 21, SCREECH
	db 25, ROCK_SMASH
	db 33, PURSUIT
	db 37, SLAM
	db 41, SWAGGER
	db 45, SUBMISSION
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:                 ;final
	dbbw EVOLVE_ITEM, DUSK_STONE, ANNIHILAPE
	db 0 ; no more evolutions
	db 1, SKY_UPPERCUT
	db 1, SCRATCH
	db 1, LEER
	db 4, LOW_KICK
	db 9, HOWL
	db 13, FURY_SWIPES
	db 17, SEISMIC_TOSS
	db 21, SCREECH
	db 25, ROCK_SMASH
	db 37, PURSUIT
	db 41, SLAM
	db 45, SWAGGER
	db 49, SUBMISSION
	db 53, OUTRAGE
	db 0 ; no more level-up moves

AnnihilapeEvosAttacks:               ;final
	db 0 ; no more evolutions
	db 1, SKY_UPPERCUT
	db 1, SHADOWSTRIKE   ;evolution move
	db 1, SCRATCH
	db 1, LEER
	db 4, LOW_KICK
	db 9, HOWL
	db 13, FURY_SWIPES
	db 17, SEISMIC_TOSS
	db 21, SCREECH
	db 25, ROCK_SMASH
	db 38, PURSUIT
	db 43, SLAM
	db 47, SWAGGER
	db 51, SUBMISSION
	db 57, OUTRAGE
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:                ;final
	dbbbw EVOLVE_ITEM_LEVEL, FIRE_STONE, 25, ARCANINE
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LEER
	db 4, HOWL
	db 8, BITE
	db 14, FLAME_WHEEL     
	db 19, REVERSAL
	db 23, FIRE_FANG
	db 28, AGILITY
	db 34, FLAMETHROWER
	db 39, CRUNCH
	db 45, TAKE_DOWN
	db 0 ; no more level-up moves

ArcanineEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, MORNING_SUN
	db 1, EMBER
	db 1, LEER
	db 4, ROAR
	db 8, BITE
	db 14, FLAME_WHEEL     
	db 19, REVERSAL
	db 23, FIRE_FANG
	db 24, EXTREMESPEED  ;evolution move
	db 34, AGILITY
	db 39, FLAMETHROWER
	db 45, CRUNCH
	db 48, TAKE_DOWN
	db 54, SACRED_FIRE
	db 0 ; no more level-up moves

PoliwagEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 22, POLIWHIRL
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HYPNOSIS
	db 4, WATER_GUN
	db 8, MUD_SLAP
	db 15, RAIN_DANCE
	db 19, SLAM
	db 21, BUBBLEBEAM
	db 25, LOW_KICK
	db 28, MUD_SHOT
	db 31, BELLY_DRUM
	db 43, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:                ;final
	dbbw EVOLVE_ITEM, WATER_STONE, POLIWRATH
	dbbw EVOLVE_HOLD, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	db 1, POWERUPPUNCH
	db 1, HYPNOSIS
	db 4, WATER_GUN
	db 8, MUD_SLAP
	db 15, RAIN_DANCE
	db 19, SLAM
	db 25, BUBBLEBEAM
	db 28, LOW_KICK
	db 31, MUD_SHOT
	db 37, BELLY_DRUM
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, BULK_UP
	db 1, COUNTER        ;evolution move
	db 1, POWERUPPUNCH
	db 1, HYPNOSIS
	db 4, WATER_GUN
	db 8, MUD_SLAP
	db 15, RAIN_DANCE
	db 19, SLAM
	db 25, BUBBLEBEAM
	db 28, LOW_KICK
	db 35, BULLDOZE
	db 41, BELLY_DRUM
	db 47, SUBMISSION
	db 54, WAVE_CRASH
	db 0 ; no more level-up moves
	
PolitoedEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, CALM_MIND
	db 1, PERISH_SONG    ;evolution move
	db 1, ECHOED_VOICE
	db 1, HYPNOSIS
	db 4, WATER_GUN
	db 8, MUD_SLAP
	db 15, RAIN_DANCE
	db 19, SLAM
	db 25, BUBBLEBEAM
	db 28, LOW_KICK
	db 35, MUD_SHOT
	db 41, SWAGGER
	db 47, HYPER_VOICE
	db 54, HYDRO_PUMP
	db 0 ; no more level-up moves

AbraEvosAttacks:                     ;final
	dbbw EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, DISABLE
	db 4, CONFUSION
	db 0 ; no more level-up moves

KadabraEvosAttacks:                  ;final
	dbbbw EVOLVE_ITEM_LEVEL, SHINY_STONE, 42, ALAKAZAM
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, DISABLE
	db 4, CONFUSION
	db 15, HIDDEN_POWER  ;evolution move
	db 22, REFLECT
	db 28, PSYBEAM
	db 33, RECOVER
	db 36, PSYCHO_CUT
	db 40, AURA_SPHERE
	db 45, CALM_MIND
	db 48, PSYCHIC_M
	db 52, PSYCH_UP
	db 0 ; no more level-up moves

AlakazamEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, TRI_ATTACK
	db 1, TELEPORT
	db 1, DISABLE
	db 4, CONFUSION
	db 15, HIDDEN_POWER  ;evolution moves
	db 22, REFLECT
	db 28, PSYBEAM
	db 33, RECOVER
	db 36, PSYCHO_CUT
	db 40, AURA_SPHERE
	db 48, CALM_MIND
	db 52, PSYCHIC_M
	db 59, PSYCH_UP
	db 0 ; no more level-up moves

MachopEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LEER
	db 4, LOW_KICK
	db 7, ENDURE
	db 13, POWERUPPUNCH
	db 19, LASER_FOCUS
	db 22, SEISMIC_TOSS
	db 25, STRENGTH
	db 31, BULK_UP
	db 34, MEGA_PUNCH
	db 37, SCARY_FACE
	db 45, TAKE_DOWN
	db 0 ; no more level-up moves

MachokeEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 42, MACHAMP
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LEER
	db 4, LOW_KICK
	db 7, ENDURE
	db 13, POWERUPPUNCH
	db 19, LASER_FOCUS
	db 22, SEISMIC_TOSS
	db 25, STRENGTH
	db 34, BULK_UP
	db 37, MEGA_PUNCH
	db 43, SCARY_FACE
	db 46, TAKE_DOWN
	db 52, DYNAMICPUNCH
	db 0 ; no more level-up moves

MachampEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, BULLET_PUNCH
	db 1, POUND
	db 1, LEER
	db 4, LOW_KICK
	db 7, ENDURE
	db 13, POWERUPPUNCH
	db 19, LASER_FOCUS
	db 22, SEISMIC_TOSS
	db 25, STRENGTH
	db 34, BULK_UP
	db 37, MEGA_PUNCH
	db 46, SCARY_FACE
	db 52, TAKE_DOWN
	db 57, DYNAMICPUNCH
	db 0 ; no more level-up moves

BellsproutEvosAttacks:               ;final
	dbbw EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, GROWTH
	db 4, VINE_WHIP
	db 7, SLEEP_POWDER
	db 13, ACID_SPRAY
	db 17, SWEET_SCENT
	db 23, EFFECT_SPORE
	db 27, THIEF
	db 33, RAZOR_LEAF
	db 39, SYNTHESIS
	db 41, POISON_JAB
	db 45, SLAM
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:               ;final
	dbbw EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, GROWTH
	db 4, VINE_WHIP
	db 7, SLEEP_POWDER
	db 13, ACID_SPRAY
	db 17, SWEET_SCENT
	db 25, EFFECT_SPORE
	db 31, THIEF
	db 36, RAZOR_LEAF
	db 42, SYNTHESIS
	db 45, POISON_JAB
	db 49, SLAM
	db 0 ; no more level-up moves

VictreebelEvosAttacks:               ;final
	db 0 ; no more evolutions
	db 1, SWORDS_DANCE
	db 1, LEAF_BLADE     ;evolution move
	db 1, WRAP
	db 1, GROWTH
	db 4, VINE_WHIP
	db 7, SLEEP_POWDER
	db 13, ACID_SPRAY
	db 17, SWEET_SCENT
	db 26, EFFECT_SPORE
	db 33, THIEF
	db 38, RAZOR_LEAF
	db 43, SYNTHESIS
	db 49, POISON_JAB
	db 53, SLAM
	db 0 ; no more level-up moves

TentacoolEvosAttacks:                ;final
	dbbw EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, SUPERSONIC
	db 4, POISON_STING
	db 10, HAZE
	db 15, BUBBLEBEAM
	db 20, ACID_ARMOR
	db 24, WATER_PULSE
	db 28, POISON_JAB
	db 33, HEX
	db 36, SCREECH
	db 43, HYDRO_PUMP
	db 47, SLUDGE_BOMB
	db 0 ; no more level-up moves

TentacruelEvosAttacks:               ;final
	db 0 ; no more evolutions
	db 1, POWER_GEM
	db 1, WRAP
	db 1, SUPERSONIC
	db 4, POISON_STING
	db 10, HAZE
	db 15, BUBBLEBEAM
	db 20, ACID_ARMOR
	db 24, WATER_PULSE
	db 28, POISON_JAB
	db 29, FELL_STINGER  ;evolution move
	db 36, HEX
	db 43, SCREECH
	db 47, HYDRO_PUMP
	db 55, SLUDGE_BOMB
	db 0 ; no more level-up moves

GeodudeEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 4, MUD_SLAP
	db 6, ROLLOUT
	db 12, ENDURE
	db 16, ROCK_THROW
	db 22, BULLDOZE
	db 24, SELFDESTRUCT
	db 29, REVERSAL
	db 34, MEGA_PUNCH
	db 38, SANDSTORM
	db 43, ROCK_SLIDE
	db 0 ; no more level-up moves

GravelerEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 42, GOLEM
	db 0 ; no more evolutions
	db 1, COUNTER
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 4, MUD_SLAP
	db 6, ROLLOUT
	db 12, ENDURE
	db 16, ROCK_THROW
	db 22, BULLDOZE
	db 24, SELFDESTRUCT
	db 33, REVERSAL
	db 38, TAKE_DOWN
	db 43, SANDSTORM
	db 47, ROCK_SLIDE
	db 52, EARTHQUAKE
	db 0 ; no more level-up moves

GolemEvosAttacks:                    ;final
	db 0 ; no more evolutions
	db 1, COUNTER
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 4, MUD_SLAP
	db 6, ROLLOUT
	db 12, ENDURE
	db 16, ROCK_THROW
	db 22, BULLDOZE
	db 24, SELFDESTRUCT
	db 33, REVERSAL
	db 38, TAKE_DOWN
	db 41, RAPID_SPIN    ;evolution move
	db 44, SANDSTORM
	db 49, ROCK_SLIDE
	db 55, EARTHQUAKE
	db 0 ; no more level-up moves

PonytaEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, EMBER
	db 9, TAIL_WHIP
	db 13, FLAME_WHEEL
	db 17, STOMP
	db 21, MYSTICALFIRE
	db 25, DOUBLE_KICK
	db 33, AGILITY
	db 37, BLAZE_KICK
	db 41, TAKE_DOWN
	db 45, FIRE_BLAST
	db 0 ; no more level-up moves

RapidashEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, DRILL_RUN
	db 1, HORN_ATTACK    ;evolution move
	db 1, TACKLE
	db 1, GROWL
	db 4, EMBER
	db 9, TAIL_WHIP
	db 13, FLAME_WHEEL
	db 17, STOMP
	db 21, MYSTICALFIRE
	db 25, DOUBLE_KICK
	db 33, AGILITY
	db 37, BLAZE_KICK
	db 41, SHARPEN
	db 45, TAKE_DOWN
	db 49, FIRE_BLAST
	db 57, MEGAHORN
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:                 ;final
	dbbbw EVOLVE_HOLD_LEVEL, KINGS_ROCK, 37, SLOWKING
	dbbw EVOLVE_LEVEL, 37, SLOWBRO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, WATER_GUN
	db 9, CURSE
	db 14, CONFUSION
	db 19, DISABLE
	db 25, WATER_PULSE
	db 30, HEADBUTT
	db 36, RECOVER
	db 41, AMNESIA
	db 45, RAIN_DANCE
	db 49, PSYCHIC_M
	db 54, PSYCH_UP
	db 0 ; no more level-up moves

SlowbroEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, IRON_DEFENSE
	db 1, TACKLE
	db 1, GROWL
	db 4, WATER_GUN
	db 9, CURSE
	db 14, CONFUSION
	db 19, DISABLE
	db 25, WATER_PULSE
	db 30, HEADBUTT
	db 36, RECOVER
	db 36, RAZOR_SHELL   ;evolution move
	db 44, AMNESIA
	db 49, RAIN_DANCE
	db 54, PSYCHIC_M
	db 59, PSYCH_UP
	db 0 ; no more level-up moves
	
SlowkingEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, TACKLE
	db 1, GROWL
	db 4, WATER_GUN
	db 9, CURSE
	db 14, CONFUSION
	db 19, DISABLE
	db 25, WATER_PULSE
	db 30, HEADBUTT
	db 36, RECOVER
	db 36, POWER_GEM   ;evolution move
	db 44, NASTY_PLOT
	db 49, SWAGGER
	db 54, PSYCHIC_M
	db 59, PSYCH_UP
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:                ;final
	dbbw EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SUPERSONIC
	db 4, THUNDERSHOCK
	db 7, SONICBOOM
	db 13, THUNDER_WAVE
	db 17, SPARK
	db 21, MIRROR_SHOT
	db 25, SCREECH
	db 29, CHARGE_BEAM
	db 32, LASER_FOCUS
	db 35, FLASH_CANNON
	db 39, AGILITY
	db 45, SELFDESTRUCT
	db 49, ZAP_CANNON
	db 0 ; no more level-up moves

MagnetonEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, IRON_DEFENSE
	db 1, TACKLE
	db 1, SUPERSONIC
	db 4, THUNDERSHOCK
	db 7, SONICBOOM
	db 13, THUNDER_WAVE
	db 17, SPARK
	db 21, MIRROR_SHOT
	db 25, SCREECH
	db 29, CHARGE_BEAM
	db 29, TRI_ATTACK    ;evolution move
	db 35, LASER_FOCUS
	db 39, FLASH_CANNON
	db 45, AGILITY
	db 49, SELFDESTRUCT
	db 53, ZAP_CANNON
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:                ;final
	dbbw EVOLVE_LEVEL, 30, WU_DUK
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 4, SAND_ATTACK
	db 9, VACUUM_WAVE
	db 13, FURY_CUTTER
	db 17, PURSUIT
	db 21, AIR_CUTTER
	db 25, FALSE_SWIPE
	db 31, SLASH
	db 33, AGILITY
	db 37, WING_ATTACK
	db 45, LEAF_BLADE
	db 49, SKY_ATTACK
	db 0 ; no more level-up moves
	
WuDukEvosAttacks:                    ;final
	db 0 ; no more evolutions
	db 1, X_SCISSOR
	db 1, PECK
	db 1, LEER
	db 4, SAND_ATTACK
	db 9, VACUUM_WAVE
	db 13, FURY_CUTTER
	db 17, PURSUIT
	db 21, AIR_CUTTER
	db 25, FALSE_SWIPE
	db 29, ROCK_SMASH    ;evolution move
	db 33, SLASH
	db 37, SWORDS_DANCE
	db 45, SKY_UPPERCUT
	db 49, LEAF_BLADE
	db 55, SKY_ATTACK
	db 0 ; no more level-up moves

DoduoEvosAttacks:                    ;final
	dbbw EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 4, QUICK_ATTACK
	db 10, SHARPEN
	db 14, SUPERSONIC
	db 19, PURSUIT
	db 23, ECHOED_VOICE
	db 28, SCREECH
	db 32, SLAM
	db 37, AGILITY
	db 41, DRILL_PECK
	db 46, TAKE_DOWN
	db 0 ; no more level-up moves

DodrioEvosAttacks:                   ;final
	db 0 ; no more evolutions
	db 1, DRILL_RUN
	db 1, PECK
	db 1, GROWL
	db 4, QUICK_ATTACK
	db 10, SHARPEN
	db 14, SUPERSONIC
	db 19, PURSUIT
	db 23, ECHOED_VOICE
	db 28, SCREECH
	db 30, TRI_ATTACK    ;evolution move
	db 37, SLAM
	db 41, AGILITY
	db 46, DRILL_PECK
	db 53, TAKE_DOWN
	db 0 ; no more level-up moves

SeelEvosAttacks:                     ;final
	dbbw EVOLVE_LEVEL, 34, DEWGONG
	db 1, TACKLE
	db 1, GROWL
	db 4, ENCORE
	db 8, ICE_SHARD
	db 13, ICY_WIND
	db 17, WATER_PULSE
	db 23, REST
	db 27, AURORA_BEAM
	db 32, DIVE
	db 33, TAKE_DOWN
	db 37, SAFEGUARD
	db 41, WAVE_CRASH
	db 43, ICE_BEAM
	db 47, HAIL
	db 0 ; no more level-up moves

DewgongEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, SING
	db 1, TACKLE
	db 1, GROWL
	db 4, ENCORE
	db 8, ICE_SHARD
	db 13, ICY_WIND
	db 17, WATER_PULSE
	db 23, REST
	db 27, AURORA_BEAM
	db 32, DIVE
	db 33, TAKE_DOWN
	db 39, SAFEGUARD
	db 43, WAVE_CRASH
	db 47, ICE_BEAM
	db 53, HAIL
	db 0 ; no more level-up moves

GrimerEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HARDEN
	db 4, MUD_SLAP
	db 7, SMOG
	db 12, DISABLE
	db 15, ACID_SPRAY
	db 21, MUD_SHOT
	db 26, POISON_FANG
	db 29, SNARL
	db 32, SCREECH
	db 37, TOXIC
	db 43, SLUDGE_BOMB
	db 48, ACID_ARMOR
	db 0 ; no more level-up moves

MukEvosAttacks:                      ;final
	db 0 ; no more evolutions
	db 1, RECOVER
	db 1, POUND
	db 1, HARDEN
	db 4, MUD_SLAP
	db 7, SMOG
	db 12, DISABLE
	db 15, ACID_SPRAY
	db 21, MUD_SHOT
	db 26, POISON_FANG
	db 29, SNARL
	db 33, SCREECH
	db 37, TOXIC
	db 48, SLUDGE_BOMB
	db 53, ACID_ARMOR
	db 0 ; no more level-up moves

ShellderEvosAttacks:                 ;final
	dbbbw EVOLVE_ITEM_LEVEL, WATER_STONE, 28, CLOYSTER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 4, ICE_SHARD
	db 8, SUPERSONIC
	db 13, WHIRLPOOL
	db 16, PROTECT
	db 20, BUBBLEBEAM
	db 25, AURORA_BEAM
	db 29, SHARPEN
	db 33, RAZOR_SHELL
	db 38, IRON_DEFENSE
	db 44, ICE_BEAM
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

CloysterEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, FELL_STINGER
	db 1, TACKLE
	db 1, HARDEN
	db 4, ICE_SHARD
	db 8, SUPERSONIC
	db 13, WHIRLPOOL
	db 16, PROTECT
	db 20, BUBBLEBEAM
	db 25, AURORA_BEAM
	db 27, SPIKE_CANNON  ;evolution move
	db 33, SHARPEN
	db 37, RAZOR_SHELL
	db 40, SPIKES
	db 44, IRON_DEFENSE
	db 49, ICICLE_CRASH
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

GastlyEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, LICK
	db 1, SPITE
	db 4, SMOG
	db 8, MEAN_LOOK
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 25, DARK_PULSE
	db 29, HYPNOSIS
	db 33, SHADOW_BALL
	db 36, DREAM_EATER
	db 43, DESTINY_BOND
	db 0 ; no more level-up moves

HaunterEvosAttacks:                  ;final
	dbbbw EVOLVE_ITEM_LEVEL, DUSK_STONE, 42, GENGAR
	db 0 ; no more evolutions
	db 1, LICK
	db 1, SPITE
	db 4, SMOG
	db 8, MEAN_LOOK
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 24, SHADOWSTRIKE  ;evolution move
	db 29, DARK_PULSE
	db 33, HYPNOSIS
	db 36, SHADOW_BALL
	db 43, DREAM_EATER
	db 47, DESTINY_BOND
	db 0 ; no more level-up moves

GengarEvosAttacks:                   ;final
	db 0 ; no more evolutions
	db 1, NASTY_PLOT
	db 1, LICK
	db 1, SPITE
	db 4, SMOG
	db 8, MEAN_LOOK
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 24, SHADOWSTRIKE
	db 29, DARK_PULSE
	db 33, HYPNOSIS
	db 36, SHADOW_BALL
	db 47, DREAM_EATER
	db 53, DESTINY_BOND
	db 56, SLUDGE_BOMB
	db 0 ; no more level-up moves

OnixEvosAttacks:                     ;final
	dbbbw EVOLVE_HOLD_LEVEL, METAL_COAT, 33, STEELIX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 4, WRAP
	db 8, ROCK_THROW
	db 13, CURSE
	db 19, BULLDOZE
	db 22, DRAGONBREATH
	db 25, SLAM
	db 28, SCREECH
	db 34, ROCK_SLIDE
	db 37, DIG
	db 43, TAKE_DOWN
	db 49, SANDSTORM
	db 0 ; no more level-up moves
	
SteelixEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, FIRE_FANG
	db 1, ICE_FANG
	db 1, TACKLE
	db 1, HARDEN
	db 4, WRAP
	db 8, ROCK_THROW
	db 13, CURSE
	db 19, BULLDOZE
	db 22, DRAGONBREATH
	db 25, SLAM
	db 28, SCREECH
	db 34, ROCK_SLIDE
	db 37, CRUNCH
	db 43, IRON_TAIL
	db 49, TAKE_DOWN
	db 54, SANDSTORM
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HYPNOSIS
	db 4, CONFUSION
	db 9, DISABLE
	db 13, HEADBUTT
	db 17, SMOG
	db 25, PSYBEAM 
	db 32, PSYCH_UP
	db 37, PSYCHO_CUT
	db 41, SWAGGER
	db 45, PSYCHIC_M
	db 49, NASTY_PLOT
	db 0 ; no more level-up moves

HypnoEvosAttacks:                    ;final
	db 0 ; no more evolutions
	db 1, CONFUSE_RAY
	db 1, POUND
	db 1, HYPNOSIS
	db 4, CONFUSION
	db 9, DISABLE
	db 13, HEADBUTT
	db 17, SMOG
	db 25, PSYBEAM 
	db 25, DARK_PULSE    ;evolution move
	db 36, PSYCH_UP
	db 41, PSYCHO_CUT
	db 45, SWAGGER
	db 49, PSYCHIC_M
	db 53, NASTY_PLOT
	db 0 ; no more level-up moves

KrabbyEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	db 1, LEER
	db 1, WATER_GUN
	db 4, HARDEN
	db 9, MUD_SHOT
	db 11, SHARPEN
	db 15, BUBBLEBEAM
	db 21, METAL_CLAW
	db 25, STOMP
	db 29, PROTECT
	db 35, RAZOR_SHELL
	db 38, SLAM
	db 41, CRABHAMMER
	db 45, FLAIL
	db 0 ; no more level-up moves

KinglerEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, SWORDS_DANCE
	db 1, LEER
	db 1, WATER_GUN
	db 4, HARDEN
	db 9, MUD_SHOT
	db 11, SHARPEN
	db 15, BUBBLEBEAM
	db 21, METAL_CLAW
	db 25, STOMP
	db 27, NIGHT_SLASH   ;evolution move
	db 33, PROTECT
	db 38, RAZOR_SHELL
	db 41, SLAM
	db 45, CRABHAMMER
	db 54, FLAIL
	db 0 ; no more level-up moves

VoltorbEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, THUNDER_WAVE
	db 4, THUNDERSHOCK
	db 8, SONICBOOM
	db 12, SPARK
	db 15, ROLLOUT
	db 19, SCREECH
	db 26, CHARGE_BEAM
	db 29, SELFDESTRUCT
	db 33, SWIFT
	db 36, LIGHT_SCREEN
	db 43, THUNDERBOLT
	db 47, MIRROR_COAT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, REFRESH
	db 1, TACKLE
	db 1, THUNDER_WAVE
	db 4, THUNDERSHOCK
	db 8, SONICBOOM
	db 12, SPARK
	db 15, ROLLOUT
	db 19, SCREECH
	db 26, CHARGE_BEAM
	db 29, SELFDESTRUCT
	db 36, SWIFT
	db 43, LIGHT_SCREEN
	db 47, THUNDERBOLT
	db 56, MIRROR_COAT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:                ;final
	dbbbw EVOLVE_ITEM_LEVEL, LEAF_STONE, 25, EXEGGUTOR
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, HYPNOSIS
	db 4, LEECH_SEED
	db 7, GROWTH
	db 11, MEGA_DRAIN
	db 17, ROLLOUT
	db 21, EFFECT_SPORE
	db 25, SELFDESTRUCT
	db 33, SLEEP_POWDER
	db 37, SYNTHESIS
	db 43, SOLARBEAM
	db 47, PSYCHIC_M
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, CONFUSION
	db 1, HYPNOSIS
	db 4, LEECH_SEED
	db 7, GROWTH
	db 11, MEGA_DRAIN
	db 17, STOMP
	db 21, EFFECT_SPORE
	db 24, RAZOR_LEAF    ;evolution move
	db 31, SLEEP_POWDER
	db 36, TAKE_DOWN
	db 43, SYNTHESIS
	db 47, GIGA_DRAIN
	db 55, PSYCHIC_M
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, MAROWAK
	dbbbw EVOLVE_ITEM_LEVEL, DUSK_STONE, 28, MAROWAK_ALOLAN
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 4, TAIL_WHIP
	db 7, BONE_CLUB
	db 13, HEADBUTT
	db 17, LASER_FOCUS
	db 23, ECHOED_VOICE
	db 29, BULLDOZE
	db 33, SCREECH
	db 37, TAKE_DOWN
	db 43, BONEMERANG
	db 0 ; no more level-up moves

MarowakEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, SING
	db 1, POUND
	db 1, GROWL
	db 4, LEER
	db 7, BONE_CLUB
	db 13, HEADBUTT
	db 17, LASER_FOCUS
	db 23, ECHOED_VOICE
	db 33, BULLDOZE
	db 37, SCREECH
	db 43, TAKE_DOWN
	db 47, BONEMERANG
	db 53, FALSE_SWIPE
	db 0 ; no more level-up moves
	
TyrogueEvosAttacks:
	dbbbw EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	dbbbw EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	dbbbw EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, ENDURE
	db 4, VACUUM_WAVE
	db 9, PURSUIT
	db 15, LASER_FOCUS
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, REFRESH
	db 1, TACKLE
	db 1, ENDURE
	db 4, VACUUM_WAVE
	db 9, PURSUIT
	db 15, LASER_FOCUS
	db 19, DOUBLE_KICK   ;evolution move
	db 25, PROTECT
	db 29, BLAZE_KICK
	db 33, BULK_UP
	db 37, JUMP_KICK
	db 41, MEGA_KICK
	db 45, SWAGGER
	db 53, SUBMISSION
	db 57, REVERSAL
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:               ;final
	db 0 ; no more evolutions
	db 1, BULLET_PUNCH
	db 1, TACKLE
	db 1, ENDURE
	db 4, VACUUM_WAVE
	db 9, PURSUIT
	db 15, LASER_FOCUS
	db 19, POWERUPPUNCH  ;evolution move
	db 25, PROTECT
	db 29, THUNDERPUNCH
	db 29, FIRE_PUNCH
	db 29, ICE_PUNCH
	db 33, AGILITY
	db 37, SKY_UPPERCUT
	db 41, MEGA_PUNCH
	db 45, SWAGGER
	db 53, SUBMISSION
	db 57, COUNTER
	db 0 ; no more level-up moves
	
HitmontopEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, TWISTER
	db 1, TACKLE
	db 1, ENDURE
	db 4, QUICK_ATTACK
	db 9, PURSUIT
	db 15, LASER_FOCUS
	db 19, RAPID_SPIN    ;evolution move
	db 25, PROTECT
	db 29, LOW_KICK
	db 33, SWAGGER
	db 37, DOUBLE_KICK
	db 41, TAKE_DOWN
	db 45, AGILITY
	db 53, SUBMISSION
	db 57, COUNTER
	db 0 ; no more level-up moves

LickitungEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, LICK
	db 1, DEFENSE_CURL
	db 4, SUPERSONIC
	db 9, ROLLOUT
	db 13, DISABLE
	db 17, WRAP
	db 21, STOMP
	db 28, REFRESH
	db 33, THIEF
	db 37, SCREECH
	db 41, SLAM
	db 45, BULLDOZE
	db 53, BELLY_DRUM
	db 0 ; no more level-up moves

KoffingEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 4, SMOG
	db 10, SMOKESCREEN
	db 15, ACID_SPRAY
	db 18, CONFUSE_RAY
	db 23, TOXIC
	db 28, SELFDESTRUCT
	db 34, PAIN_SPLIT
	db 37, SLUDGE_BOMB
	db 44, DESTINY_BOND
	db 48, HAZE
	db 0 ; no more level-up moves

WeezingEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, WILL_O_WISP
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 4, SMOG
	db 10, SMOKESCREEN
	db 15, ACID_SPRAY
	db 18, CONFUSE_RAY
	db 23, TOXIC
	db 28, SELFDESTRUCT
	db 34, PAIN_SPLIT
	db 34, SLAM          ;evolution move
	db 44, SLUDGE_BOMB
	db 48, DESTINY_BOND
	db 54, HAZE
	db 0 ; no more level-up moves

RhyhornEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, ROCK_THROW
	db 8, HORN_ATTACK
	db 12, SHARPEN
	db 19, ACCELEROCK
	db 23, BULLDOZE
	db 27, SCARY_FACE
	db 32, TAKE_DOWN
	db 39, DRILL_RUN
	db 43, ROCK_SLIDE
	db 47, EARTHQUAKE
	db 52, MEGAHORN
	db 0 ; no more l evel-up moves

RhydonEvosAttacks:                   ;final
	db 0 ; no more evolutions
	db 1, POWERUPPUNCH
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, ROCK_THROW
	db 8, HORN_ATTACK
	db 12, SHARPEN
	db 19, ACCELEROCK
	db 23, BULLDOZE
	db 27, SCARY_FACE
	db 32, TAKE_DOWN
	db 39, DRILL_RUN
	db 41, HORN_DRILL    ;evolution move
	db 47, ROCK_SLIDE
	db 52, EARTHQUAKE
	db 56, MEGAHORN
	db 0 ; no more level-up moves
	
HappinyEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 15, CHANSEY
	db 0 ; no more evolutions
	db 1, POUND
	db 1, DEFENSE_CURL
	db 4, CHARM
	db 9, MIMIC
	db 12, REFRESH
	db 0 ; no more level-up moves

ChanseyEvosAttacks:                  ;final
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	db 1, SEISMIC_TOSS
	db 1, POUND
	db 1, DEFENSE_CURL
	db 4, GROWL
	db 9, TAIL_WHIP
	db 12, REFRESH
	db 14, RECOVER       ;evolution move
	db 20, DOUBLE_TEAM
	db 23, ECHOED_VOICE
	db 27, SING
	db 33, SLAM
	db 39, LIGHT_SCREEN
	db 44, TAKE_DOWN
	db 50, HEAL_BELL
	db 0 ; no more level-up moves
	
BlisseyEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, SEISMIC_TOSS
	db 1, POUND
	db 1, DEFENSE_CURL
	db 4, GROWL
	db 9, TAIL_WHIP
	db 12, REFRESH
	db 14, RECOVER
	db 23, DOUBLE_TEAM
	db 27, ECHOED_VOICE
	db 33, SING
	db 39, SLAM
	db 44, LIGHT_SCREEN
	db 50, TAKE_DOWN
	db 55, HEAL_BELL
	db 0 ; no more level-up moves
	
TangelaEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, MEGA_DRAIN
	db 1, WRAP
	db 4, GROWTH
	db 10, VINE_WHIP
	db 17, EFFECT_SPORE
	db 23, THIEF
	db 27, SLEEP_POWDER
	db 33, GIGA_DRAIN
	db 36, ANCIENTPOWER
	db 43, SLAM
	db 46, SYNTHESIS
	db 53, ENERGY_BALL
	db 0 ; no more level-up moves
	
KangaskidEvosAttacks:                ;final
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, KANGASKHAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 4, TAIL_WHIP
	db 10, BITE
	db 15, ENDURE
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:               ;final
	db 0 ; no more evolutions
	db 1, SLAM
	db 1, POWERUPPUNCH   ;evolution move
	db 1, TACKLE
	db 1, LEER
	db 4, TAIL_WHIP
	db 10, BITE
	db 17, LASER_FOCUS
	db 22, STOMP
	db 28, PURSUIT
	db 34, MEGA_PUNCH
	db 37, ENDURE
	db 43, CRUNCH
	db 49, REVERSAL
	db 55, OUTRAGE
	db 0 ; no more level-up moves

HorseaEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, LEER
	db 4, WATER_GUN
	db 8, SMOKESCREEN
	db 14, TWISTER
	db 22, BUBBLEBEAM
	db 30, OCTAZOOKA
	db 26, LASER_FOCUS
	db 35, AGILITY
	db 38, HYDRO_PUMP
	db 42, DRAGON_DANCE
	db 0 ; no more level-up moves

SeadraEvosAttacks:                   ;final
	dbbw EVOLVE_HOLD, DRAGON_SCALE, KINGDRA
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, LEER
	db 4, WATER_GUN
	db 8, SMOKESCREEN
	db 14, TWISTER
	db 22, BUBBLEBEAM
	db 26, LASER_FOCUS
	db 30, OCTAZOOKA
	db 31, POISON_STING  ;evolution move
	db 35, PIN_MISSILE
	db 38, AGILITY
	db 42, HYDRO_PUMP
	db 48, DRAGON_DANCE
	db 0 ; no more level-up moves
	
KingdraEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, SLAM
	db 1, SPLASH
	db 1, LEER
	db 4, WATER_GUN
	db 8, SMOKESCREEN
	db 14, TWISTER
	db 22, BUBBLEBEAM
	db 26, LASER_FOCUS
	db 30, OCTAZOOKA
	db 31, POISON_STING
	db 38, DRAGONBREATH
	db 42, AGILITY
	db 48, HYDRO_PUMP
	db 53, DRAGON_DANCE
	db 0 ; no more level-up moves

GoldeenEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 4, MUD_SLAP
	db 7, SUPERSONIC
	db 11, HORN_ATTACK
	db 17, WATER_PULSE
	db 21, AGILITY
	db 27, REFRESH
	db 31, FLAIL
	db 37, WATERFALL
	db 41, SHARPEN
	db 47, MEGAHORN
	db 0 ; no more level-up moves

SeakingEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, DRILL_RUN
	db 1, PECK
	db 1, TAIL_WHIP
	db 4, MUD_SLAP
	db 7, SUPERSONIC
	db 11, HORN_ATTACK
	db 17, WATER_PULSE
	db 21, AGILITY
	db 27, REFRESH
	db 31, FLAIL
	db 39, WATERFALL
	db 47, SHARPEN
	db 51, MEGAHORN
	db 57, HORN_DRILL
	db 0 ; no more level-up moves

StaryuEvosAttacks:                   ;final
	dbbbw EVOLVE_ITEM_LEVEL, WATER_STONE, 30, STARMIE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 4, WATER_GUN
	db 10, RAPID_SPIN
	db 15, SWIFT
	db 19, CONFUSE_RAY
	db 24, BUBBLEBEAM
	db 28, RECOVER
	db 33, LIGHT_SCREEN
	db 37, POWER_GEM
	db 42, COSMIC_POWER
	db 46, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, REFRESH
	db 1, TACKLE
	db 1, HARDEN
	db 4, WATER_GUN
	db 10, RAPID_SPIN
	db 15, SWIFT
	db 19, CONFUSE_RAY
	db 24, BUBBLEBEAM
	db 28, RECOVER
	db 29, PSYBEAM       ;evolution move
	db 37, LIGHT_SCREEN
	db 42, POWER_GEM
	db 46, COSMIC_POWER
	db 54, HYDRO_PUMP
	db 0 ; no more level-up moves

ScytherEvosAttacks:                  ;final
	dbbbw EVOLVE_HOLD_LEVEL, METAL_COAT, 25, SCIZOR
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 4, LASER_FOCUS
	db 9, FURY_CUTTER
	db 13, PURSUIT
	db 17, SHARPEN
	db 21, FALSE_SWIPE
	db 25, WING_ATTACK
	db 29, SLASH
	db 33, DOUBLE_TEAM
	db 37, X_SCISSOR
	db 41, AGILITY
	db 45, NIGHT_SLASH
	db 53, SWORDS_DANCE
	db 0 ; no more level-up moves
	
ScizorEvosAttacks:                   ;final
	db 0 ; no more evolutions
	db 1, CRABHAMMER
	db 1, BULLET_PUNCH
	db 1, LEER
	db 4, LASER_FOCUS
	db 9, FURY_CUTTER
	db 13, PURSUIT
	db 17, SHARPEN
	db 21, FALSE_SWIPE
	db 24, METAL_CLAW    ;evolution move
	db 31, SLASH
	db 35, DOUBLE_TEAM
	db 39, X_SCISSOR
	db 43, IRON_DEFENSE
	db 47, NIGHT_SLASH
	db 55, SWORDS_DANCE
	db 0 ; no more level-up moves
	
ElekidEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 20, ELECTABUZZ
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 4, THUNDERSHOCK
	db 8, SWIFT
	db 12, THUNDER_WAVE
	db 16, SCREECH
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:               ;final
	db 0 ; no more evolutions
	db 1, SLAM
	db 1, QUICK_ATTACK
	db 1, LEER
	db 4, THUNDERSHOCK
	db 8, SWIFT
	db 12, THUNDER_WAVE
	db 16, SCREECH
	db 19, THUNDERPUNCH  ;evolution move
	db 25, BULK_UP
	db 32, LOW_KICK
	db 38, THUNDERBOLT
	db 44, SKY_UPPERCUT
	db 50, LIGHT_SCREEN
	db 56, THUNDER
	db 0 ; no more level-up moves
	
MagbyEvosAttacks:                    ;final
	dbbw EVOLVE_LEVEL, 20, MAGMAR
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 4, EMBER
	db 8, SMOKESCREEN
	db 12, WILL_O_WISP
	db 16, SMOG
	db 0 ; no more level-up moves

MagmarEvosAttacks:                   ;final
	db 0 ; no more evolutions
	db 1, BLAZE_KICK
	db 1, SCRATCH
	db 1, LEER
	db 4, EMBER
	db 8, SMOKESCREEN
	db 12, WILL_O_WISP
	db 16, SMOG
	db 19, FIRE_PUNCH    ;evolution move
	db 25, CONFUSE_RAY
	db 32, PURSUIT
	db 38, FLAMETHROWER
	db 44, SLUDGE_BOMB
	db 50, SUNNY_DAY
	db 56, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:                   ;final
	db 0 ; no more evolutions
	db 1, PECK
	db 1, HARDEN
	db 4, LASER_FOCUS
	db 8, QUICK_ATTACK
	db 13, SEISMIC_TOSS
	db 18, BUG_BITE
	db 21, STOMP
	db 25, ROCK_SMASH
	db 30, X_SCISSOR
	db 35, SLASH
	db 39, SWORDS_DANCE
	db 45, SUBMISSION
	db 52, TAKE_DOWN
	db 0 ; no more level-up moves
	
MoobyEvosAttacks:                    ;final
	dbbbw EVOLVE_GENDER, 15, EVO_FEMALE, MILTANK
	dbbbw EVOLVE_GENDER, 15, EVO_MALE, TAUROS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, TAIL_WHIP
	db 7, PURSUIT
	db 12, STOMP
	db 0 ; no more level-up moves

TaurosEvosAttacks:                   ;final
	db 0 ; no more evolutions
	db 1, FLAME_WHEEL
	db 1, TACKLE
	db 1, GROWL
	db 4, TAIL_WHIP
	db 7, PURSUIT
	db 12, STOMP
	db 17, SHARPEN
	db 19, HORN_ATTACK
	db 24, REST
	db 29, BULLDOZE
	db 35, HEADBUTT
	db 41, SCARY_FACE
	db 48, TAKE_DOWN
	db 54, SWAGGER
	db 0 ; no more level-up moves
	
MiltankEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, POWERUPPUNCH	
	db 1, TACKLE
	db 1, GROWL
	db 4, TAIL_WHIP
	db 7, PURSUIT
	db 12, STOMP
	db 17, DEFENSE_CURL
	db 19, ROLLOUT
	db 24, MILK_DRINK
	db 29, SLAM
	db 35, HEADBUTT
	db 41, CHARM
	db 48, BULLDOZE
	db 53, HEAL_BELL
	db 0 ; no more level-up moves

MagikarpEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	db 1, SPLASH
	db 5, TACKLE
	db 15, FLAIL
	db 30, WATERFALL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, SLAM
	db 1, TACKLE
	db 1, LEER
	db 15, TWISTER
	db 19, DRAGON_RAGE   ;evolution move
	db 23, BITE
	db 26, SCARY_FACE
	db 29, ICE_FANG
	db 32, WATERFALL
	db 35, RAIN_DANCE
	db 38, CRUNCH
	db 41, DRAGON_DANCE
	db 44, HYDRO_PUMP
	db 47, OUTRAGE
	db 54, HYPER_BEAM
	db 0 ; no more level-up moves

NessiEvosAttacks:                    ;final
	dbbw EVOLVE_LEVEL, 15, LAPRAS
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, SING
	db 4, POWDER_SNOW
	db 7, REFRESH
	db 10, AURORA_BEAM
	db 0 ; no more level-up moves

LaprasEvosAttacks:                   ;final
	db 0 ; no more evolutions
	db 1, RECOVER
	db 1, GROWL
	db 1, SING
	db 4, POWDER_SNOW
	db 7, REFRESH
	db 10, ICE_SHARD
	db 14, CONFUSE_RAY   ;evolution move
	db 18, WATER_PULSE
	db 22, SLAM
	db 27, RAIN_DANCE
	db 32, PERISH_SONG
	db 37, ICE_BEAM
	db 43, SAFEGUARD
	db 49, HYDRO_PUMP
	db 55, HORN_DRILL
	db 0 ; no more level-up moves

DittoEvosAttacks:                    ;final
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:                    ;final
	dbbw EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	dbbw EVOLVE_ITEM, WATER_STONE, VAPOREON
	dbbw EVOLVE_ITEM, FIRE_STONE, FLAREON
	dbbw EVOLVE_ITEM, SUN_STONE, ESPEON
	dbbw EVOLVE_ITEM, MOON_STONE, UMBREON
	dbbw EVOLVE_ITEM, LEAF_STONE, LEAFEON
	dbbw EVOLVE_ITEM, ICE_STONE, GLACEON
	dbbw EVOLVE_ITEM, SHINY_STONE, SYLVEON
	dbbw EVOLVE_ITEM, TRISTONE, CHIMEREON
	dbbw EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	dbbw EVOLVE_HAPPINESS, TR_EVENITE, UMBREON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, MUD_SLAP
	db 7, SAND_ATTACK
	db 10, QUICK_ATTACK
	db 15, BITE
	db 20, SWIFT
	db 25, CHARM
	db 30, REFRESH
	db 35, MIMIC
	db 40, GROWTH
	db 45, BATON_PASS
	db 50, RETURN
	db 55, TAKE_DOWN
	db 0 ; no more level-up moves

VaporeonEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, ICE_FANG       ;move relearner
	db 1, BATON_PASS     ;move relearner
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, WATER_GUN      ;evolution move
	db 7, SAND_ATTACK
	db 10, QUICK_ATTACK
	db 15, BITE
	db 20, WATER_PULSE
	db 25, AURORA_BEAM
	db 30, REFRESH
	db 35, HAZE
	db 40, BUBBLEBEAM
	db 45, RECOVER
	db 50, ACID_ARMOR
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, EXTREMESPEED   ;move relearner
	db 1, FELL_STINGER   ;move relearner
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, THUNDERSHOCK   ;evolution move
	db 7, SAND_ATTACK
	db 10, QUICK_ATTACK
	db 15, PIN_MISSILE
	db 20, SPARK
	db 25, DOUBLE_KICK
	db 30, THUNDER_WAVE
	db 35, AGILITY
	db 40, CHARGE_BEAM
	db 45, AURA_SPHERE
	db 50, NASTY_PLOT
	db 55, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, SLAM           ;move relearner
	db 1, MORNING_SUN    ;move relearner
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, EMBER          ;evolution move
	db 7, SMOKESCREEN
	db 10, QUICK_ATTACK
	db 15, BITE
	db 20, FLAME_WHEEL
	db 25, DOUBLE_KICK
	db 30, HOWL
	db 35, SMOG
	db 40, FIRE_FANG
	db 45, SUBMISSION
	db 50, SWAGGER
	db 55, FIRE_BLAST
	db 0 ; no more level-up moves
	
EspeonEvosAttacks:                   ;final
	db 0 ; no more evolutions
	db 1, BATON_PASS     ;move relearner
	db 1, COSMIC_POWER   ;move relearner
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, CONFUSION      ;evolution move
	db 7, SAND_ATTACK
	db 10, QUICK_ATTACK
	db 15, DISABLE
	db 20, PSYBEAM
	db 25, SWIFT
	db 30, REFLECT
	db 35, PSYCH_UP
	db 40, POWER_GEM
	db 45, MORNING_SUN
	db 50, CALM_MIND
	db 55, PSYCHIC_M
	db 0 ; no more level-up moves

UmbreonEvosAttacks:                  ;final   >I don't like it! I don't care-
	db 0 ; no more evolutions
	db 1, POISON_FANG    ;move relearner
	db 1, COSMIC_POWER   ;move relearner
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, PURSUIT        ;evolution move
	db 7, SAND_ATTACK
	db 10, QUICK_ATTACK
	db 15, CONFUSE_RAY
	db 20, BITE
	db 25, MEAN_LOOK
	db 30, TOXIC
	db 35, CURSE
	db 40, SHADOWSTRIKE
	db 45, MOONLIGHT
	db 50, SCREECH
	db 55, DARK_PULSE
	db 0 ; no more level-up moves
	
LeafeonEvosAttacks:                  ;final   >what it looks like to anyone else
	db 0 ; no more evolutions
	db 1, X_SCISSOR      ;move relearner
	db 1, LEECH_SEED     ;move relearner
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, MEGA_DRAIN     ;evolution move
	db 7, SAND_ATTACK
	db 10, QUICK_ATTACK
	db 15, DOUBLE_KICK
	db 20, RAZOR_LEAF
	db 25, FURY_CUTTER
	db 30, GROWTH
	db 35, SUNNY_DAY
	db 40, GIGA_DRAIN
	db 45, SWORDS_DANCE
	db 50, SYNTHESIS
	db 55, LEAF_BLADE
	db 0 ; no more level-up moves
	
GlaceonEvosAttacks:                  ;final   >-I don't like it one bit!
	db 0 ; no more evolutions
	db 1, WATER_PULSE    ;move relearner | this is a tm :/
	db 1, AURORA_BEAM    ;move relearner
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, POWDER_SNOW    ;evolution move
	db 7, SAND_ATTACK
	db 10, ICE_SHARD
	db 15, BITE
	db 20, ICY_WIND
	db 25, HAZE
	db 30, AMNESIA
	db 35, HAIL
	db 40, ICE_BEAM
	db 45, MIRROR_COAT
	db 50, RECOVER
	db 55, BLIZZARD
	db 0 ; no more level-up moves
	
SylveonEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, SWEET_SCENT    ;move relearner | 'and this is lady susan, she smells good'
	db 1, MYSTICALFIRE   ;move relearner
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, ECHOED_VOICE   ;evolution move
	db 7, SAND_ATTACK
	db 10, QUICK_ATTACK
	db 15, CHARM
	db 20, SWIFT
	db 25, SAFEGUARD
	db 30, ATTRACT
	db 35, CALM_MIND
	db 40, SILVER_WIND
	db 45, RECOVER
	db 50, HEAL_BELL
	db 55, HYPER_VOICE
	db 0 ; no more level-up moves
	
ChimereonEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, SHADOW_RUSH  ;move relearner
	db 1, TRI_ATTACK   ;evolution move
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, EMBER      
	db 7, SAND_ATTACK
	db 10, QUICK_ATTACK
	db 15, BITE   
	db 20, WATER_PULSE
	db 25, THUNDER_WAVE
	db 30, HOWL   
	db 35, FIRE_FANG      
	db 40, SPARK      
	db 45, NASTY_PLOT    
	db 50, HAZE   
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

PorygonEvosAttacks:                  ;final
	dbbw EVOLVE_HOLD, UP_GRADE, PORYGON2
	dbbw EVOLVE_HOLD, DUBIOUS_DISC, PORYGON_Z
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 4, THUNDERSHOCK
	db 7, SHARPEN
	db 12, PSYBEAM
	db 18, AGILITY
	db 23, RECOVER
	db 29, CHARGE_BEAM
	db 34, LASER_FOCUS
	db 40, TRI_ATTACK
	db 45, MIRROR_COAT
	db 51, ZAP_CANNON
	db 0 ; no more level-up moves
	
Porygon2EvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, SAFEGUARD
	db 1, CALM_MIND      ;evolution move
	db 1, TACKLE
	db 1, DISABLE
	db 4, THUNDERSHOCK
	db 8, DEFENSE_CURL
	db 14, PSYBEAM
	db 19, AGILITY
	db 25, RECOVER
	db 31, CHARGE_BEAM
	db 36, LASER_FOCUS
	db 43, TRI_ATTACK
	db 49, MIRROR_COAT
	db 53, ZAP_CANNON
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves
	
PorygonZEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, NASTY_PLOT     ;evolution move
	db 1, TACKLE
	db 1, DISABLE
	db 4, THUNDERSHOCK
	db 8, SHARPEN
	db 14, PSYBEAM
	db 19, AGILITY
	db 25, RECOVER
	db 31, CHARGE_BEAM
	db 36, LASER_FOCUS
	db 43, TRI_ATTACK
	db 49, MIRROR_COAT
	db 53, ZAP_CANNON
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

OmanyteEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 35, OMASTAR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, HARDEN
	db 4, WATER_GUN
	db 7, ROLLOUT
	db 14, BITE
	db 19, MUD_SHOT
	db 25, BUBBLEBEAM
	db 28, ANCIENTPOWER
	db 34, PROTECT
	db 40, HYDRO_PUMP
	db 46, HAZE
	db 0 ; no more level-up moves

OmastarEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, RAZOR_SHELL
	db 1, WRAP
	db 1, HARDEN
	db 4, WATER_GUN
	db 7, ROLLOUT
	db 14, BITE
	db 19, MUD_SHOT
	db 25, BUBBLEBEAM
	db 28, ANCIENTPOWER
	db 34, PROTECT
	db 34, SPIKE_CANNON  ;evolution move
	db 40, IRON_DEFENSE
	db 46, HYDRO_PUMP
	db 52, HAZE
	db 0 ; no more level-up moves

KabutoEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 35, KABUTOPS
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 4, MEGA_DRAIN
	db 7, AQUA_JET
	db 14, ENDURE
	db 19, MUD_SHOT
	db 25, BUG_BITE
	db 28, ANCIENTPOWER
	db 34, SCREECH
	db 40, RAZOR_SHELL
	db 46, NIGHT_SLASH
	db 0 ; no more level-up moves

KabutopsEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, X_SCISSOR
	db 1, SCRATCH
	db 1, LEER
	db 4, MEGA_DRAIN
	db 7, AQUA_JET
	db 14, ENDURE
	db 19, MUD_SHOT
	db 25, BUG_BITE
	db 28, ANCIENTPOWER
	db 34, SCREECH
	db 34, SLASH         ;evolution move
	db 40, SWORDS_DANCE
	db 46, RAZOR_SHELL
	db 52, NIGHT_SLASH
	db 0 ; no more level-up moves
	
AerodonEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 30, AERODACTYL
	db 0 ; no more evolutions
	db 1, ROCK_THROW
	db 1, LEER
	db 4, SUPERSONIC
	db 9, BITE
	db 17, SCARY_FACE
	db 25, ANCIENTPOWER
	db 33, AGILITY
	db 38, DRAGONBREATH
	db 45, TAKE_DOWN
	db 49, ROCK_SLIDE
	db 0 ; no more level-up moves

AerodactylEvosAttacks:               ;final
	db 0 ; no more evolutions
	db 1, FIRE_FANG
	db 1, ICE_FANG
	db 1, ROCK_THROW
	db 1, LEER
	db 4, SUPERSONIC
	db 9, BITE
	db 17, SCARY_FACE
	db 25, ANCIENTPOWER
	db 29, WING_ATTACK   ;evolution move
	db 33, AGILITY
	db 38, DRAGONBREATH
	db 45, CRUNCH
	db 49, TAKE_DOWN
	db 53, ROCK_SLIDE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

MunchlaxEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 20, SNORLAX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 4, LICK
	db 9, BITE
	db 12, SCREECH
	db 17, HEADBUTT
	db 21, METRONOME
	db 25, AMNESIA
	db 28, SLAM
	db 33, BULLDOZE
	db 38, BELLY_DRUM
	db 46, CRUNCH
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, REFRESH
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 4, LICK
	db 9, BITE
	db 12, SCREECH
	db 17, HEADBUTT
	db 19, REST          ;evolution move
	db 21, SLEEP_TALK
	db 28, AMNESIA
	db 33, SLAM
	db 38, BULLDOZE
	db 46, BELLY_DRUM
	db 52, CRUNCH
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

ArticunoEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, HEAL_BELL
	db 1, GUST
	db 1, REFRESH
	db 4, POWDER_SNOW
	db 10, REFLECT
	db 15, AIR_CUTTER
	db 20, AGILITY
	db 25, ANCIENTPOWER
	db 30, FEATHERDANCE
	db 35, AURORA_BEAM
	db 40, ROOST
	db 45, ICE_BEAM
	db 50, HAIL
	db 55, BLIZZARD
	db 59, HAZE
	db 0 ; no more level-up moves

ZapdosEvosAttacks:                   ;final
	db 0 ; no more evolutions
	db 1, BATON_PASS
	db 1, PECK
	db 1, LASER_FOCUS
	db 4, THUNDERSHOCK
	db 10, LIGHT_SCREEN
	db 15, SPARK
	db 20, AGILITY
	db 25, ANCIENTPOWER
	db 30, SCREECH
	db 35, DRILL_PECK
	db 40, PROTECT
	db 45, THUNDERBOLT
	db 50, RAIN_DANCE
	db 55, THUNDER
	db 59, ZAP_CANNON
	db 0 ; no more level-up moves

MoltresEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, MORNING_SUN
	db 1, PECK
	db 1, LEER
	db 4, EMBER
	db 10, SAFEGUARD
	db 15, WING_ATTACK
	db 20, AGILITY
	db 25, ANCIENTPOWER
	db 30, WILL_O_WISP
	db 35, MYSTICALFIRE
	db 40, ENDURE
	db 45, FLAMETHROWER
	db 50, SUNNY_DAY
	db 55, FIRE_BLAST
	db 59, SKY_ATTACK
	db 0 ; no more level-up moves

DratiniEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 4, THUNDER_WAVE
	db 7, TWISTER
	db 11, DRAGON_RAGE
	db 15, AGILITY
	db 21, SLAM
	db 25, WATER_PULSE
	db 31, DRAGONBREATH
	db 35, SAFEGUARD
	db 39, BUBBLEBEAM
	db 45, DRAGON_DANCE
	db 50, OUTRAGE
	db 0 ; no more level-up moves

DragonairEvosAttacks:                ;final
	dbbw EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 4, THUNDER_WAVE
	db 7, TWISTER
	db 11, DRAGON_RAGE
	db 15, AGILITY
	db 21, SLAM
	db 25, WATER_PULSE
	db 34, DRAGONBREATH
	db 39, SAFEGUARD
	db 45, POWER_GEM
	db 50, DRAGON_DANCE
	db 56, OUTRAGE
	db 0 ; no more level-up moves

DragoniteEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, HEAL_BELL
	db 1, WING_ATTACK    ;evolution move
	db 1, WRAP
	db 1, LEER
	db 4, THUNDER_WAVE
	db 7, TWISTER
	db 11, DRAGON_RAGE
	db 15, AGILITY
	db 21, SLAM
	db 25, WATER_PULSE
	db 34, DRAGONBREATH
	db 39, SAFEGUARD
	db 45, POWER_GEM
	db 50, DRAGON_DANCE
	db 59, OUTRAGE
	db 65, HYPER_BEAM
	db 0 ; no more level-up moves

MewtwoEvosAttacks:                   ;final
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, DISABLE	
	db 4, SWIFT
	db 6, SAFEGUARD
	db 12, ANCIENTPOWER
	db 18, BULK_UP
	db 26, PSYCHO_CUT
	db 32, AURA_SPHERE
	db 38, AMNESIA
	db 46, PSYCHIC_M
	db 52, RECOVER	
	db 58, SHADOW_BALL
	db 66, PSYSTRIKE
	db 72, PSYCH_UP
	db 0 ; no more level-up moves

MewEvosAttacks:                      ;final
	db 0 ; no more evolutions
	db 1, POUND
	db 1, DISABLE
	db 4, CONFUSION
	db 10, TRANSFORM
	db 15, REFRESH
	db 20, MEGA_PUNCH
	db 25, ANCIENTPOWER
	db 30, METRONOME
	db 35, AMNESIA
	db 40, PSYCHIC_M
	db 45, BATON_PASS
	db 50, MIMIC
	db 55, RECOVER
	db 60, AURA_SPHERE
	db 65, NASTY_PLOT
	db 70, SKETCH
	db 0 ; no more level-up moves

ChikoritaEvosAttacks:                ;final
	dbbw EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, MEGA_DRAIN
	db 8, SLEEP_POWDER
	db 12, REFLECT
	db 14, GROWTH
	db 19, RAZOR_LEAF
	db 24, SLAM
	db 27, SAFEGUARD
	db 33, GIGA_DRAIN
	db 38, SYNTHESIS
	db 42, LIGHT_SCREEN
	db 45, SOLARBEAM
	db 0 ; no more level-up moves

BayleefEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, MEGA_DRAIN
	db 8, SLEEP_POWDER
	db 12, REFLECT
	db 15, GROWTH
	db 22, RAZOR_LEAF
	db 25, SLAM
	db 33, SAFEGUARD
	db 38, GIGA_DRAIN
	db 42, SYNTHESIS
	db 45, LIGHT_SCREEN
	db 49, SOLARBEAM
	db 0 ; no more level-up moves

MeganiumEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, GIGA_DRAIN
	db 1, TACKLE
	db 1, GROWL
	db 4, MEGA_DRAIN
	db 8, SLEEP_POWDER
	db 12, REFLECT
	db 15, GROWTH
	db 22, RAZOR_LEAF
	db 25, SLAM
	db 31, PETAL_DANCE   ;evolution move
	db 33, SAFEGUARD
	db 38, DRAGONBREATH
	db 45, SYNTHESIS
	db 49, LIGHT_SCREEN
	db 55, SOLARBEAM
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:                ;final
	dbbw EVOLVE_LEVEL, 14, QUILAVA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 4, EMBER
	db 8, SMOKESCREEN
	db 12, QUICK_ATTACK
	db 14, DEFENSE_CURL
	db 19, FLAME_WHEEL
	db 24, WILL_O_WISP
	db 27, SWIFT
	db 33, FLAMETHROWER
	db 38, ROLLOUT
	db 42, TAKE_DOWN
	db 45, FIRE_BLAST
	db 0 ; no more level-up moves

QuilavaEvosAttacks:                ;final
	dbbw EVOLVE_LEVEL, 36, TYPHLOSION
	dbbbw EVOLVE_ITEM_LEVEL, DUSK_STONE, 36, TYPHLOSION_HISUIAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 4, EMBER
	db 8, SMOKESCREEN
	db 12, QUICK_ATTACK
	db 14, DEFENSE_CURL
	db 22, FLAME_WHEEL
	db 25, WILL_O_WISP
	db 33, SWIFT
	db 38, FLAMETHROWER
	db 42, ROLLOUT
	db 45, TAKE_DOWN
	db 49, FIRE_BLAST
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:               ;final
	db 0 ; no more evolutions
	db 1, POWERUPPUNCH
	db 1, TACKLE
	db 1, LEER
	db 4, EMBER
	db 8, SMOKESCREEN
	db 12, QUICK_ATTACK
	db 14, DEFENSE_CURL
	db 22, FLAME_WHEEL
	db 25, WILL_O_WISP
	db 33, SWIFT
	db 35, FIRE_PUNCH    ;evolution move
	db 42, FLAMETHROWER
	db 45, ROLLOUT
	db 49, TAKE_DOWN
	db 55, FIRE_BLAST
	db 0 ; no more level-up moves

TotodileEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 4, WATER_GUN
	db 8, MUD_SLAP
	db 12, BITE
	db 16, SHARPEN
	db 22, ICE_FANG
	db 25, SCARY_FACE
	db 32, SLASH
	db 34, LOW_KICK
	db 37, SCREECH
	db 41, CRUNCH
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 36, FERALIGATR
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 4, WATER_GUN
	db 8, MUD_SLAP
	db 12, BITE
	db 16, SHARPEN
	db 24, ICE_FANG
	db 32, SCARY_FACE
	db 36, SLASH
	db 38, LOW_KICK
	db 42, SCREECH
	db 45, CRUNCH
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:               ;final
	db 0 ; no more evolutions
	db 1, SUBMISSION
	db 1, SCRATCH
	db 1, LEER
	db 4, WATER_GUN
	db 8, MUD_SLAP
	db 12, BITE
	db 16, SHARPEN
	db 24, ICE_FANG
	db 32, SCARY_FACE
	db 35, SLASH
	db 35, WAVE_CRASH    ;evolution move
	db 39, LOW_KICK
	db 45, SCREECH
	db 49, CRUNCH
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 4, QUICK_ATTACK
	db 7, MUD_SLAP
	db 14, FURY_SWIPES
	db 19, SLAM
	db 25, REST
	db 29, NIGHT_SLASH
	db 36, AMNESIA
	db 39, BATON_PASS
	db 42, TAKE_DOWN
	db 47, HYPER_VOICE
	db 0 ; no more level-up moves

FurretEvosAttacks:                   ;final
	db 0 ; no more evolutions
	db 1, COIL
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 4, QUICK_ATTACK
	db 7, MUD_SLAP
	db 14, FURY_SWIPES
	db 14, AGILITY       ;evolution move
	db 23, SLAM
	db 27, REST
	db 34, NIGHT_SLASH
	db 39, AMNESIA
	db 42, BATON_PASS
	db 47, TAKE_DOWN
	db 53, HYPER_VOICE
	db 0 ; no more level-up moves

HoothootEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 4, HYPNOSIS
	db 7, ECHOED_VOICE
	db 13, CONFUSION
	db 17, REFLECT
	db 25, TAKE_DOWN
	db 28, AIR_CUTTER
	db 32, PSYCHIC_M
	db 37, ROOST
	db 43, HYPER_VOICE
	db 46, DREAM_EATER
	db 0 ; no more level-up moves

NoctowlEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, CALM_MIND
	db 1, PECK
	db 1, GROWL
	db 4, HYPNOSIS
	db 7, ECHOED_VOICE
	db 13, CONFUSION
	db 17, REFLECT
	db 19, WING_ATTACK   ;evolution move
	db 28, TAKE_DOWN
	db 32, AIR_CUTTER
	db 37, PSYCHIC_M
	db 43, ROOST
	db 46, HYPER_VOICE
	db 53, DREAM_EATER
	db 0 ; no more level-up moves

LedybaEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SUPERSONIC
	db 4, GROWTH
	db 7, POWERUPPUNCH
	db 10, SAFEGUARD
	db 14, SWIFT
	db 17, SILVER_WIND
	db 22, LIGHT_SCREEN
	db 22, REFLECT
	db 25, BATON_PASS
	db 33, TAKE_DOWN
	db 38, AGILITY
	db 45, BUG_BUZZ
	db 0 ; no more level-up moves

LedianEvosAttacks:                   ;final
	db 0 ; no more evolutions
	db 1, ROOST
	db 1, TACKLE
	db 1, SUPERSONIC
	db 4, GROWTH
	db 7, POWERUPPUNCH
	db 10, SAFEGUARD
	db 14, SWIFT
	db 17, BULLET_PUNCH  ;evolution move
	db 22, SILVER_WIND
	db 25, LIGHT_SCREEN
	db 25, REFLECT
	db 33, BATON_PASS
	db 38, SKY_UPPERCUT
	db 43, TAKE_DOWN
	db 48, AGILITY
	db 53, BUG_BUZZ
	db 0 ; no more level-up moves

SpinarakEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 5, LEECH_LIFE
	db 8, SCARY_FACE
	db 12, NIGHT_SHADE
	db 15, FURY_SWIPES
	db 19, POISON_FANG
	db 24, BUG_BITE
	db 28, AGILITY
	db 32, PSYCHIC_M
	db 37, POISON_JAB
	db 42, SPIDER_WEB
	db 0 ; no more level-up moves

AriadosEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, SWORDS_DANCE
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 5, LEECH_LIFE
	db 8, SCARY_FACE
	db 12, NIGHT_SHADE
	db 15, FURY_SWIPES
	db 19, POISON_FANG
	db 21, NIGHT_SLASH   ;evolution move
	db 28, BUG_BITE
	db 32, AGILITY
	db 37, PSYCHIC_M
	db 42, POISON_JAB
	db 48, SPIDER_WEB
	db 53, MEGAHORN
	db 0 ; no more level-up moves

ChinchouEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	db 1, SUPERSONIC
	db 1, WATER_GUN
	db 4, THUNDER_WAVE
	db 9, FLAIL
	db 12, CONFUSE_RAY
	db 17, SPARK
	db 20, BUBBLEBEAM
	db 23, TAKE_DOWN
	db 28, CHARGE_BEAM
	db 34, AMNESIA
	db 39, THUNDERBOLT
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

LanturnEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, REFRESH
	db 1, SUPERSONIC
	db 1, WATER_GUN
	db 4, THUNDER_WAVE
	db 9, FLAIL
	db 12, CONFUSE_RAY
	db 17, SPARK
	db 20, BUBBLEBEAM
	db 23, TAKE_DOWN
	db 26, SAFEGUARD     ;evolution move
	db 34, CHARGE_BEAM
	db 39, AMNESIA
	db 45, THUNDERBOLT
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves

TogepiEvosAttacks:                   ;final
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 4, METRONOME
	db 9, ENCORE
	db 15, CHARM
	db 22, ANCIENTPOWER
	db 29, SAFEGUARD
	db 34, TAKE_DOWN
	db 41, BATON_PASS
	db 0 ; no more level-up moves

TogeticEvosAttacks:                  ;final
	dbbw EVOLVE_ITEM, SHINY_STONE, TOGEKISS
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 4, METRONOME
	db 9, ENCORE
	db 15, CHARM
	db 22, AIR_CUTTER    ;evolution move
	db 25, ROOST
	db 29, ANCIENTPOWER
	db 34, SAFEGUARD
	db 39, TAKE_DOWN
	db 45, BATON_PASS
	db 0 ; no more level-up moves
	
TogekissEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, TRI_ATTACK
	db 1, AURA_SPHERE    ;evolution move
	db 1, PECK
	db 1, GROWL
	db 4, METRONOME
	db 9, ENCORE
	db 15, CHARM
	db 25, AIR_CUTTER
	db 29, ROOST
	db 34, ANCIENTPOWER
	db 39, SAFEGUARD
	db 45, TAKE_DOWN
	db 49, BATON_PASS
	db 54, EXTREMESPEED
	db 59, SKY_ATTACK
	db 0 ; no more level-up moves

NatuEvosAttacks:                     ;final
	dbbw EVOLVE_LEVEL, 20, IATU
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 4, TELEPORT
	db 9, CONFUSION
	db 16, NIGHT_SHADE
	db 23, CONFUSE_RAY
	db 28, RECOVER
	db 33, COSMIC_POWER
	db 39, OMINOUS_WIND
	db 44, BATON_PASS
	db 47, PSYCHIC_M
	db 0 ; no more level-up moves
	
IatuEvosAttacks:                     ;final
	dbbw EVOLVE_LEVEL, 35, XATU
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 4, TELEPORT
	db 9, CONFUSION
	db 16, NIGHT_SHADE
	db 23, CONFUSE_RAY
	db 28, AIR_CUTTER
	db 33, RECOVER
	db 39, COSMIC_POWER
	db 44, OMINOUS_WIND
	db 47, BATON_PASS
	db 52, PSYCHIC_M
	db 0 ; no more level-up moves

XatuEvosAttacks:                     ;final
	db 0 ; no more evolutions
	db 1, MYSTICALFIRE
	db 1, PECK
	db 1, LEER
	db 4, TELEPORT
	db 9, CONFUSION
	db 16, NIGHT_SHADE
	db 23, CONFUSE_RAY
	db 28, AIR_CUTTER
	db 33, RECOVER
	db 44, COSMIC_POWER
	db 47, OMINOUS_WIND
	db 52, BATON_PASS
	db 58, PSYCHIC_M
	db 0 ; no more level-up moves

MareepEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, THUNDERSHOCK
	db 8, THUNDER_WAVE
	db 14, SWIFT
	db 18, HYPNOSIS
	db 23, CHARGE_BEAM
	db 29, CONFUSE_RAY
	db 32, HIDDEN_POWER
	db 36, POWER_GEM
	db 39, LIGHT_SCREEN
	db 43, TAKE_DOWN
	db 46, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, THUNDERSHOCK
	db 8, THUNDER_WAVE
	db 14, SWIFT
	db 23, HYPNOSIS
	db 29, CHARGE_BEAM
	db 32, CONFUSE_RAY
	db 36, HIDDEN_POWER
	db 39, POWER_GEM
	db 43, LIGHT_SCREEN
	db 46, TAKE_DOWN
	db 51, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, DRAGON_DANCE
	db 1, TACKLE
	db 1, GROWL
	db 4, THUNDERSHOCK
	db 8, THUNDER_WAVE
	db 14, SWIFT
	db 23, HYPNOSIS
	db 29, CHARGE_BEAM
	db 29, THUNDERPUNCH  ;evolution move
	db 36, CONFUSE_RAY
	db 39, DRAGONBREATH
	db 43, POWER_GEM
	db 46, LIGHT_SCREEN
	db 51, TAKE_DOWN
	db 57, THUNDER
	db 0 ; no more level-up moves

MarillEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 4, TAIL_WHIP
	db 7, WATER_GUN
	db 9, ROLLOUT
	db 15, CHARM
	db 21, BUBBLEBEAM
	db 25, TAKE_DOWN
	db 30, BELLY_DRUM
	db 35, WAVE_CRASH
	db 40, RAIN_DANCE
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

AzumarillEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, AQUA_JET
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 4, TAIL_WHIP
	db 7, WATER_GUN
	db 9, ROLLOUT
	db 15, CHARM
	db 17, POWERUPPUNCH  ;evolution move
	db 25, BUBBLEBEAM
	db 30, TAKE_DOWN
	db 35, BELLY_DRUM
	db 40, WAVE_CRASH
	db 45, RAIN_DANCE
	db 50, HYDRO_PUMP
	db 55, SUBMISSION
	db 0 ; no more level-up moves

BonslyEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 15, SUDOWOODO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 4, ROCK_THROW
	db 8, ENDURE
	db 12, LOW_KICK
	db 15, MIMIC
	db 22, SLAM
	db 29, SCREECH
	db 33, PURSUIT
	db 40, PSYCH_UP
	db 45, FLAIL
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, POWERUPPUNCH
	db 1, TACKLE
	db 1, HARDEN
	db 4, ROCK_THROW
	db 8, ENDURE
	db 12, LOW_KICK
	db 15, MIMIC
	db 25, SLAM
	db 29, SCREECH
	db 33, ROCK_SLIDE
	db 36, PURSUIT
	db 40, TAKE_DOWN
	db 45, PSYCH_UP
	db 52, SKY_UPPERCUT
	db 0 ; no more level-up moves

HoppipEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, MEGA_DRAIN
	db 7, GROWTH
	db 12, LEECH_SEED
	db 16, GUST
	db 19, EFFECT_SPORE
	db 25, SLEEP_POWDER
	db 28, SYNTHESIS
	db 34, SILVER_WIND
	db 37, SUNNY_DAY
	db 43, GIGA_DRAIN
	db 0 ; no more level-up moves

SkiploomEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, MEGA_DRAIN
	db 7, GROWTH
	db 12, LEECH_SEED
	db 16, GUST
	db 19, EFFECT_SPORE
	db 25, SLEEP_POWDER
	db 31, SYNTHESIS
	db 34, SLAM
	db 37, SILVER_WIND
	db 43, SUNNY_DAY
	db 49, GIGA_DRAIN
	db 0 ; no more level-up moves

JumpluffEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, PETAL_DANCE
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, MEGA_DRAIN
	db 7, GROWTH
	db 12, LEECH_SEED
	db 16, GUST
	db 25, EFFECT_SPORE
	db 31, SLEEP_POWDER
	db 34, SLAM
	db 37, SYNTHESIS
	db 43, SILVER_WIND
	db 49, SUNNY_DAY
	db 54, GIGA_DRAIN
	db 0 ; no more level-up moves

AipomEvosAttacks:                    ;final
	dbbbw EVOLVE_ITEM_LEVEL, SHINY_STONE, 28, AMBIPOM
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 9, FURY_SWIPES
	db 15, LASER_FOCUS
	db 21, SWIFT
	db 25, POWERUPPUNCH
	db 28, SCREECH
	db 32, MEGA_PUNCH
	db 36, AGILITY
	db 41, SKY_UPPERCUT
	db 46, BATON_PASS
	db 0 ; no more level-up moves
	
AmbipomEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, ENCORE	
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 9, FURY_SWIPES
	db 15, LASER_FOCUS
	db 21, SWIFT
	db 25, POWERUPPUNCH
	db 28, SCREECH
	db 32, MEGA_PUNCH
	db 39, AGILITY
	db 45, SKY_UPPERCUT
	db 52, BATON_PASS
	db 57, DYNAMICPUNCH
	db 0 ; no more level-up moves
	
SunkernEvosAttacks:                  ;final
	dbbbw EVOLVE_ITEM_LEVEL, SUN_STONE, 15, SUNFLORA
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWTH
	db 4, MEGA_DRAIN
	db 9, LEECH_SEED
	db 13, SUNNY_DAY
	db 19, SYNTHESIS
	db 25, ENCORE
	db 0 ; no more level-up moves

SunfloraEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, EARTH_POWER
	db 1, POUND
	db 1, GROWTH
	db 4, MEGA_DRAIN
	db 9, LEECH_SEED
	db 13, SUNNY_DAY
	db 14, RAZOR_LEAF    ;evolution move
	db 21, MIMIC
	db 29, SYNTHESIS
	db 33, PETAL_DANCE
	db 39, ENCORE
	db 45, TAKE_DOWN
	db 52, SOLARBEAM
	db 0 ; no more level-up moves

YanmaEvosAttacks:                    ;final
	dbbw EVOLVE_MOVE, ANCIENTPOWER, YANMEGA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LASER_FOCUS
	db 4, QUICK_ATTACK
	db 11, SONICBOOM
	db 14, BUG_BITE
	db 17, SUPERSONIC
	db 22, TWISTER
	db 27, HYPNOSIS
	db 33, ANCIENTPOWER
	db 38, WING_ATTACK
	db 43, SCREECH
	db 46, RAZOR_WIND
	db 49, BUG_BUZZ
	db 0 ; no more level-up moves
	
YanmegaEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, NIGHT_SLASH
	db 1, TACKLE
	db 1, LASER_FOCUS
	db 4, QUICK_ATTACK
	db 11, SONICBOOM
	db 14, BUG_BITE
	db 17, SUPERSONIC
	db 22, TWISTER
	db 27, HYPNOSIS
	db 33, ANCIENTPOWER
	db 40, SLASH
	db 46, SCREECH
	db 49, RAZOR_WIND
	db 54, BUG_BUZZ
	db 0 ; no more level-up moves

WooperEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 4, MUD_SLAP
	db 9, REFRESH
	db 15, MUD_SHOT
	db 19, WATER_PULSE
	db 23, SLAM
	db 29, REST
	db 33, WAVE_CRASH
	db 37, EARTHQUAKE
	db 45, HAZE
	db 0 ; no more level-up moves

QuagsireEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, BULLDOZE
	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 4, MUD_SLAP
	db 9, REFRESH
	db 15, MUD_SHOT
	db 19, WATER_PULSE
	db 19, AMNESIA       ;evolution move
	db 25, SLAM
	db 33, REST
	db 37, WAVE_CRASH
	db 43, TAKE_DOWN
	db 47, EARTHQUAKE
	db 51, HAZE
	db 0 ; no more level-up moves

MurkrowEvosAttacks:                  ;final
	dbbbw EVOLVE_ITEM_LEVEL, DUSK_STONE, 28, HONCHKROW
	db 0 ; no more evolutions
	db 1, PECK
	db 1, SPITE
	db 4, PURSUIT
	db 11, HAZE
	db 15, WING_ATTACK
	db 21, NIGHT_SHADE
	db 25, SCREECH
	db 31, THIEF
	db 35, CONFUSE_RAY
	db 41, SHADOWSTRIKE
	db 45, MEAN_LOOK
	db 51, MIRROR_MOVE
	db 0 ; no more level-up moves
	
HonchkrowEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, DARK_PULSE
	db 1, PECK
	db 1, SPITE
	db 4, PURSUIT
	db 11, HAZE
	db 15, WING_ATTACK
	db 21, NIGHT_SHADE
	db 25, SCREECH
	db 27, NASTY_PLOT    ;evolution move
	db 35, NIGHT_SLASH
	db 41, SWAGGER
	db 45, SHADOWSTRIKE
	db 51, MEAN_LOOK
	db 55, MIRROR_MOVE
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:               ;final
	dbbbw EVOLVE_ITEM_LEVEL, DUSK_STONE, 28, MISMAGIUS
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CONFUSION
	db 4, SPITE
	db 10, HEX
	db 14, CONFUSE_RAY
	db 19, MEAN_LOOK
	db 25, PSYBEAM
	db 32, PAIN_SPLIT
	db 37, SCREECH
	db 41, SHADOW_BALL
	db 46, PERISH_SONG
	db 50, POWER_GEM
	db 0 ; no more level-up moves
	
MismagiusEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, NASTY_PLOT
	db 1, GROWL
	db 1, CONFUSION
	db 4, SPITE
	db 10, HEX
	db 14, CONFUSE_RAY
	db 19, MEAN_LOOK
	db 25, PSYBEAM
	db 27, MYSTICALFIRE  ;evolution move
	db 35, PAIN_SPLIT
	db 41, SCREECH
	db 46, SHADOW_BALL
	db 50, PERISH_SONG
	db 55, POWER_GEM
	db 0 ; no more level-up moves

WynautEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 15, WOBBUFFET
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, CHARM
	db 1, ENCORE
	db 15, COUNTER
	db 15, MIRROR_COAT
	db 15, SAFEGUARD
	db 15, DESTINY_BOND
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, MEAN_LOOK
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, SAFEGUARD
	db 1, DESTINY_BOND
	db 0 ; no more level-up moves

OkapakoEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 22, GIRAFARIG
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, CONFUSION
	db 10, PURSUIT
	db 14, STOMP
	db 19, CONFUSE_RAY
	db 23, PSYBEAM
	db 28, AGILITY
	db 32, TAKE_DOWN
	db 37, BATON_PASS
	db 41, NASTY_PLOT
	db 46, PSYCHIC_M
	db 0 ; no more level-up moves

GirafarigEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, DARK_PULSE
	db 1, TACKLE
	db 1, GROWL
	db 4, CONFUSION
	db 10, PURSUIT
	db 14, STOMP
	db 19, CONFUSE_RAY
	db 26, PSYBEAM
	db 32, AGILITY
	db 37, TAKE_DOWN
	db 41, BATON_PASS
	db 46, CRUNCH
	db 52, NASTY_PLOT
	db 57, PSYCHIC_M
	db 0 ; no more level-up moves

PinecoEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 4, BUG_BITE
	db 9, ENDURE
	db 14, RAPID_SPIN
	db 20, SPIKES
	db 27, SELFDESTRUCT
	db 32, IRON_DEENSE
	db 35, PIN_MISSILE
	db 43, TAKE_DOWN
	db 47, DRILL_RUN
	db 0 ; no more level-up moves

ForretressEvosAttacks:               ;final
	db 0 ; no more evolutions
	db 1, TRI_ATTACK
	db 1, TACKLE
	db 1, PROTECT
	db 4, BUG_BITE
	db 9, ENDURE
	db 14, RAPID_SPIN
	db 20, SPIKES
	db 27, SELFDESTRUCT      
	db 30, MIRROR_SHOT   ;evolution move
	db 35, IRON_DEENSE
	db 39, SPIKE_CANNON
	db 43, TAKE_DOWN
	db 47, FLASH_CANNON
	db 54, ZAP_CANNON
	db 0 ; no more level-up moves

DunsparceEvosAttacks:                ;final
	dbbbw EVOLVE_HOLD_LEVEL, DRAGON_SCALE, 32, DUSERPENT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 4, MUD_SLAP
	db 8, SPITE
	db 12, GLARE
	db 16, ANCIENTPOWER
	db 24, SLAM
	db 28, SCREECH
	db 33, PAIN_SPLIT
	db 36, FLAIL
	db 40, DRILL_RUN 
	db 44, COIL
	db 48, TAKE_DOWN
	db 0 ; no more level-up moves

DuserpentEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, DRAGONBREATH
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 4, MUD_SLAP
	db 8, SPITE
	db 12, GLARE
	db 16, ANCIENTPOWER
	db 24, SLAM
	db 28, SCREECH
	db 31, WING_ATTACK   ;evolution move
	db 36, PAIN_SPLIT
	db 40, TWISTER
	db 44, DRILL_RUN 
	db 48, DRAGON_DANCE
	db 54, TAKE_DOWN
	db 0 ; no more level-up moves

GligarEvosAttacks:                   ;final
	dbbbw EVOLVE_HOLD_LEVEL, RAZOR_FANG, 30, GLISCOR
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, HARDEN
	db 4, MUD_SLAP
	db 9, QUICK_ATTACK
	db 12, PURSUIT
	db 16, FURY_CUTTER
	db 23, WING_ATTACK
	db 27, SCREECH
	db 34, SLASH
	db 38, SWORDS_DANCE
	db 42, X_SCISSOR
	db 45, SKY_UPPERCUT
	db 49, EARTHQUAKE
	db 0 ; no more level-up moves

GliscorEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, FIRE_FANG
	db 1, ICE_FANG
	db 1, POISON_STING
	db 1, HARDEN
	db 4, MUD_SLAP
	db 9, QUICK_ATTACK
	db 12, PURSUIT
	db 16, FURY_CUTTER
	db 23, WING_ATTACK
	db 27, SCREECH
	db 29, POISON_FANG   ;evolution move
	db 36, NIGHT_SLASH
	db 42, SWORDS_DANCE
	db 45, X_SCISSOR
	db 49, SKY_UPPERCUT
	db 56, EARTHQUAKE
	db 0 ; no more level-up moves

RinrinEvosAttacks:                   ;final
	dbbbw EVOLVE_ITEM_LEVEL, MOON_STONE, 24, BELLUNA
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 4, TAIL_WHIP
	db 9, FURY_SWIPES
	db 14, BITE
	db 17, CHARM
	db 24, SING
	db 28, ENCORE
	db 32, SLASH
	db 38, SCREECH
	db 42, IRON_TAIL
	db 49, HEAL_BELL
	db 0 ; no more level-up moves
	
BellunaEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, DIRE_CLAW
	db 1, SCRATCH
	db 1, GROWL
	db 4, TAIL_WHIP
	db 9, FURY_SWIPES
	db 14, BITE
	db 17, CHARM
	db 23, MOONLIGHT     ;evolution move
	db 28, SHADOWSTRIKE
	db 32, ENCORE
	db 38, NIGHT_SLASH
	db 42, SCREECH
	db 49, IRON_TAIL
	db 54, HEAL_BELL
	db 0 ; no more level-up moves

SnubbullEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LICK
	db 4, CHARM
	db 7, BITE
	db 13, HOWL
	db 19, HEADBUTT
	db 24, SLAM
	db 27, BULLDOZE
	db 31, ROAR
	db 37, TAKE_DOWN
	db 45, SWAGGER
	db 49, CRUNCH
	db 0 ; no more level-up moves

GranbullEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, ICE_FANG
	db 1, FIRE_FANG
	db 1, TACKLE
	db 1, LICK
	db 4, CHARM
	db 7, BITE
	db 13, HOWL
	db 19, HEADBUTT  
	db 22, SCARY_FACE    ;evolution move
	db 27, SLAM
	db 31, BULLDOZE
	db 37, ROAR
	db 45, TAKE_DOWN
	db 49, SWAGGER
	db 54, CRUNCH
	db 0 ; no more level-up moves

QwilfishEvosAttacks:                 ;final
	dbbbw EVOLVE_HOLD_LEVEL, METAL_COAT, 30, DETOQWIL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 4, POISON_STING
	db 9, WATER_GUN
	db 13, ROLLOUT
	db 19, SPIKES
	db 22, POISON_JAB
	db 27, DOUBLE_TEAM
	db 32, PIN_MISSILE
	db 35, TAKE_DOWN
	db 41, DESTINY_BOND
	db 47, HYDRO_PUMP
	db 0 ; no more level-up moves
	
DetoqwilEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, HYDRO_PUMP
	db 1, TACKLE
	db 1, IRON_DEFENSE
	db 4, POISON_STING
	db 9, WATER_GUN
	db 13, ROLLOUT
	db 19, SPIKES
	db 22, POISON_JAB
	db 27, DOUBLE_TEAM
	db 29, SELFDESTRUCT  ;evolution move
	db 35, SPIKE_CANNON
	db 41, TAKE_DOWN
	db 47, DESTINY_BOND
	db 53, IRON_TAIL
	db 0 ; no more level-up moves

ShuckleEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, HARDEN
	db 4, ROLLOUT
	db 9, ENCORE
	db 16, BUG_BITE
	db 23, SAFEGUARD
	db 27, REST
	db 34, ANCIENTPOWER
	db 38, ACID_SPRAY
	db 45, AMNESIA
	db 53, ROCK_SLIDE
	db 0 ; no more level-up moves

SneaselEvosAttacks:                  ;final
	dbbbw EVOLVE_HOLD_LEVEL, RAZOR_CLAW, 30, WEAVILE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 4, PURSUIT
	db 8, QUICK_ATTACK
	db 12, SHARPEN
	db 16, FURY_SWIPES
	db 21, AGILITY
	db 28, ICE_SHARD
	db 35, METAL_CLAW
	db 38, SLASH
	db 42, SCREECH
	db 47, NIGHT_SLASH
	db 51, RAZOR_WIND
	db 0 ; no more level-up moves
	
WeavileEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, DIRE_CLAW
	db 1, SCRATCH
	db 1, LEER
	db 4, PURSUIT
	db 8, QUICK_ATTACK
	db 12, SHARPEN
	db 16, FURY_SWIPES
	db 21, AGILITY
	db 28, ICE_SHARD
	db 29, ICE_PUNCH     ;evolution move  
	db 38, METAL_CLAW
	db 42, SLASH
	db 47, SCREECH
	db 51, NIGHT_SLASH
	db 56, RAZOR_WIND	
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:                ;final
	dbbw EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 4, LICK
	db 8, FURY_SWIPES
	db 15, PURSUIT
	db 22, SWEET_SCENT
	db 27, SLASH
	db 33, CHARM
	db 36, REST
	db 43, TAKE_DOWN
	db 47, NIGHT_SLASH
	db 0 ; no more level-up moves

UrsaringEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, HOWL
	db 1, SCRATCH
	db 1, GROWL
	db 4, LICK
	db 8, FURY_SWIPES
	db 15, PURSUIT
	db 22, SWEET_SCENT
	db 27, SLASH
	db 29, SHARPEN       ;evolution move
	db 36, SCARY_FACE
	db 43, REST
	db 47, TAKE_DOWN
	db 53, NIGHT_SLASH
	db 58, SUBMISSION
	db 0 ; no more level-up moves

SlugmaEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 38, MAGCARGO
	db 0 ; no more evolutions
	db 1, SMOKESCREEN
	db 1, EMBER
	db 4, HARDEN
	db 10, ROCK_THROW
	db 14, HYPNOSIS
	db 19, SMOG
	db 23, ANCIENTPOWER
	db 28, FLAMETHROWER
	db 32, AMNESIA
	db 37, SLAM
	db 41, RECOVER
	db 46, EARTH_POWER
	db 0 ; no more level-up moves

MagcargoEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, FLAME_WHEEL
	db 1, SMOKESCREEN
	db 1, EMBER
	db 4, DEFENSE_CURL
	db 10, ROLLOUT
	db 14, HYPNOSIS
	db 19, SMOG
	db 23, ANCIENTPOWER
	db 28, FLAMETHROWER
	db 32, AMNESIA
	db 37, SLAM
	db 45, RECOVER
	db 49, ROCK_SLIDE
	db 53, EARTH_POWER
	db 0 ; no more level-up moves

SwinubEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 4, POWDER_SNOW
	db 8, MUD_SLAP
	db 13, ENDURE
	db 16, MUD_SHOT
	db 20, ICY_WIND
	db 25, ANCIENTPOWER
	db 28, TAKE_DOWN
	db 32, ICE_SHARD
	db 37, FLAIL
	db 42, BLIZZARD
	db 49, AMNESIA
	db 0 ; no more level-up moves

PiloswineEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, ICE_FANG
	db 1, PECK
	db 1, HOWL
	db 4, POWDER_SNOW
	db 8, MUD_SLAP
	db 13, ENDURE
	db 16, BULLDOZE
	db 20, ICY_WIND
	db 25, ANCIENTPOWER
	db 28, TAKE_DOWN
	db 32, ICE_SHARD
	db 32, HORN_ATTACK   ;evolution move
	db 40, EARTHQUAKE
	db 48, ICICLE_CRASH
	db 56, AMNESIA
	db 0 ; no more level-up moves

CorsolaEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 4, WATER_GUN
	db 8, ROCK_THROW
	db 14, REFRESH
	db 18, SPIKES
	db 24, BUBBLEBEAM
	db 28, SAFEGUARD
	db 32, ANCIENTPOWER
	db 37, RECOVER
	db 40, SPIKE_CANNON
	db 44, POWER_GEM
	db 48, MIRROR_COAT
	db 53, EARTH_POWER
	db 0 ; no more level-up moves

RemoraidEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, PIN_MISSILE
	db 4, LASER_FOCUS
	db 10, PSYBEAM
	db 14, AURORA_BEAM
	db 18, BUBBLEBEAM
	db 22, CHARGE_BEAM
	db 28, WATER_PULSE
	db 34, ICE_BEAM
	db 40, HYDRO_PUMP
	db 46, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, SPIKE_CANNON
	db 1, WATER_GUN
	db 1, WRAP
	db 4, LASER_FOCUS
	db 10, PSYBEAM
	db 14, AURORA_BEAM
	db 18, BUBBLEBEAM
	db 22, CHARGE_BEAM
	db 24, OCTAZOOKA     ;evolution move
	db 32, WATER_PULSE
	db 38, ICE_BEAM
	db 46, HYDRO_PUMP
	db 52, HYPER_BEAM
	db 0 ; no more level-up moves

DelibirdEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 4, POWDER_SNOW
	db 7, ENCORE
	db 12, PAY_DAY
	db 17, AGILITY
	db 22, PRESENT
	db 27, ICY_WIND
	db 32, DRILL
	db 37, DRILL_PECK
	db 42, HAIL
	db 47, BLIZZARD
	db 52, HAZE
	db 0 ; no more level-up moves

MantykeEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 20, MANTINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SUPERSONIC
	db 4, WATER_GUN
	db 7,  REFRESH
	db 11, BUBBLEBEAM
	db 16, CONFUSE_RAY
	db 25, WATER_PULSE
	db 32, AIR_CUTTER
	db 36, AGILITY
	db 44, TAKE_DOWN
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

MantineEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, PSYBEAM
	db 1, TACKLE
	db 1, SUPERSONIC
	db 4, WATER_GUN
	db 7,  REFRESH
	db 11, BUBBLEBEAM
	db 16, CONFUSE_RAY
	db 19, WING_ATTACK   ;evolution move
	db 25, ROOST
	db 32, WATER_PULSE
	db 36, AIR_CUTTER
	db 44, AGILITY
	db 49, TAKE_DOWN
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves

SkarchicEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 20, SKARMORY
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 4, SAND_ATTACK
	db 9, SWIFT
	db 14, AGILITY
	db 17, AIR_CUTTER
	db 25, SCREECH
	db 29, SLASH
	db 34, WHIRLWIND
	db 39, DRILL_PECK
	db 45, NIGHT_SLASH
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, IRON_DEENSE
	db 1, PECK
	db 1, LEER
	db 4, HARDEN
	db 9, METAL_CLAW
	db 14, AGILITY
	db 17, AIR_CUTTER
	db 19, STEEL_WING    ;evolution move
	db 25, SPIKES
	db 29, SCREECH
	db 34, SLASH
	db 39, WHIRLWIND
	db 45, DRILL_PECK
	db 54, NIGHT_SLASH
	db 0 ; no more level-up moves

HoundourEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 4, HOWL
	db 8, BITE
	db 13, SMOG
	db 16, ROAR
	db 20, FIRE_FANG
	db 25, SNARL
	db 28, SHADOWSTRIKE
	db 32, SCARY_FACE
	db 37, FLAMETHROWER
	db 43, CRUNCH
	db 49, NASTY_PLOT
	db 0 ; no more level-up moves

HoundoomEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, BONEMERANG
	db 1, LEER
	db 1, EMBER
	db 4, HOWL
	db 8, BITE
	db 13, SMOG
	db 16, ROAR
	db 20, FIRE_FANG
	db 28, SNARL
	db 32, SHADOWSTRIKE
	db 37, SCARY_FACE
	db 43, FLAMETHROWER
	db 49, CRUNCH
	db 52, NASTY_PLOT
	db 0 ; no more level-up moves

PhanpyEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, DEFENSE_CURL
	db 7, MUD_SLAP
	db 15, ENDURE
	db 19, ROLLOUT
	db 25, MUD_SHOT
	db 33, SLAM
	db 37, CHARM
	db 42, TAKE_DOWN
	db 46, FLAIL
	db 0 ; no more level-up moves

DonphanEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, FIRE_FANG
	db 1, HORN_ATTACK
	db 1, GROWL
	db 4, DEFENSE_CURL
	db 7, MUD_SLAP
	db 15, ENDURE
	db 19, ROLLOUT
	db 24, RAPID_SPIN    ;evolution move
	db 28, SHARPEN
	db 33, BULLDOZE
	db 37, SLAM
	db 42, SCARY_FACE
	db 46, TAKE_DOWN
	db 54, EARTHQUAKE
	db 0 ; no more level-up moves

StantlerEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, SHINY_STONE, WYRDEER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 4, SAND_ATTACK
	db 10, STOMP
	db 16, HYPNOSIS
	db 21, HORN_ATTACK
	db 27, CONFUSE_RAY
	db 33, HEADBUTT
	db 38, JUMP_KICK
	db 43, CALM_MIND
	db 48, TAKE_DOWN
	db 0 ; no more level-up moves
	
WyrdeerEvosAttacks:                  ;final
	db 1, REFLECT
	db 1, CONFUSION      ;evolution move
	db 1, TACKLE
	db 1, LEER
	db 4, DISABLE
	db 10, STOMP
	db 16, HYPNOSIS
	db 21, HORN_ATTACK
	db 27, CONFUSE_RAY
	db 35, HEADBUTT
	db 43, JUMP_KICK
	db 48, CALM_MIND
	db 53, TAKE_DOWN
	db 57, PSYSTRIKE
	db 0 ; no more level-up moves

SmeargleEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, SKETCH
	db 11, SKETCH
	db 21, SKETCH
	db 31, SKETCH
	db 41, SKETCH
	db 51, SKETCH
	db 61, SKETCH
	db 71, SKETCH
	db 81, SKETCH
	db 91, SKETCH
	db 0 ; no more level-up moves
	
HeracrossEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 4, LOW_KICK
	db 10, ENDURE
	db 15, PIN_MISSILE
	db 20, HORN_ATTACK
	db 25, BULK_UP
	db 30, ROCK_SMASH
	db 35, NIGHT_SLASH
	db 40, COUNTER
	db 45, TAKE_DOWN
	db 50, MEGAHORN
	db 55, SUBMISSION
	db 58, REVERSAL
	db 0 ; no more level-up moves
	
UnownEvosAttacks:                    ;final
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 0 ; no more level-up moves

RaikouEvosAttacks:                   ;final
	db 0 ; no more evolutions
	db 1, ICE_FANG
	db 1, BITE
	db 1, LEER
	db 4, THUNDERSHOCK
	db 10, QUICK_ATTACK
	db 15, HOWL
	db 20, SPARK         ;|
	db 25, REFLECT       ;-  roam
	db 32, CRUNCH        ;- levels
	db 36, AURA_SPHERE   ;/
	db 41, RAIN_DANCE
	db 45, THUNDER
	db 49, CALM_MIND
	db 55, VOLT_TACKLE
	db 59, EXTREMESPEED
	db 0 ; no more level-up moves

EnteiEvosAttacks:                    ;final
	db 0 ; no more evolutions
	db 1, BULLDOZE
	db 1, BITE
	db 1, LEER
	db 4, EMBER
	db 10, STOMP
	db 15, HOWL
	db 20, FIRE_FANG     ;|
	db 25, SWAGGER       ;-  roam
	db 32, CRUNCH        ;- levels
	db 36, METAL_CLAW    ;/
	db 41, SUNNY_DAY
	db 45, FIRE_BLAST
	db 49, CALM_MIND
	db 55, SACRED_FIRE
	db 59, EXTREMESPEED
	db 0 ; no more level-up moves

SuicuneEvosAttacks:                  ;final
	db 0 ; no more evolutions
	db 1, PSYBEAM
	db 1, BITE
	db 1, LEER
	db 4, WATER_GUN
	db 10, GUST
	db 15, RAIN_DANCE
	db 20, BUBBLEBEAM    ;|
	db 25, AURORA_BEAM   ;-  roam
	db 32, REFRESH       ;- levels
	db 36, MIRROR_COAT   ;/
	db 41, RECOVER
	db 45, HYDRO_PUMP
	db 49, CALM_MIND
	db 55, AEROBLAST
	db 59, EXTREMESPEED
	db 0 ; no more level-up moves

LarvitarEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 4, ROCK_THROW
	db 7, HARDEN
	db 11, BITE
	db 15, BULLDOZE
	db 21, SCARY_FACE
	db 25, DARK_PULSE
	db 31, ROCK_SLIDE
	db 35, SCREECH
	db 39, TAKE_DOWN
	db 45, EARTHQUAKE
	db 0 ; no more level-up moves

PupitarEvosAttacks:                  ;final
	dbbw EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 4, ROCK_THROW
	db 7, HARDEN
	db 11, BITE
	db 15, BULLDOZE
	db 21, SCARY_FACE
	db 25, DARK_PULSE
	db 34, ROCK_SLIDE
	db 39, SCREECH
	db 45, TAKE_DOWN
	db 50, EARTHQUAKE
	db 0 ; no more level-up moves

TyranitarEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, ICE_FANG
	db 1, FIRE_FANG
	db 1, SANDSTORM      ;evolution move
	db 1, TACKLE
	db 1, LEER
	db 4, ROCK_THROW
	db 7, SHARPEN
	db 11, BITE
	db 15, BULLDOZE
	db 21, SCARY_FACE
	db 25, DARK_PULSE
	db 34, ROCK_SLIDE
	db 39, SCREECH
	db 45, TAKE_DOWN
	db 50, EARTHQUAKE
	db 59, CRUNCH
	db 65, HYPER_BEAM
	db 0 ; no more level-up moves

LugiaEvosAttacks:                    ;final
	db 0 ; no more evolutions
	db 1, TWISTER
	db 1, REFRESH
	db 4, CONFUSION
	db 7, WHIRLWIND
	db 12, RAIN_DANCE
	db 18, WHIRLPOOL
	db 26, CALM_MIND
	db 32, ANCIENTPOWER
	db 38, HYDRO_PUMP
	db 46, SAFEGUARD     ;|
	db 52, RECOVER       ;-  boss
	db 58, AEROBLAST     ;- levels
	db 66, PSYCHIC_M     ;/
	db 72, SKY_ATTACK
	db 0 ; no more level-up moves

HoOhEvosAttacks:                     ;final
	db 0 ; no more evolutions
	db 1, GUST
	db 1, REFRESH
	db 4, CONFUSION
	db 7, WHIRLWIND
	db 12, SUNNY_DAY
	db 18, MYSTICALFIRE
	db 26, CALM_MIND
	db 32, ANCIENTPOWER
	db 38, FIRE_BLAST
	db 46, SAFEGUARD     ;|
	db 52, RECOVER       ;-  boss
	db 58, SACRED_FIRE   ;- levels
	db 66, PSYCHIC_M     ;/
	db 72, SKY_ATTACK
	db 0 ; no more level-up moves

CelebiEvosAttacks:                   ;final
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, SWEET_SCENT
	db 4, LEECH_SEED
	db 10, SAFEGUARD
	db 17, SILVER_WIND
	db 24, RECOVER
	db 28, ANCIENTPOWER
	db 37, GIGA_DRAIN
	db 46, NASTY_PLOT
	db 55, PSYCHIC_M
	db 64, BATON_PASS
	db 70, PERISH_SONG
	db 0 ; no more level-up moves
	
Vulpix_AlolanEvosAttacks:            ;final
	dbbbw EVOLVE_ITEM_LEVEL, ICE_STONE, 25, NINETALES_ALOLAN
	db 0 ; no more evolutions
	db 1, POWDER_SNOW
	db 1, TAIL_WHIP
	db 4, SPITE
	db 7, QUICK_ATTACK
	db 12, CONFUSE_RAY
	db 15, ICY_WIND
	db 20, SHADOWSTRIKE
	db 24, DISABLE
	db 28, OMINOUS_WIND
	db 34, ICE_BEAM
	db 39, SAFEGUARD
	db 45, BLIZZARD
	db 0 ; no more level-up moves

Ninetales_AlolanEvosAttacks:         ;final
	db 0 ; no more evolutions
	db 1, NASTY_PLOT
	db 1, POWDER_SNOW
	db 1, TAIL_WHIP
	db 4, SPITE
	db 7, QUICK_ATTACK
	db 12, CONFUSE_RAY
	db 15, ICY_WIND
	db 20, SHADOWSTRIKE
	db 24, DISABLE
	db 24, CURSE         ;evolution move
	db 34, OMINOUS_WIND
	db 39, ICE_BEAM
	db 45, SAFEGUARD
	db 53, BLIZZARD
	db 0 ; no more level-up moves

Articuno_GalarianEvosAttacks:        ;final
	db 0 ; no more evolutions
	db 1, HEAL_BELL
	db 1, GUST
	db 1, REFRESH
	db 4, CONFUSION
	db 10, REFLECT
	db 15, AIR_CUTTER
	db 20, AGILITY
	db 25, ANCIENTPOWER
	db 30, FEATHERDANCE
	db 35, PSYBEAM
	db 40, RECOVER
	db 45, ICE_BEAM
	db 50, HYPNOSIS
	db 55, PSYCHIC_M
	db 59, PSYCH_UP
	db 0 ; no more level-up moves

Zapdos_GalarianEvosAttacks:          ;final
	db 0 ; no more evolutions
	db 1, BLAZE_KICK
	db 1, PECK
	db 1, LASER_FOCUS
	db 4, LOW_KICK
	db 10, LIGHT_SCREEN
	db 15, DOUBLE_KICK
	db 20, AGILITY
	db 25, ANCIENTPOWER
	db 30, SCREECH
	db 35, DRILL_PECK
	db 40, PROTECT
	db 45, THUNDERBOLT
	db 50, BULK_UP
	db 55, JUMP_KICK
	db 59, REVERSAL 
	db 0 ; no more level-up moves

Moltres_GalarianEvosAttacks:         ;final
	db 0 ; no more evolutions
	db 1, OMINOUS_WIND
	db 1, PECK
	db 1, LEER
	db 4, PURSUIT
	db 10, SAFEGUARD
	db 15, WING_ATTACK
	db 20, AGILITY
	db 25, ANCIENTPOWER
	db 30, WILL_O_WISP
	db 35, HEX
	db 40, ENDURE
	db 45, FLAMETHROWER
	db 50, NASTY_PLOT
	db 55, DARK_PULSE
	db 59, SKY_ATTACK
	db 0 ; no more level-up moves
	
Bulbasaur_CloneEvosAttacks:          ;final
	dbbw EVOLVE_LEVEL, 16, IVYSAUR_CLONE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, VINE_WHIP
	db 8, LEECH_SEED
	db 13, EFFECT_SPORE
	db 16, GROWTH
	db 24, RAZOR_LEAF
	db 27, SWEET_SCENT
	db 30, TOXIC
	db 33, TAKE_DOWN
	db 36, MOONLIGHT
	db 44, SOLARBEAM
	db 0 ; no more level-up moves

Ivysaur_CloneEvosAttacks:            ;final
	dbbw EVOLVE_LEVEL, 32, VENUSAUR_CLONE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, VINE_WHIP
	db 8, LEECH_SEED
	db 13, EFFECT_SPORE
	db 15, GROWTH
	db 27, RAZOR_LEAF
	db 32, SWEET_SCENT
	db 35, TOXIC
	db 42, TAKE_DOWN
	db 45, MOONLIGHT
	db 50, SOLARBEAM
	db 0 ; no more level-up moves

Venusaur_CloneEvosAttacks:           ;final
	db 0 ; no more evolutions
	db 1, DARK_PULSE
	db 1, TACKLE
	db 1, GROWL
	db 4, VINE_WHIP
	db 8, LEECH_SEED
	db 13, EFFECT_SPORE
	db 15, GROWTH
	db 27, RAZOR_LEAF
	db 31, SWEET_SCENT
	db 31, PETAL_DANCE   ;evolution move
	db 38, TOXIC
	db 44, TAKE_DOWN
	db 47, MOONLIGHT
	db 55, SOLARBEAM
	db 0 ; no more level-up moves

Charmander_CloneEvosAttacks:         ;final
	dbbw EVOLVE_LEVEL, 16, CHARMELEON_CLONE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 4, EMBER
	db 8, SMOKESCREEN
	db 12, METAL_CLAW
	db 16, DRAGON_RAGE
	db 20, SCARY_FACE
	db 24, FIRE_FANG
	db 28, DRAGONBREATH
	db 34, FLAMETHROWER
	db 37, NIGHT_SLASH
	db 43, FIRE_BLAST
	db 0 ; no more level-up moves

Charmeleon_CloneEvosAttacks:         ;final
	dbbw EVOLVE_LEVEL, 36, CHARIZARD_CLONE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 4, EMBER
	db 8, SMOKESCREEN
	db 12, METAL_CLAW
	db 15, DRAGON_RAGE
	db 24, SCARY_FACE
	db 28, FIRE_FANG
	db 34, DRAGONBREATH
	db 37, FLAMETHROWER
	db 43, NIGHT_SLASH
	db 50, FIRE_BLAST
	db 0 ; no more level-up moves

Charizard_CloneEvosAttacks:          ;final
	db 0 ; no more evolutions
	db 1, DRAGON_CLAW
	db 1, SCRATCH
	db 1, GROWL
	db 4, EMBER
	db 8, SMOKESCREEN
	db 12, METAL_CLAW
	db 15, DRAGON_RAGE
	db 24, SCARY_FACE
	db 28, FIRE_FANG
	db 34, DRAGONBREATH
	db 35, WING_ATTACK   ;evolution move
	db 41, FLAMETHROWER
	db 47, NIGHT_SLASH
	db 55, FIRE_BLAST
	db 0 ; no more level-up moves

Squirtle_CloneEvosAttacks:           ;final
	dbbw EVOLVE_LEVEL, 16, WARTORTLE_CLONE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, WATER_GUN
	db 10, HARDEN
	db 16, BITE
	db 19, RAPID_SPIN
	db 24, BUBBLEBEAM
	db 27, PROTECT
	db 31, RAIN_DANCE
	db 35, RAZOR_SHELL
	db 38, IRON_DEFENSE
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

Wartortle_CloneEvosAttacks:          ;final
	dbbw EVOLVE_LEVEL, 36, BLASTOISE_CLONE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, WATER_GUN
	db 10, HARDEN
	db 15, BITE
	db 23, RAPID_SPIN
	db 27, BUBBLEBEAM
	db 31, PROTECT
	db 35, RAIN_DANCE
	db 38, RAZOR_SHELL
	db 44, IRON_DEFENSE
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

Blastoise_CloneEvosAttacks:          ;final
	db 0 ; no more evolutions
	db 1, FLASH_CANNON
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, WATER_GUN
	db 10, HARDEN
	db 15, BITE
	db 23, RAPID_SPIN
	db 27, BUBBLEBEAM
	db 31, PROTECT
	db 35, RAIN_DANCE
	db 35, DARK_PULSE    ;evolution move
	db 42, RAZOR_SHELL
	db 49, IRON_DEFENSE
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

Ekans_DarkEvosAttacks:               ;final
	dbbw EVOLVE_LEVEL, 24, ARBOK_DARK
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 4, BITE
	db 9, REFRESH
	db 12, GLARE   
	db 17, SCREECH
	db 20, POISON_FANG
	db 22, SLAM
	db 27, ACID_SPRAY
	db 32, MUD_SHOT
	db 36, COIL
	db 44, POISON_JAB
	db 48, HAZE
	db 0 ; no more level-up moves

Arbok_DarkEvosAttacks:               ;final
	db 0 ; no more evolutions
	db 1, FIRE_FANG
	db 1, ICE_FANG
	db 1, WRAP
	db 1, LEER
	db 4, BITE
	db 9, REFRESH
	db 12, GLARE   
	db 17, SCREECH
	db 20, POISON_FANG
	db 22, SLAM
	db 23, SCARY_FACE    ;evolution move
	db 32, ACID_SPRAY
	db 36, MUD_SHOT
	db 40, COIL
	db 45, POISON_JAB
	db 49, CRUNCH
	db 55, HAZE
	db 0 ; no more level-up moves

Pichu_SpikyEvosAttacks:              ;final
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU_CLONE
	db 0 ; no more evolutions
	db 1, CHARM
	db 1, THUNDERSHOCK
	db 4, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 12, QUICK_ATTACK
	db 15, NASTY_PLOT
	db 0 ; no more level-up moves

Pikachu_CloneEvosAttacks:            ;final
	dbbw EVOLVE_ITEM, THUNDERSTONE, RAICHU_CLONE
	db 0 ; no more evolutions
	db 1, NASTY_PLOT
	db 1, VOLT_TACKLE
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 4, TAIL_WHIP
	db 10, THUNDER_WAVE
	db 13, QUICK_ATTACK
	db 18, DOUBLE_TEAM
	db 21, SPARK
	db 26, AGILITY
	db 34, SLAM
	db 37, THUNDERBOLT
	db 42, LIGHT_SCREEN
	db 45, THUNDER
	db 0 ; no more level-up moves

Raichu_CloneEvosAttacks:             ;final
	db 0 ; no more evolutions
	db 1, NASTY_PLOT
	db 1, JUMP_KICK
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 4, TAIL_WHIP
	db 10, THUNDER_WAVE
	db 13, QUICK_ATTACK
	db 18, DOUBLE_TEAM
	db 22, SPARK
	db 30, AGILITY
	db 35, SLAM
	db 42, THUNDERBOLT
	db 45, LIGHT_SCREEN
	db 54, VOLT_TACKLE
	db 0 ; no more level-up moves
	
Raichu_AlolanEvosAttacks:            ;final
	db 0 ; no more evolutions
	db 1, NASTY_PLOT
	db 1, CONFUSION      ;evolution move
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 4, TAIL_WHIP
	db 10, THUNDER_WAVE
	db 13, QUICK_ATTACK
	db 18, DOUBLE_TEAM
	db 22, SPARK
	db 30, AGILITY
	db 35, SURF
	db 42, THUNDERBOLT
	db 45, LIGHT_SCREEN
	db 54, PSYCHIC_M
	db 0 ; no more level-up moves

Sandshrew_AlolanEvosAttacks:         ;final
	dbbw EVOLVE_LEVEL, 22, SANDSLASH_ALOLAN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 4, POWDER_SNOW
	db 9, POISON_STING
	db 11, ROLLOUT
	db 14, METAL_CLAW
	db 17, ICE_PUNCH
	db 20, RAPID_SPIN
	db 24, SWIFT
	db 29, IRON_DEFENSE
	db 35, HAIL
	db 42, ICICLE_CRASH
	db 0 ; no more level-up moves

Sandslash_AlolanEvosAttacks:         ;final
	db 0 ; no more evolutions
	db 0 ; no more evolutions
	db 1, DRILL_RUN
	db 1, SCRATCH
	db 1, SHARPEN
	db 4, POWDER_SNOW
	db 9, POISON_STING
	db 11, ROLLOUT
	db 14, METAL_CLAW
	db 17, ICE_PUNCH
	db 20, RAPID_SPIN
	db 21, SLASH         ;evolution move
	db 24, SPIKE_CANNON
	db 29, SWORDS_DANCE
	db 35, HAIL
	db 53, ICICLE_CRASH
	db 0 ; no more level-up moves

Growlithe_HisuianEvosAttacks:        ;final
	dbbbw EVOLVE_ITEM_LEVEL, FIRE_STONE, 25, ARCANINE_HISUIAN
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LEER
	db 4, HOWL
	db 8, BITE
	db 14, FLAME_WHEEL     
	db 19, REVERSAL
	db 23, FIRE_FANG
	db 28, AGILITY
	db 34, ROCK_SLIDE
	db 39, CRUNCH
	db 45, TAKE_DOWN
	db 0 ; no more level-up moves

Arcanine_HisuianEvosAttacks:         ;final
	db 0 ; no more evolutions
	db 1, ACCELEROCK
	db 1, EMBER
	db 1, LEER
	db 4, ROAR
	db 8, BITE
	db 14, FLAME_WHEEL     
	db 19, REVERSAL
	db 23, FIRE_FANG
	db 24, EXTREMESPEED  ;evolution move
	db 34, AGILITY
	db 39, ROCK_SLIDE
	db 45, CRUNCH
	db 48, TAKE_DOWN
	db 54, SACRED_FIRE
	db 0 ; no more level-up moves
	
Voltorb_HisuianEvosAttacks:          ;final
	dbbw EVOLVE_LEVEL, 30, ELECTRODE_HISUIAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, EFFECT_SPORE
	db 4, THUNDERSHOCK
	db 8, SONICBOOM
	db 12, SPARK
	db 15, ROLLOUT
	db 19, SCREECH
	db 26, CHARGE_BEAM
	db 29, SELFDESTRUCT
	db 33, ENERGY_BALL
	db 36, LIGHT_SCREEN
	db 43, THUNDERBOLT
	db 47, MIRROR_COAT
	db 0 ; no more level-up moves

Electrode_HisuianEvosAttacks:        ;final
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, TACKLE
	db 1, EFFECT_SPORE
	db 4, THUNDERSHOCK
	db 8, SONICBOOM
	db 12, SPARK
	db 15, ROLLOUT
	db 19, SCREECH
	db 26, CHARGE_BEAM
	db 29, SELFDESTRUCT
	db 36, ENERGY_BALL
	db 43, LIGHT_SCREEN
	db 47, THUNDERBOLT
	db 56, MIRROR_COAT
	db 0 ; no more level-up moves
	
Marowak_AlolanEvosAttacks:           ;final
	db 0 ; no more evolutions
	db 1, PERISH_SONG
	db 1, POUND
	db 1, GROWL
	db 4, LEER
	db 7, BONE_CLUB
	db 13, HEADBUTT
	db 17, LASER_FOCUS
	db 23, ECHOED_VOICE
	db 27, SHADOWSTRIKE  ;evolution move
	db 33, FLAME_WHEEL
	db 37, WILL_O_WISP
	db 43, TAKE_DOWN
	db 47, BONEMERANG
	db 53, FALSE_SWIPE
	db 0 ; no more level-up moves
	
Typhlosion_HisuianEvosAttacks:       ;final
	db 0 ; no more evolutions
	db 1, CALM_MIND
	db 1, TACKLE
	db 1, LEER
	db 4, EMBER
	db 8, SMOKESCREEN
	db 12, QUICK_ATTACK
	db 14, DEFENSE_CURL
	db 22, FLAME_WHEEL
	db 25, WILL_O_WISP
	db 33, SWIFT
	db 35, HEX           ;evolution move
	db 42, FLAMETHROWER
	db 45, ROLLOUT
	db 49, TAKE_DOWN
	db 55, FIRE_BLAST
	db 0 ; no more level-up moves
	
Arbok_KantoEvosAttacks:              ;final
	db 0 ; no more evolutions
	db 1, FIRE_FANG
	db 1, ICE_FANG
	db 1, WRAP
	db 1, LEER
	db 4, BITE
	db 9, REFRESH
	db 12, GLARE   
	db 17, SCREECH
	db 20, POISON_FANG
	db 22, SLAM
	db 23, SCARY_FACE    ;evolution move
	db 32, ACID_SPRAY
	db 36, MUD_SHOT
	db 40, COIL
	db 45, POISON_JAB
	db 49, CRUNCH
	db 55, HAZE
	db 0 ; no more level-up moves
	
Arbok_SeviiEvosAttacks:              ;final
	db 0 ; no more evolutions
	db 1, FIRE_FANG
	db 1, ICE_FANG
	db 1, WRAP
	db 1, LEER
	db 4, BITE
	db 9, REFRESH
	db 12, GLARE   
	db 17, SCREECH
	db 20, POISON_FANG
	db 22, SLAM
	db 23, SCARY_FACE    ;evolution move
	db 32, DRAGONBREATH
	db 36, MUD_SHOT
	db 40, COIL
	db 45, POISON_JAB
	db 49, CRUNCH
	db 55, HAZE
	db 0 ; no more level-up moves
	
Wooper_PaldeanEvosAttacks:           ;final
	dbbw EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, TAIL_WHIP
	db 4, MUD_SLAP
	db 9, SPIKES
	db 15, MUD_SHOT
	db 19, ACID_SPRAY
	db 23, SLAM
	db 29, REST
	db 33, POISON_JAB
	db 37, EARTHQUAKE
	db 45, TOXIC
	db 0 ; no more level-up moves

ClodsireEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, BULLDOZE
	db 1, POISON_STING
	db 1, TAIL_WHIP
	db 4, MUD_SLAP
	db 9, SPIKES
	db 15, MUD_SHOT
	db 19, ACID_SPRAY
	db 19, AMNESIA       ;evolution move
	db 25, SLAM
	db 33, REST
	db 37, POISON_JAB
	db 43, MEGAHORN
	db 47, EARTHQUAKE
	db 51, TOXIC
	db 0 ; no more level-up moves
	
StarlyEvosAttacks:                   ;final
	dbbw EVOLVE_LEVEL, 14, STARAVIA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, QUICK_ATTACK
	db 9, ENDURE
	db 13, WING_ATTACK
	db 17, DOUBLE_TEAM
	db 21, WHIRLWIND
	db 25, FEATHERDANCE
	db 29, TAKE_DOWN
	db 33, AGILITY
	db 37, SKY_ATTACK
	db 41, REVERSAL
	db 0 ; no more level-up moves

StaraviaEvosAttacks:                 ;final
	dbbw EVOLVE_LEVEL, 34, STARAPTOR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, QUICK_ATTACK
	db 9, ENDURE
	db 13, WING_ATTACK
	db 19, DOUBLE_TEAM
	db 25, WHIRLWIND
	db 28, SWAGGER
	db 31, TAKE_DOWN
	db 37, AGILITY
	db 43, SKY_ATTACK
	db 48, REVERSAL
	db 0 ; no more level-up moves

StaraptorEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, BULK_UP
	db 1, TACKLE
	db 1, GROWL
	db 4, QUICK_ATTACK
	db 9, ENDURE
	db 13, WING_ATTACK
	db 19, DOUBLE_TEAM
	db 25, WHIRLWIND
	db 28, SWAGGER 
	db 31, TAKE_DOWN
	db 33, SUBMISSION    ;evolution move
	db 41, AGILITY
	db 48, SKY_ATTACK
	db 55, REVERSAL
	db 0 ; no more level-up moves
	
SuicudraxEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, FIRE_FANG
	db 1, BITE
	db 1, LEER
	db 4, EMBER
	db 9, TWISTER
	db 15, ROAR
	db 20, WATER_PULSE
	db 25, DRAGONBREATH
	db 32, SCARY_FACE
	db 36, FLAMETHROWER
	db 41, DRAGON_CLAW
	db 45, HYDRO_PUMP
	db 49, DRAGON_DANCE
	db 55, OUTRAGE
	db 59, EXTREMESPEED
	db 0 ; no more level-up moves
	
RaiensuiEvosAttacks:                 ;final
	db 0 ; no more evolutions
	db 1, AEROBLAST
	db 1, SACRED_FIRE
	db 1, BITE
	db 1, HOWL
	db 4, EMBER
	db 9, SWAGGER
	db 13, SPARK
	db 19, REFLECT
	db 25, RECOVER
	db 32, WATER_PULSE   ;adjust next 4 for boss level
	db 36, TRI_ATTACK
	db 41, FLAMETHROWER
	db 47, VOLT_TACKLE
	db 54, NASTY_PLOT
	db 65, SHADOW_RUSH
	db 71, EXTREMESPEED
	db 0 ; no more level-up moves
	
Omastar_FossilEvosAttacks:           ;changed to ketsuban/ghost missingno
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 5, SPITE
	db 11, ICY_WIND
	db 17, CURSE
	db 24, NIGHT_SHADE
	db 27, SUBSTITUTE
	db 34, MEGA_PUNCH
	db 40, MEAN_LOOK
	db 45, TRI_ATTACK
	db 51, SHADOWSTRIKE
	db 54, DESTINY_BOND
	db 60, SKY_ATTACK
	db 0 ; no more level-up moves
	
Kabutops_FossilEvosAttacks:          ;final
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, LEECH_LIFE
	db 7, CURSE
	db 10, AQUA_JET
	db 13, ENDURE
	db 16, MUD_SHOT
	db 21, BUG_BITE
	db 26, SCREECH
	db 31, NIGHT_SHADE
	db 35, SLASH
	db 39, SWORDS_DANCE
	db 45, RAZOR_SHELL
	db 52, SHADOWSTRIKE
	db 0 ; no more level-up moves
	
Aerodactyl_FossilEvosAttacks:        ;final
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 4, SUPERSONIC
	db 9, CURSE
	db 17, SCARY_FACE
	db 25, NIGHT_SHADE
	db 29, WING_ATTACK
	db 33, AGILITY
	db 38, DRAGONBREATH
	db 45, SHADOWSTRIKE
	db 49, TAKE_DOWN
	db 53, ROCK_SLIDE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves
	
MissingnoEvosAttacks:                ;final
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, WATER_GUN
	db 5, SKY_ATTACK
	db 50, TRI_ATTACK
	db 0 ; no more level-up moves
	
Charizard_MEvosAttacks:              ;final
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 4, EMBER
	db 8, SMOKESCREEN
	db 12, METAL_CLAW
	db 15, SLAM
	db 24, SCARY_FACE
	db 28, FIRE_FANG
	db 32, AURORA_BEAM
	db 36, WING_ATTACK
	db 41, FLAMETHROWER
	db 47, SLASH
	db 55, FIRE_BLAST
	db 59, HORN_DRILL
	db 0 ; no more level-up moves
