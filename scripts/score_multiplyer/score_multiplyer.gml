
function score_multiplyer(){
	/// Check for changes in global.player_score and update the score
if (global.player_score != global.previous_player_score) {
    var score_change = global.player_score - global.previous_player_score;
    
    // Make sure the change was not made in this frame
    if (score_change != 0) {
        // Add the difference to the score
        global.player_score += score_change;
    }
}

// Store the current global.player_score for the next frame
global.previous_player_score = global.player_score;


}