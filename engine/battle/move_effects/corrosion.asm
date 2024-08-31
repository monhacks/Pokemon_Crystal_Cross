BattleCommand_Corrosion:
; corrosion

	ld a, [wAttackMissed]
	and a
	jr nz, .failed

	call CheckHiddenOpponent
	jr nz, .failed

	ld a, BATTLE_VARS_SUBSTATUS5_OPP
	call GetBattleVarAddr
	bit SUBSTATUS_CORROSION, [hl]
	jr nz, .failed

	set SUBSTATUS_CORROSION, [hl]
	call AnimateCurrentMove
	ld hl, CorrosionText
	jp StdBattleTextbox

.failed
	jp FailMove
