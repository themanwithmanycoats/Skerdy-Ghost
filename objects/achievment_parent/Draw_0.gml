// Draw event of your main object
draw_self(); // Draw the main object

// Draw text box and text if mouse is over the object
if (text != "")&& draw = true {
    var text_width = string_width(text);
    var text_height = string_height(text);
    var box_width = text_width + 10; // Adjust for padding
    var box_height = text_height + 10; // Adjust for padding

    // Draw text box
    draw_set_color(c_white);
    draw_rectangle(mouse_x - box_width, mouse_y, mouse_x, mouse_y + box_height, false);

    // Draw text
    draw_set_color(c_black);
    draw_text_ext(mouse_x - box_width + 5, mouse_y + 5, text, -1, box_width - 10);

    // Force drawing above everything else
    draw_self();
}
