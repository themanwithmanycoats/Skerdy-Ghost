// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function check_for_save_data() {
    // Check if the player score is higher than any of the high scores
    for (var i = 0; i < 10; i++) {
        if (global.player_score > global.high_scores[i]) {
            // Shift scores down to make space for the new score
            for (var j = 9; j > i; j--) {
                global.high_scores[j] = global.high_scores[j - 1];
            }

            // Insert the new score at the appropriate position
            global.high_scores[i] = global.player_score;

            // Save the updated high scores array
            save_high_scores();
            
            // Debug: Print the string saved to the file
            show_debug_message("Saved string: " + json_stringify(global.high_scores));
            
            show_debug_message("Game saved. New high score!");
            return; // Exit the function after saving the score
        }
    }

    show_debug_message("Game not saved. Did not beat top 10 scores.");
}

// Function to save the high scores array
function save_high_scores() {
    show_debug_message(global.high_scores);
    var _string = json_stringify(global.high_scores);
    show_debug_message(_string);
    var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
    buffer_write(_buffer, buffer_string, _string);
    buffer_save(_buffer, "high_scores.save");
    buffer_delete(_buffer);
}
