BattleCommand_Miracle_Eye:
; miracle_eye

	ld a, [wAttackMissed]
	and a
	jr nz, .failed

	call CheckHiddenOpponent
	jr nz, .failed

	ld a, BATTLE_VARS_SUBSTATUS5_OPP
	call GetBattleVarAddr
	bit SUBSTATUS_MIRACLE_EYE, [hl]
	jr nz, .failed

	set SUBSTATUS_MIRACLE_EYE, [hl]
	call AnimateCurrentMove
	ld hl, IdentifiedText
	jp StdBattleTextbox

.failed
	jp FailMove
