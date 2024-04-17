randomize();
object_names = ["Pillar_left_3", "Pillar_left_2", "Pillar_left_1", "Pillar_Right_3", "Pillar_Right_2", "Pillar_Right_1"];
base_spawn_interval = 100;  // The base rate at which objects will be spawned (adjust as needed)
spawn_countdown = base_spawn_interval;
random_interval_length = irandom_range(40, 80); // Initial random interval length
time_until_next_random_interval = irandom_range(300, 600); // Initial time until next random interval change
frame_count = 0; // Initialize frame_count

// Initialize a variable to store the tilemap ID
spawn_interval = base_spawn_interval;
stupid = false

