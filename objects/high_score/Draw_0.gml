draw_self();

draw_set_font(fnt_menu);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var highScoresTextX = x + 30;
var highScoresTextY = y - 10;

draw_text(highScoresTextX, highScoresTextY, "High Scores");

draw_set_halign(fa_left);
draw_set_valign(fa_top);

var verticalSpacing = 3;
var colorSpectrumSpeed = .001; // Adjust this value for the speed of the color change

for (var i = 0; i < 10; i++) {
    var entry = i + 1;
    var scores = global.high_scores[i];

    // Calculate RGB values based on time and index
    var red = round(sin((i * 10) + current_time * colorSpectrumSpeed) * 127 + 128);
    var green = round(sin((i * 10 + 2) + current_time * colorSpectrumSpeed) * 127 + 128);
    var blue = round(sin((i * 10 + 4) + current_time * colorSpectrumSpeed) * 127 + 128);

    // Set the calculated color
    draw_set_color(make_colour_rgb(red, green, blue));

    draw_text(x, y + i * 10 + i * verticalSpacing, string(entry) + ". " + string(scores));
}

// Reset color to white after drawing the text
draw_set_color(c_white);
