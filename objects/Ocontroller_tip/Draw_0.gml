draw_self();
draw_set_font(dsi_font);
draw_set_color(c_white);
draw_set_alpha(greyedout);

draw_text_transformed(x, y - 30, text, 0.4, 0.4, 0);
draw_sprite_ext(spr_button_icons, 1, x - 60, y + 20, 0.25, 0.25, 0, c_white, greyedout);