draw_self();

if (pressed and hover_effect == hover_effects.CIRCLE) {
    draw_set_color(make_color_rgb(35, 100, 100));
    draw_set_alpha(0.4);
    draw_set_circle_precision(64);
    draw_circle(x, y, size, false);
    
    draw_set_alpha(1); // Reset alpha to avoid affecting other draw calls
}

if (pressed and hover_effect == hover_effects.CUBE) {
    var half_size = size * 0.5;

    draw_set_color(make_color_rgb(35, 100, 100));
    draw_set_alpha(0.4);

    draw_rectangle(x - half_size, y - half_size, x + half_size, y + half_size, false);

    draw_set_alpha(1); // Reset alpha to avoid affecting other draw calls
}