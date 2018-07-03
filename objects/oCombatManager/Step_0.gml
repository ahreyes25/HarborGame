// If player turn, player must be in idle state
if (turnControllerObject.currentPlayerTurn.state == "idle") {
	UpdateDataReference();
	
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	// Friendly turn
	if (turnControllerObject.currentTeamTurn == turnControllerObject.friendlies) {
		// Check for matching spell configurations
		UpdateSpellBookIndex();
		CheckSpellForms();
		UpdateCursorPosition();
	}
	
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	// Enemy turn
	else if (turnControllerObject.currentTeamTurn == turnControllerObject.enemies) {		
		// Decide which AI script to use
		if (!combatEnemyObject.searchedForSpell) {
			GreedyEnemyAI();
		}
	}
}