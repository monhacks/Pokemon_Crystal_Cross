command: MACRO
	const \1_command
\1 EQUS "db \1_command"
ENDM

; BattleCommandPointers indexes (see data/battle/effect_command_pointers.asm)
	const_def 1
	command checkturn               ; 01
	command checkobedience          ; 02
	command usedmovetext            ; 03
	command doturn                  ; 04
	command critical                ; 05
	command damagestats             ; 06
	command stab                    ; 07
	command damagevariation         ; 08
	command checkhit                ; 09
	command lowersub                ; 0a
	command moveanimnosub           ; 0b
	command raisesub                ; 0c
	command failuretext             ; 0d
	command applydamage             ; 0e
	command criticaltext            ; 0f
	command supereffectivetext      ; 10
	command checkfaint              ; 11
;	command buildopponentrage       ; 12
	command poisontarget            ; 13
	command sleeptarget             ; 14
	command draintarget             ; 15
	command eatdream                ; 16
	command burntarget              ; 17
	command freezetarget            ; 18
	command paralyzetarget          ; 19
	command selfdestruct            ; 1a
	command mirrormove              ; 1b
	command statup                  ; 1c
	command statdown                ; 1d
	command payday                  ; 1e
	command resetstats              ; 20
	command forceswitch             ; 21
	command endloop                 ; 22
	command flinchtarget            ; 23
	command ohko                    ; 24
	command recoil                  ; 25
	command mist                    ; 26
	command focusenergy             ; 27
	command confuse                 ; 28
	command confusetarget           ; 29
	command heal                    ; 2a
	command transform               ; 2b
	command screen                  ; 2c
	command poison                  ; 2d
	command paralyze                ; 2e
	command substitute              ; 2f
	command rechargenextturn        ; 30
	command mimic                   ; 31
	command metronome               ; 32
	command leechseed               ; 33
	command splash                  ; 34
	command disable                 ; 35
	command cleartext               ; 36
	command charge                  ; 37
	command checkcharge             ; 38
	command traptarget              ; 39
	command rampage                 ; 3a
	command checkrampage            ; 3b
	command constantdamage          ; 3c
	command counter                 ; 3d
	command encore                  ; 3e
	command painsplit               ; 3f
	command snore                   ; 40
	command conversion2             ; 41
	command lockon                  ; 42
	command sketch                  ; 43
	command defrostopponent         ; 44
	command sleeptalk               ; 45
	command destinybond             ; 46
	command spite                   ; 47
	command falseswipe              ; 48
	command healbell                ; 49
	command kingsrock               ; 4a
	command thief                   ; 4b
	command arenatrap               ; 4c
	command nightmare               ; 4d
	command defrost                 ; 4e
	command curse                   ; 4f
	command protect                 ; 50
	command spikes                  ; 51
	command foresight               ; 52
	command perishsong              ; 53
	command startsandstorm          ; 54
	command endure                  ; 55
	command checkcurl               ; 56
	command rolloutpower            ; 57
	command furycutter              ; 58
	command attract                 ; 59
	command happinesspower          ; 5a
	command present                 ; 5b
	command damagecalc              ; 5c
	command safeguard               ; 5e
	command checksafeguard          ; 5f
;	command getmagnitude            ; 60
	command batonpass               ; 61
	command pursuit                 ; 62
	command clearhazards            ; 63
	command healmorn                ; 64
	command healday                 ; 65
	command healnite                ; 66
	command hiddenpower             ; 67
	command startrain               ; 68
	command startsun                ; 69
	command attackup                ; 6a
	command defenseup               ; 6b
	command speedup                 ; 6c
	command specialattackup         ; 6d
	command specialdefenseup        ; 6e
	command accuracyup              ; 6f
	command evasionup               ; 70
	command attackup2               ; 71
	command defenseup2              ; 72
	command speedup2                ; 73
	command specialdefenseup2       ; 75
	command evasionup2              ; 77
	command attackdown              ; 78
	command defensedown             ; 79
	command speeddown               ; 7a
	command specialattackdown       ; 7b
	command specialdefensedown      ; 7c
	command accuracydown            ; 7d
	command evasiondown             ; 7e
	command attackdown2             ; 7f
	command defensedown2            ; 80
	command speeddown2              ; 81
	command statupmessage           ; 82
	command statdownmessage         ; 83
	command statupfailtext          ; 84
	command statdownfailtext        ; 85
	command effectchance            ; 86
	command statdownanim            ; 87
	command statupanim              ; 88
	command switchturn              ; 89
	command fakeout                 ; 8a
	command bellydrum               ; 8b
	command psychup                 ; 8c
;	command rage                    ; 8d
	command doubleflyingdamage      ; 8e
	command doubleundergrounddamage ; 8f
	command mirrorcoat              ; 90
	command doubleminimizedamage    ; 91
	command skipsuncharge           ; 92
	command thunderaccuracy         ; 93
	command teleport                ; 94
;	command beatup                  ; 95
;	command ragedamage              ; 96
	command resettypematchup        ; 97
	command allstatsup              ; 98
	command starthail               ; 99
	command raisesubnoanim          ; 9a
	command lowersubnoanim          ; 9b
;	command beatupfailtext          ; 9c
	command clearmissdamage         ; 9d
	command movedelay               ; 9e
	command moveanim                ; 9f
	command tristatuschance         ; a0
	command supereffectivelooptext  ; a1
	command startloop               ; a2
	command curl                    ; a3
	command hex                     ; a4
	command doubleunderwaterdamage  ; a5
	command checkpowder
	command effectsporestatuschance
	command specialattackup2
	command specialdefensedown2
	command accuracydown2
	command startacidrain
	command venomstrikestatuschance
	command elementfangchance
	command miracleeye
	command corrosion
	command stubbedcorrosion
	command printcorrosion
	command resetcorrosion
	command toxicspikes
	command direclawstatuschance
	command accuracydownpoisonchance
	command disablehit
	command auroraveil
	command weatherball

	const_def -1, -1
	command endmove                 ; ff
	command endturn                 ; fe
	