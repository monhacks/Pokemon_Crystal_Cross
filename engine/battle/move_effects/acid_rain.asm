BattleCommand_StartAcidRain:
; starthail

	ld a, [wBattleWeather]
	cp WEATHER_ACID_RAIN
	jr z, .failed

	ld a, WEATHER_ACID_RAIN
	ld [wBattleWeather], a
	ld a, 8
	ld [wWeatherCount], a
	ld hl, AcidFallsText
	jp StdBattleTextbox

.failed
	call AnimateFailedMove
	jp PrintButItFailed