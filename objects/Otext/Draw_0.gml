draw_self();
draw_set_font(dsi_font);
draw_set_color(c_white);
draw_set_alpha(1);

draw_text_transformed(x, y, text, scale, scale, 0);