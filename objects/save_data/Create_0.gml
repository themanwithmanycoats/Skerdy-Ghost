audio_group_load(default_sound_group);
// Define the array to store high scores
global.high_scores = array_create(10, 0); // Create an array with 10 elements, initialized to 0
global.high_score = 0;

check_for_load_data();

// Now check if high_scores was loaded successfully
if (is_undefined(global.high_scores)) {
    // Load default values if the high_scores array wasn't loaded
    global.high_scores = array_create(10, 0); // Create an array with 10 elements, initialized to 0
}

// Accessing elements in an array is slightly different than a ds_list
// For example, to access the first element of the array:
// var first_element = global.high_scores[0];
