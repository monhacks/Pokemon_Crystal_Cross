INCLUDE "constants.asm"


SECTION "Egg Moves", ROMX

; All instances of Charm, Steel Wing, Sweet Scent, and Lovely Kiss were
; removed from egg move lists in Crystal.
; Sweet Scent and Steel Wing were redundant since they're TMs, and
; Charm and Lovely Kiss were unobtainable.

; Staryu's egg moves were removed in Crystal, because Staryu is genderless
; and can only breed with Ditto.

INCLUDE "data/pokemon/egg_move_pointers.asm"

BulbasaurEggMoves:   ;x
	db AMNESIA
	db CHARM
	db ENDURE
	db ACID_SPRAY
	db SLAM
	db SAFEGUARD
	db PETAL_DANCE
	db ECHOED_VOICE
	db SING
	db ANCIENTPOWER
	db -1 ; end

CharmanderEggMoves:   ;x
	db BELLY_DRUM
	db ANCIENTPOWER
	db BITE
	db DRAGON_DANCE
	db CRUNCH
	db FURY_SWIPES
	db POWERUPPUNCH
	db AIR_CUTTER
	db ECHOED_VOICE
	db SHARPEN
	db POISON_FANG
	db -1 ; end

SquirtleEggMoves:   ;x
	db MIRROR_COAT
	db HAZE
	db REFRESH
	db CONFUSION
	db POWDER_SNOW
	db ROLLOUT
	db POWERUPPUNCH
	db FLAIL
	db ECHOED_VOICE
	db AQUA_JET
	db AURORA_BEAM
	db ICE_FANG
	db ANCIENTPOWER
	db -1 ; end
	
CaterpieEggMoves:   ;x
	db ACID_SPRAY
	db CONFUSION
	db LEECH_LIFE
	db MEGA_DRAIN
	db -1
	
WeedleEggMoves:   ;x
	db ACID_SPRAY
	db LEECH_LIFE
	db MEGAHORN
	db SHARPEN
	db -1

PidgeyEggMoves:   ;x
	db PURSUIT
	db TAKE_DOWN
	db DRILL_PECK
	db LEER
	db REFRESH
	db MUD_SLAP
	db OMINOUS_WIND
	db FEATHERDANCE
	db SKY_ATTACK
	db -1 ; end

RattataEggMoves:   ;x
	db SCREECH
	db FLAME_WHEEL
	db REVERSAL
	db SPARK
	db LEER
	db POISON_FANG
	db FIRE_FANG
	db ICE_FANG
	db BUBBLEBEAM
	db -1 ; end

SpearowEggMoves:   ;x
	db FALSE_SWIPE
	db SCARY_FACE
	db QUICK_ATTACK
	db TRI_ATTACK
	db WHIRLWIND
	db FEATHERDANCE
	db SONICBOOM
	db SUPERSONIC
	db BATON_PASS
	db AIR_CUTTER
	db ECHOED_VOICE
	db OMINOUS_WIND
	db -1 ; end

EkansEggMoves:   ;x
	db PURSUIT
	db SPITE
	db CRUNCH
	db DISABLE
	db DRAGON_DANCE
	db ICE_FANG
	db DRAGON_RAGE
	db BULLDOZE
	db -1 ; end
	
PichuEggMoves:   ;x
	db REVERSAL
	db PRESENT
	db ENCORE
	db ENDURE
	db PETAL_DANCE
	db SCARY_FACE
	db SING
	db METRONOME
	db POWERUPPUNCH
	db FLAIL
	db ECHOED_VOICE
	db REFRESH
	db DOUBLE_KICK
	db -1 ; end

SandshrewEggMoves:   ;x
	db SAFEGUARD
	db METAL_CLAW
	db MUD_SHOT
	db ENDURE
	db SUPER_FANG
	db SLAM
	db NIGHT_SLASH
	db X_SCISSOR
	db MUD_SLAP
	db SHARPEN
	db DIRE_CLAW
	db LEECH_LIFE
	db FURY_SWIPES
	db -1 ; end

NidoranFEggMoves:   ;x
	db SUPERSONIC
	db DISABLE
	db TAKE_DOWN
	db ENDURE
	db PURSUIT
	db MOONLIGHT
	db POWDER_SNOW
	db AMNESIA
	db SUPER_FANG
	db ECHOED_VOICE
	db -1 ; end

NidoranMEggMoves:   ;x
	db SUPERSONIC
	db DISABLE
	db CONFUSION
	db AMNESIA
	db POISON_FANG
	db PURSUIT
	db SUPER_FANG
	db CHARM
	db FELL_STINGER
	db ECHOED_VOICE
	db SLASH
	db -1 ; end
	
ClefairyEggMoves:   ;x
	db PRESENT
	db AMNESIA
	db BELLY_DRUM
	db SPLASH
	db RECOVER
	db MIRROR_COAT
	db PETAL_DANCE
	db PSYCH_UP
	db GROWL
	db ECHOED_VOICE
	db POWERUPPUNCH
	db MYSTICALFIRE
	db BUBBLEBEAM
	db -1 ; end

VulpixEggMoves:   ;x
	db PURSUIT
	db HYPNOSIS
	db HOWL
	db CHARM
	db DESTINY_BOND
	db DISABLE
	db LICK
	db CONFUSION
	db FIRE_FANG
	db OMINOUS_WIND
	db FLAIL
	db FLAME_WHEEL
	db ENCORE
	db -1 ; end
	
JigglypuffEggMoves:   ;x
	db PERISH_SONG
	db PRESENT
	db MOONLIGHT
	db PETAL_DANCE
	db SPARK
	db PSYCH_UP
	db POWERUPPUNCH
	db BUBBLEBEAM
	db SAFEGUARD
	db -1 ; end

ZubatEggMoves:   ;x
	db QUICK_ATTACK
	db PURSUIT
	db GUST
	db WHIRLWIND
	db HYPNOSIS
	db MIRROR_MOVE
	db MEGA_DRAIN
	db OMINOUS_WIND
	db FIRE_FANG
	db ICE_FANG
	db NASTY_PLOT
	db HEX
	db -1 ; end

OddishEggMoves:   ;x
	db RAZOR_LEAF
	db SMOG
	db CHARM
	db SYNTHESIS
	db ENDURE
	db FLAIL
	db -1 ; end

ParasEggMoves:   ;x
	db SCREECH
	db PSYBEAM
	db PURSUIT
	db METAL_CLAW
	db AGILITY
	db ACID_SPRAY
	db SWEET_SCENT
	db FLAIL
	db BUG_BITE
	db FELL_STINGER
	db SYNTHESIS
	db SHARPEN
	db LEECH_SEED
	db ENDURE
	db -1 ; end

VenonatEggMoves:   ;x
	db BATON_PASS
	db SCREECH
	db STRING_SHOT
	db HYPNOSIS
	db TELEPORT
	db POISON_STING
	db ACID_SPRAY
	db SWEET_SCENT
	db REFRESH
	db AGILITY
	db LEECH_LIFE
	db -1 ; end

DiglettEggMoves:   ;x
	db SCREECH
	db ANCIENTPOWER
	db REVERSAL
	db ENDURE
	db ROCK_THROW
	db FALSE_SWIPE
	db METAL_CLAW
	db CHARM
	db NIGHT_SLASH
	db ECHOED_VOICE
	db SHARPEN
	db MUD_SHOT
	db AGILITY
	db -1 ; end

MeowthEggMoves:   ;x
	db SPITE
	db HYPNOSIS
	db AMNESIA
	db SING
	db PSYCHO_CUT
	db SCARY_FACE
	db PERISH_SONG
	db PSYCH_UP
	db ECHOED_VOICE
	db DIRE_CLAW
	db FLAIL
	db PURSUIT
	db METAL_CLAW
	db ICE_FANG
	db -1 ; end

PsyduckEggMoves:   ;x
	db HYPNOSIS
	db MUD_SHOT
	db CONFUSE_RAY
	db ENCORE
	db TRI_ATTACK
	db CHARM
	db REFRESH
	db POWERUPPUNCH
	db VACUUM_WAVE
	db SHARPEN
	db SMOG
	db BUBBLEBEAM
	db AQUA_JET
	db -1 ; end

MankeyEggMoves:   ;x
	db REVERSAL
	db ENCORE
	db SLAM
	db BELLY_DRUM
	db PSYCH_UP
	db VACUUM_WAVE
	db SCARY_FACE
	db POWERUPPUNCH
	db BULK_UP
	db BULLDOZE
	db NIGHT_SLASH
	db -1 ; end

GrowlitheEggMoves:   ;x
	db SLAM
	db SAFEGUARD
	db MORNING_SUN
	db DOUBLE_KICK
	db ENDURE
	db CHARM
	db GROWL
	db SWAGGER
	db DRAGON_RAGE
	db -1 ; end

PoliwagEggMoves:   ;x
	db REFRESH
	db SPLASH
	db HAZE
	db ENCORE
	db DEFENSE_CURL
	db CONFUSION
	db GROWTH
	db POWDER_SNOW
	db AMNESIA
	db ECHOED_VOICE
	db ENDURE
	db AURORA_BEAM
	db -1 ; end

AbraEggMoves:   ;x
	db ENCORE
	db METRONOME
	db MIRROR_COAT
	db HYPNOSIS
	db VACUUM_WAVE
	db COSMIC_POWER
	db SAFEGUARD
	db -1 ; end

MachopEggMoves:   ;x
	db ENCORE
	db BULLET_PUNCH
	db SLAM
	db SKY_UPPERCUT
	db BULLDOZE
	db STOMP
	db SWAGGER
	db -1 ; end

BellsproutEggMoves:   ;x
	db ENCORE
	db MORNING_SUN
	db LEECH_LIFE
	db LEECH_SEED
	db SMOG
	db SWAGGER
	db MEGA_DRAIN
	db -1 ; end

TentacoolEggMoves:   ;x
	db AURORA_BEAM
	db MIRROR_COAT
	db RAPID_SPIN
	db SAFEGUARD
	db CONFUSE_RAY
	db PURSUIT
	db ACID_SPRAY
	db -1 ; end

GeodudeEggMoves:   ;x
	db HARDEN
	db IRON_DEFENSE
	db POWERUPPUNCH
	db FLAIL
	db SHARPEN
	db BULK_UP
	db ENDURE
	db SWAGGER
	db -1 ; end

PonytaEggMoves:   ;x
	db HYPNOSIS
	db CHARM
	db QUICK_ATTACK
	db MORNING_SUN
	db LOW_KICK
	db LICK
	db ECHOED_VOICE
	db BATON_PASS
	db JUMP_KICK
	db SWAGGER
	db -1 ; end

SlowpokeEggMoves:   ;x
	db SAFEGUARD
	db BELLY_DRUM
	db STOMP
	db MUD_SHOT
	db SLAM
	db ECHOED_VOICE
	db ACID_SPRAY
	db BULLDOZE
	db BUBBLEBEAM
	db METRONOME
	db -1 ; end

FarfetchDEggMoves:   ;x
	db MIRROR_MOVE
	db GUST
	db QUICK_ATTACK
	db FEATHERDANCE
	db PSYCH_UP
	db BONE_CLUB
	db REVERSAL
	db BATON_PASS
	db FLAIL
	db NIGHT_SLASH
	db OMINOUS_WIND
	db RAZOR_LEAF
	db MUD_SLAP
	db -1 ; end

DoduoEggMoves:   ;x
	db HAZE
	db MIRROR_MOVE
	db SKY_ATTACK
	db LOW_KICK
	db BATON_PASS
	db MUD_SLAP
	db EXTREMESPEED
	db FLAIL
	db AIR_CUTTER
	db FEATHERDANCE
	db JUMP_KICK
	db -1 ; end

SeelEggMoves:   ;x
	db LICK
	db PERISH_SONG
	db DISABLE
	db PECK
	db SLAM
	db HORN_DRILL
	db PURSUIT
	db MILK_DRINK
	db DRILL_RUN
	db ECHOED_VOICE
	db AQUA_JET
	db DRILL_RUN
	db HORN_ATTACK
	db BUBBLEBEAM
	db -1 ; end

GrimerEggMoves:   ;x
	db HAZE
	db MEAN_LOOK
	db LICK
	db SLAM
	db SELFDESTRUCT
	db SCARY_FACE
	db SPITE
	db POWERUPPUNCH
	db PURSUIT
	db -1 ; end

ShellderEggMoves:   ;x
	db TAKE_DOWN
	db RAPID_SPIN
	db SCREECH
	db MUD_SHOT
	db ENDURE
	db SAFEGUARD
	db LEER
	db REFRESH
	db CONFUSE_RAY
	db SELFDESTRUCT
	db -1 ; end

GastlyEggMoves:   ;x
	db PERISH_SONG
	db HAZE
	db DISABLE
	db SCARY_FACE
	db CONFUSION
	db PSYCH_UP
	db PURSUIT
	db SELFDESTRUCT
	db OMINOUS_WIND
	db HEX
	db -1 ; end

OnixEggMoves:   ;x
	db DEFENSE_CURL
	db ENDURE
	db DRAGON_DANCE
	db MIRROR_COAT
	db IRON_DEFENSE
	db ROLLOUT
	db SELFDESTRUCT
	db SHARPEN
	db FLAIL
	db COIL
	db MIRROR_SHOT
	db -1 ; end

DrowzeeEggMoves:   ;x
	db LOW_KICK
	db AMNESIA
	db BATON_PASS
	db POWERUPPUNCH
	db ECHOED_VOICE
	db METRONOME
	db HAZE
	db SWAGGER
	db -1 ; end

KrabbyEggMoves:   ;x
	db HAZE
	db AMNESIA
	db ANCIENTPOWER
	db AGILITY
	db ENDURE
	db REVERSAL
	db CONFUSION
	db IRON_DEFENSE
	db LEER
	db SLASH
	db X_SCISSOR
	db -1 ; end

ExeggcuteEggMoves:   ;x
	db MOONLIGHT
	db ANCIENTPOWER
	db ENDURE
	db PSYCH_UP
	db REFRESH
	db PSYBEAM
	db -1 ; end

CuboneEggMoves:   ;x
	db ANCIENTPOWER
	db BELLY_DRUM
	db PERISH_SONG
	db DOUBLE_KICK
	db ENDURE
	db LOW_KICK
	db HEX
	db CHARM
	db SKY_UPPERCUT
	db POWERUPPUNCH
	db IRON_DEFENSE
	db HEX
	db -1 ; end
	
TyrogueEggMoves:   ;x
	db RAPID_SPIN
	db LOW_KICK
	db REVERSAL
	db POWERUPPUNCH
	db BULK_UP
	db BULLET_PUNCH
	db BULLDOZE
	db ENDURE
	db SWAGGER
	db -1 ; end

LickitungEggMoves:   ;x
	db ANCIENTPOWER
	db MUD_SHOT
	db TAKE_DOWN
	db POUND
	db POWERUPPUNCH
	db AMNESIA
	db -1 ; end

KoffingEggMoves:   ;x
	db SCREECH
	db PSYBEAM
	db SPITE
	db SUPERSONIC
	db PURSUIT
	db ROLLOUT
	db -1 ; end

RhyhornEggMoves:   ;x
	db CRUNCH
	db REVERSAL
	db PURSUIT
	db ENDURE
	db SLAM
	db ICE_FANG
	db SCARY_FACE
	db FIRE_FANG
	db STOMP
	db -1 ; end

HappinyEggMoves:   ;x
	db PRESENT
	db METRONOME
	db ENDURE
	db SPARK
	db PSYCH_UP
	db MOONLIGHT
	db MUD_SHOT
	db BUBBLEBEAM
	db SAFEGUARD
	db -1 ; end

KangaskidEggMoves:   ;x
	db SAFEGUARD
	db DISABLE
	db DOUBLE_KICK
	db ECHOED_VOICE
	db SING
	db BULLDOZE
	db LOW_KICK
	db SWAGGER
	db -1 ; end

HorseaEggMoves:   ;x
	db AURORA_BEAM
	db DISABLE
	db AQUA_JET
	db DRAGON_RAGE
	db MUD_SHOT
	db HAZE
	db CONFUSE_RAY
	db POWDER_SNOW
	db SMOG
	db FLAIL
	db -1 ; end

GoldeenEggMoves:   ;x
	db PSYBEAM
	db HAZE
	db HYDRO_PUMP
	db MUD_SHOT
	db SLAM
	db BULLDOZE
	db AQUA_JET
	db SPLASH
	db DRAGON_DANCE
	db BUBBLEBEAM
	db -1 ; end
	
StaryuEggMoves:   ;x
	db AURORA_BEAM
	db SUPERSONIC
	db SAFEGUARD
	db HAZE
	db CONFUSION
	db ANCIENTPOWER
	db ICE_SHARD
	db PSYCH_UP
	db TRI_ATTACK
	db -1

ScytherEggMoves:   ;x
	db SAFEGUARD
	db BATON_PASS
	db REVERSAL
	db ENDURE
	db SILVER_WIND
	db MORNING_SUN
	db TAKE_DOWN
	db AIR_CUTTER
	db METAL_CLAW
	db BUG_BITE
	db VACUUM_WAVE
	db OMINOUS_WIND
	db BUG_BUZZ
	db -1 ; end
	
ElekidEggMoves:   ;x
	db ENDURE
	db PURSUIT
	db POWERUPPUNCH
	db BATON_PASS
	db SPARK
	db REVERSAL
	db SWAGGER
	db -1 ; end

MagbyEggMoves:   ;x
	db SCREECH
	db BELLY_DRUM
	db LOW_KICK
	db ENDURE
	db POWERUPPUNCH
	db FLAME_WHEEL
	db SWAGGER
	db -1 ; end

PinsirEggMoves:   ;x
	db ENDURE
	db SLAM
	db ROCK_THROW
	db SKY_UPPERCUT
	db REVERSAL
	db IRON_DEFENSE
	db MEGAHORN
	db BULK_UP
	db FLAIL
	db BULLDOZE
	db FALSE_SWIPE
	db SWAGGER
	db -1 ; end
	
MoobyEggMoves:   ;x
	db ENDURE
	db REVERSAL
	db QUICK_ATTACK
	db SPARK
	db BULLDOZE
	db DOUBLE_KICK
	db REFRESH
	db BULK_UP
	db ECHOED_VOICE
	db BLAZE_KICK
	db SLAM
	db -1 ; end
	
MagikarpEggMoves:   ;x
	db HYDRO_PUMP
	db DRAGON_RAGE
	db REVERSAL
	db TWISTER
	db AQUA_JET
	db -1 ; end

NessiEggMoves:   ;x
	db BITE
	db CONFUSION
	db DRAGON_DANCE
	db ANCIENTPOWER
	db HYPNOSIS
	db PURSUIT
	db WATER_GUN
	db BULLDOZE
	db ECHOED_VOICE
	db BUBBLEBEAM
	db DRAGON_RAGE
	db -1 ; end

EeveeEggMoves:   ;x
	db ENDURE
	db SLAM
	db REVERSAL
	db PAY_DAY
	db SAFEGUARD
	db SING
	db FLAIL
	db ECHOED_VOICE
	db DOUBLE_KICK
	db MILK_DRINK
	db -1 ; end

OmanyteEggMoves:   ;x
	db AURORA_BEAM
	db SLAM
	db SUPERSONIC
	db ROCK_THROW
	db ENDURE
	db RAPID_SPIN
	db SHARPEN
	db DEFENSE_CURL
	db -1 ; end

KabutoEggMoves:   ;x
	db BUBBLEBEAM
	db AURORA_BEAM
	db RAPID_SPIN
	db ROCK_THROW
	db CONFUSE_RAY
	db HAZE
	db IRON_DEFENSE
	db HARDEN
	db CONFUSION
	db LEECH_LIFE
	db FLAIL
	db SHARPEN
	db TAKE_DOWN
	db -1 ; end

AerodonEggMoves:   ;x
	db WHIRLWIND
	db PURSUIT
	db ROCK_THROW
	db SKY_ATTACK
	db TRI_ATTACK
	db EMBER
	db DRAGON_DANCE
	db ACCELEROCK
	db SHARPEN
	db DRAGON_RAGE
	db GLARE
	db -1 ; end

MunchlaxEggMoves:   ;x
	db SPLASH
	db PRESENT
	db CHARM
	db WHIRLWIND
	db PURSUIT
	db POWERUPPUNCH
	db ROLLOUT
	db MUD_SLAP
	db -1 ; end

DratiniEggMoves:   ;x
	db HAZE
	db SUPERSONIC
	db HYDRO_PUMP
	db EXTREMESPEED
	db MOONLIGHT
	db PSYBEAM
	db PURSUIT
	db COIL
	db AQUA_JET
	db REFRESH
	db MYSTICALFIRE
	db -1 ; end

ChikoritaEggMoves:   ;x
	db VINE_WHIP
	db LEECH_SEED
	db ANCIENTPOWER
	db DRAGON_DANCE
	db SING
	db TAKE_DOWN
	db SWEET_SCENT
	db MORNING_SUN
	db FLAIL
	db ECHOED_VOICE
	db LEAF_BLADE
	db REFRESH
	db EFFECT_SPORE
	db -1 ; end

CyndaquilEggMoves:   ;x
	db FURY_SWIPES
	db REVERSAL
	db ANCIENTPOWER
	db DOUBLE_KICK
	db HOWL
	db METAL_CLAW
	db CONFUSION
	db ENDURE
	db SWAGGER
	db -1 ; end

TotodileEggMoves:   ;x
	db ANCIENTPOWER
	db TAKE_DOWN
	db METAL_CLAW
	db DRAGON_DANCE
	db MUD_SHOT
	db SLAM
	db ENDURE
	db POWERUPPUNCH
	db FLAIL
	db AQUA_JET
	db -1 ; end

SentretEggMoves:   ;x
	db SLASH
	db REVERSAL
	db CONFUSION
	db CHARM
	db SUPER_FANG
	db TACKLE
	db POWERUPPUNCH
	db PURSUIT
	db LASER_FOCUS
	db ROLLOUT
	db ECHOED_VOICE
	db -1 ; end

HoothootEggMoves:   ;x
	db MIRROR_MOVE
	db SUPERSONIC
	db PURSUIT
	db WHIRLWIND
	db SKY_ATTACK
	db PSYBEAM
	db FEATHERDANCE
	db AGILITY
	db RECOVER
	db OMINOUS_WIND
	db TACKLE
	db REFRESH
	db SILVER_WIND
	db MEAN_LOOK
	db -1 ; end

LedybaEggMoves:   ;x
	db PSYBEAM
	db LEECH_LIFE
	db HYPNOSIS
	db SCREECH
	db ENDURE
	db ROLLOUT
	db GUST
	db OMINOUS_WIND
	db REFRESH
	db BUG_BITE
	db AIR_CUTTER
	db VACUUM_WAVE
	db -1 ; end

SpinarakEggMoves:   ;x
	db PSYBEAM
	db DISABLE
	db SONICBOOM
	db BATON_PASS
	db PURSUIT
	db GROWTH
	db SLASH
	db FELL_STINGER
	db X_SCISSOR
	db PIN_MISSILE
	db SHARPEN
	db BUG_BUZZ
	db MEGAHORN
	db -1 ; end

ChinchouEggMoves:   ;x
	db SCREECH
	db RECOVER
	db PSYBEAM
	db HAZE
	db AGILITY
	db ENDURE
	db NASTY_PLOT
	db -1 ; end

TogepiEggMoves:   ;x
	db PRESENT
	db MIRROR_MOVE
	db SPARK
	db SCREECH
	db CONFUSION
	db MORNING_SUN
	db DEFENSE_CURL
	db PSYCH_UP
	db ROLLOUT
	db ECHOED_VOICE
	db MYSTICALFIRE
	db NASTY_PLOT
	db -1 ; end

NatuEggMoves:   ;x
	db HAZE
	db DRILL_PECK
	db QUICK_ATTACK
	db SAND_ATTACK
	db GUST
	db FEATHERDANCE
	db PSYCH_UP
	db REFRESH
	db SKY_ATTACK
	db SILVER_WIND
	db -1 ; end

MareepEggMoves:   ;x
	db SLAM
	db SAFEGUARD
	db SCREECH
	db SAND_ATTACK
	db AGILITY
	db DEFENSE_CURL
	db ENDURE
	db ECHOED_VOICE
	db BULLDOZE
	db -1 ; end

MarillEggMoves:   ;x
	db PRESENT
	db AMNESIA
	db PERISH_SONG
	db SUPERSONIC
	db AURORA_BEAM
	db SING
	db ENCORE
	db AQUA_JET
	db REFRESH
	db SLAM
	db BULLDOZE
	db POWERUPPUNCH
	db -1 ; end

BonslyEggMoves:   ;x
	db REVERSAL
	db DEFENSE_CURL
	db ROLLOUT
	db SELFDESTRUCT
	db BULLDOZE
	db -1 ; end

HoppipEggMoves:   ;x
	db CONFUSION
	db GROWL
	db ENCORE
	db AMNESIA
	db PAY_DAY
	db AGILITY
	db RAZOR_LEAF
	db ENDURE
	db SWEET_SCENT
	db CHARM
	db SPLASH
	db TAKE_DOWN
	db SING
	db -1 ; end

AipomEggMoves:   ;x
	db PURSUIT
	db SPITE
	db SLAM
	db SPARK
	db GROWL
	db LOW_KICK
	db HOWL
	db NASTY_PLOT
	db MUD_SLAP
	db METRONOME
	db SWAGGER
	db -1 ; end
	
SunkernEggMoves:
	db SWEET_SCENT
	db MORNING_SUN
	db MUD_SHOT
	db SING
	db PSYBEAM
	db ACID_SPRAY
	db VINE_WHIP
	db ENDURE
	db SAFEGUARD
	db -1

YanmaEggMoves:   ;x
	db WHIRLWIND
	db REVERSAL
	db AIR_CUTTER
	db PSYBEAM
	db CONFUSION
	db GUST
	db PURSUIT
	db TAKE_DOWN
	db SILVER_WIND
	db OMINOUS_WIND
	db QUIVER_DANCE
	db DRAGON_DANCE
	db LEECH_LIFE
	db -1 ; end

WooperEggMoves:   ;x
	db ANCIENTPOWER
	db SAFEGUARD
	db BELLY_DRUM
	db THUNDERSHOCK
	db PURSUIT
	db ENCORE
	db DOUBLE_KICK
	db RECOVER
	db ACID_SPRAY
	db ENDURE
	db POWERUPPUNCH
	db -1 ; end

MurkrowEggMoves:   ;x
	db WHIRLWIND
	db SKY_ATTACK
	db FEATHERDANCE
	db PERISH_SONG
	db OMINOUS_WIND
	db PSYCH_UP
	db MYSTICALFIRE
	db AIR_CUTTER
	db DRILL_PECK
	db SHARPEN
	db HEX
	db -1 ; end

MisdreavusEggMoves:   ;x
	db DESTINY_BOND
	db HYPNOSIS
	db SMOG
	db SMOKESCREEN
	db MEGA_DRAIN
	db HAZE
	db PSYCH_UP
	db OMINOUS_WIND
	db ECHOED_VOICE
	db NASTY_PLOT
	db -1 ; end

OkapakoEggMoves:   ;x
	db AMNESIA
	db THUNDERSHOCK
	db TRI_ATTACK
	db DOUBLE_KICK
	db MIRROR_COAT
	db MEAN_LOOK
	db PSYCHO_CUT
	db SLAM
	db PSYCH_UP
	db BULLDOZE
	db PSYSTRIKE
	db ECHOED_VOICE
	db -1 ; end

PinecoEggMoves:   ;x
	db CONFUSION
	db REVERSAL
	db BULLDOZE
	db DEFENSE_CURL
	db STRING_SHOT
	db ROLLOUT
	db RECOVER
	db REFRESH
	db SCREECH
	db FLAIL
	db BUG_BUZZ
	db -1 ; end

DunsparceEggMoves:   ;x
	db BITE
	db HORN_DRILL
	db AGILITY
	db HYPNOSIS
	db BULLDOZE
	db HEX
	db PURSUIT
	db REFRESH
	db ECHOED_VOICE
	db AMNESIA
	db BATON_PASS
	db -1 ; end

GligarEggMoves:   ;x
	db METAL_CLAW
	db LEECH_LIFE
	db MUD_SHOT
	db AGILITY
	db BATON_PASS
	db TAKE_DOWN
	db SAND_ATTACK
	db LICK
	db BITE
	db CRABHAMMER
	db SHARPEN
	db AIR_CUTTER
	db BULLDOZE
	db -1 ; end

SnubbullEggMoves:   ;x
	db METRONOME
	db PURSUIT
	db PRESENT
	db LEER
	db SAND_ATTACK
	db SPARK
	db LOW_KICK
	db ENDURE
	db SUPER_FANG
	db POISON_FANG
	db POWERUPPUNCH
	db BULK_UP
	db -1 ; end

QwilfishEggMoves:   ;x
	db HAZE
	db BUBBLEBEAM
	db SUPERSONIC
	db SPARK
	db DEFENSE_CURL
	db AQUA_JET
	db ACID_SPRAY
	db FLAIL
	db BULLDOZE
	db FELL_STINGER
	db HEX
	db -1 ; end

ShuckleEggMoves:   ;x
	db SWEET_SCENT
	db MIRROR_COAT
	db REFRESH
	db MUD_SHOT
	db STRING_SHOT
	db ENDURE
	db BULLDOZE
	db SWAGGER
	db TRI_ATTACK
	db -1 ; end

HeracrossEggMoves:   ;x
	db HARDEN
	db SILVER_WIND
	db FALSE_SWIPE
	db PURSUIT
	db SLAM
	db METAL_CLAW
	db VACUUM_WAVE
	db BUG_BITE
	db BUG_BUZZ
	db BULLDOZE
	db FLAIL
	db SKY_UPPERCUT
	db IRON_DEFENSE
	db -1 ; end

SneaselEggMoves:   ;x
	db SPITE
	db BITE
	db MOONLIGHT
	db POWDER_SNOW
	db LOW_KICK
	db PSYCHO_CUT
	db DOUBLE_KICK
	db ICICLE_CRASH
	db X_SCISSOR
	db PSYCH_UP
	db POWERUPPUNCH
	db NASTY_PLOT
	db DIRE_CLAW
	db VACUUM_WAVE
	db AIR_CUTTER
	db -1 ; end

TeddiursaEggMoves:   ;x
	db CRUNCH
	db TAKE_DOWN
	db METAL_CLAW
	db BELLY_DRUM
	db SLAM
	db MOONLIGHT
	db POWERUPPUNCH
	db BULK_UP
	db REFRESH
	db METRONOME
	db BULLDOZE
	db LOW_KICK
	db -1 ; end

SlugmaEggMoves:   ;x
	db ACID_ARMOR
	db MIRROR_COAT
	db PSYBEAM
	db BULLDOZE
	db ENCORE
	db IRON_DEFENSE
	db REFRESH
	db -1 ; end

SwinubEggMoves:   ;x
	db BITE
	db SLAM
	db BULLDOZE
	db WHIRLWIND
	db CHARM
	db HOWL
	db SWAGGER
	db -1 ; end

CorsolaEggMoves:   ;x
	db SCREECH
	db AMNESIA
	db CONFUSE_RAY
	db DEFENSE_CURL
	db SLAM
	db ROLLOUT
	db IRON_DEFENSE
	db ENDURE
	db FLAIL
	db BULLDOZE
	db -1 ; end

RemoraidEggMoves:   ;x
	db OCTAZOOKA
	db SUPERSONIC
	db HAZE
	db SCREECH
	db AMNESIA
	db ACID_SPRAY
	db MUD_SHOT
	db STRING_SHOT
	db FLAIL
	db -1 ; end

DelibirdEggMoves:   ;x
	db AURORA_BEAM
	db METRONOME
	db SPLASH
	db RAPID_SPIN
	db CONFUSION
	db WATER_GUN
	db SKY_ATTACK
	db SLAM
	db BATON_PASS
	db ICE_SHARD
	db DESTINY_BOND
	db ECHOED_VOICE
	db POWERUPPUNCH
	db -1 ; end

MantykeEggMoves:   ;x
	db HAZE
	db SLAM
	db GUST
	db CHARM
	db TWISTER
	db MIRROR_COAT
	db MUD_SHOT
	db SPLASH
	db AMNESIA
	db PSYBEAM
	db -1 ; end

SkarchicEggMoves:   ;x
	db SKY_ATTACK
	db HAZE
	db MIRROR_MOVE
	db ENDURE
	db PURSUIT
	db METAL_CLAW
	db X_SCISSOR
	db PURSUIT
	db -1 ; end

HoundourEggMoves:   ;x
	db SPITE
	db REVERSAL
	db SUPER_FANG
	db CHARM
	db POISON_FANG
	db FLAME_WHEEL
	db HEX
	db TAKE_DOWN
	db SMOKESCREEN
	db DESTINY_BOND
	db PURSUIT
	db -1 ; end

PhanpyEggMoves:   ;x
	db ANCIENTPOWER
	db WATER_GUN
	db SAND_ATTACK
	db POWDER_SNOW
	db REVERSAL
	db ICE_SHARD
	db BULK_UP
	db HOWL
	db ECHOED_VOICE
	db -1 ; end

StantlerEggMoves:   ;x
	db SPITE
	db BITE
	db SAFEGUARD
	db DOUBLE_KICK
	db MEGAHORN
	db SLAM
	db PSYCHO_CUT
	db PSYCH_UP
	db BLAZE_KICK
	db BULLDOZE
	db -1 ; end

LarvitarEggMoves:   ;x
	db PURSUIT
	db STOMP
	db ANCIENTPOWER
	db DOUBLE_KICK
	db DRAGON_DANCE
	db SPITE
	db SLAM
	db ENDURE
	db IRON_DEFENSE
	db POWERUPPUNCH
	db POWER_GEM
	db -1 ; end
	
Vulpix_AlolanEggMoves:   ;x
	db PURSUIT
	db HYPNOSIS
	db HOWL
	db CHARM
	db DESTINY_BOND
	db DISABLE
	db LICK
	db CONFUSION
	db ICE_FANG
	db HEX
	db FLAIL
	db ICE_SHARD
	db ENCORE
	db -1 ; end
	
Bulbasaur_CloneEggMoves:
	db AMNESIA
	db CHARM
	db ENDURE
	db ACID_SPRAY
	db SLAM
	db SAFEGUARD
	db PETAL_DANCE
	db ECHOED_VOICE
	db SING
	db ANCIENTPOWER
	db -1 ; end

Charmander_CloneEggMoves:
	db BELLY_DRUM
	db ANCIENTPOWER
	db BITE
	db DRAGON_DANCE
	db CRUNCH
	db FURY_SWIPES
	db POWERUPPUNCH
	db AIR_CUTTER
	db ECHOED_VOICE
	db SHARPEN
	db POISON_FANG
	db SLASH
	db -1 ; end

Squirtle_CloneEggMoves:
	db MIRROR_COAT
	db HAZE
	db REFRESH
	db CONFUSION
	db POWDER_SNOW
	db ROLLOUT
	db POWERUPPUNCH
	db FLAIL
	db ECHOED_VOICE
	db AQUA_JET
	db AURORA_BEAM
	db ICE_FANG
	db ANCIENTPOWER
	db -1 ; end
	
Ekans_DarkEggMoves:
	db PURSUIT
	db SPITE
	db CRUNCH
	db DISABLE
	db DRAGON_DANCE
	db ICE_FANG
	db DRAGON_RAGE
	db BULLDOZE
	db -1 ; end
	
Pichu_SpikyEggMoves:
	db REVERSAL
	db PRESENT
	db ENCORE
	db ENDURE
	db PETAL_DANCE
	db SCARY_FACE
	db SING
	db METRONOME
	db POWERUPPUNCH
	db FLAIL
	db ECHOED_VOICE
	db REFRESH
	db DOUBLE_KICK
	db -1 ; end
	
Growlithe_HisuianEggMoves:   ;x
	db SLAM
	db SAFEGUARD
	db MORNING_SUN
	db DOUBLE_KICK
	db ENDURE
	db CHARM
	db GROWL
	db SWAGGER
	db ANCIENTPOWER
	db DRAGON_RAGE
	db -1 ; end
	
Sandshrew_AlolanEggMoves:   ;x
	db SAFEGUARD
	db RAPID_SPIN
	db ENDURE
	db SUPER_FANG
	db SLAM
	db NIGHT_SLASH
	db X_SCISSOR
	db DIRE_CLAW
	db BULLDOZE
	db ICE_SHARD
	db SHARPEN
	db LEECH_LIFE
	db FURY_SWIPES
	db -1 ; end
	
RinrinEggMoves:   ;x
	db SPITE
	db HYPNOSIS
	db AMNESIA
	db PAY_DAY
	db PERISH_SONG
	db PURSUIT
	db PSYCH_UP
	db FALSE_SWIPE
	db ECHOED_VOICE
	db NASTY_PLOT
	db HAZE
	db -1 ; end
	
Wooper_PaldeanEggMoves:   ;x
	db ANCIENTPOWER
	db SAFEGUARD
	db BELLY_DRUM
	db THUNDERSHOCK
	db PURSUIT
	db ENCORE
	db DOUBLE_KICK
	db RECOVER
	db ENDURE
	db POWERUPPUNCH
	db HAZE
	db -1 ; end
	
StarlyEggMoves:   ;x
	db ECHOED_VOICE
	db PURSUIT
	db SAND_ATTACK
	db AIR_CUTTER
	db MUD_SLAP
	db SHARPEN
	db OMINOUS_WIND
	db MIRROR_MOVE
	db -1 ; end
	
TangelaEggMoves:
	db SPARK
	db CONFUSION
	db AMNESIA
	db LEECH_SEED
	db SWAGGER
	db MORNING_SUN
	db ENDURE
	db FLAIL
	db -1 ; end

NoEggMoves:
	db -1 ; end
