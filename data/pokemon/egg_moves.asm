INCLUDE "constants.asm"

SECTION "Egg Move Pointers", ROMX

EggMovePointers::
	indirect_table 2, 1
	indirect_entries MEW, EggMovePointers1
	indirect_entries NUM_POKEMON, EggMovePointers2
	indirect_table_end

INCLUDE "data/pokemon/egg_moves_kanto.asm"
INCLUDE "data/pokemon/egg_moves_johto.asm"
