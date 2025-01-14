CorrosionRedundantFunction:            ;I am running our of space, so doing this
	ld a, BATTLE_VARS_SUBSTATUS5_OPP
	call GetBattleVarAddr
	bit SUBSTATUS_CORROSION, [hl]
	ret

BattleCommand_Corrosion:
; corrosion

	ld a, [wAttackMissed]
	and a
	jr nz, .failed

	call CheckHiddenOpponent
	jr nz, .failed

	call CorrosionRedundantFunction
	jr nz, .failed

	set SUBSTATUS_CORROSION, [hl]
	call AnimateCurrentMove
	
	ld a, 1                          ;this should probably have its own
	ldh [hTemp], a                   ;'already corroded' flag, but oh well
	
	ld hl, CorrosionText             ;it's only needed for if you use aciddownpour twice in a row
	jp StdBattleTextbox              ;so the text doens't repeat

.failed
	jp FailMove
	
BattleCommand_StubbedCorrosion:

	ld a, [wAttackMissed]
	and a
	ret nz

	call CheckHiddenOpponent
	ret nz

	call CorrosionRedundantFunction
	ret nz

	set SUBSTATUS_CORROSION, [hl]
	ret

BattleCommand_PrintCorrosion:          ;insert the usual 'this is a terrible way of doing this' spiel

	ld a, [wAttackMissed]
	and a
	ret nz

	call CheckHiddenOpponent
	ret nz
	
	ldh a, [hTemp]                     ;I should really make a dedicated wram address for this
	cp 1                               ;because this entire assumption falls apart if another move uses this
	ret z
	
	ld a, 1
	ldh [hTemp], a 
	ld hl, CorrosionText
	jp StdBattleTextbox
	
BattleCommand_ResetCorrosion:          ;this is a hack way of doing this, so acid can hit steel

	ldh a, [hTemp]                     ;if corrosion was caused by a different means, don't reset it
	cp 1                               ;stubbed + reset alone does not set this flag
	ret z                              ;but moves that actually intend to cause the status, do
                                       
	ld a, BATTLE_VARS_SUBSTATUS5_OPP   
	call GetBattleVarAddr              
	res SUBSTATUS_CORROSION, [hl]
	ret
