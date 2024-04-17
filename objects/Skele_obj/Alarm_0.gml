// Alarm[0] event
if (spawn_timer <= 0) {
    if (!goodybag) {
        numberofspawns = irandom_range(1, 5); // Pick a number between 1 and 5
        is_attacking = true;
        goodybag = true;
        goodybagSpawnCounter = 30; // Set the counter to 30 for half a second (adjust as needed)
    }

    if (goodybag) {
        if (goodybagSpawnCounter > 0) {
            goodybagSpawnCounter -= 1;
        } else if (numberofspawns > 0) {
            // Choose a random object
            chosenObject = choose(obj_lefthand_skele, obj_righthand_skele, obj_boulder_skele);

            // Spawn the object
            var instance_created = instance_create_layer(x, y, "Instances", chosenObject);

            // Check if the instance creation was successful
            if (instance_created != noone) {
                // Decrease the number of spawns
                numberofspawns -= 1;

                // Reset the counter for the next spawn
                goodybagSpawnCounter = 30; // Set the counter to 30 for half a second (adjust as needed)

                // If all spawns are done, reset variables
                if (numberofspawns <= 0) {
                    is_attacking = false;
                    spawn_timer = 360; // Reset spawn timer (adjust as needed)
                    attackDelay = 0;
                    goodybag = false;
					alarm[0] = 0
                }
            }
        }
    }
}
