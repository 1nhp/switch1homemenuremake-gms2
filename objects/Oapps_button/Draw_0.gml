var _prev_halign = draw_get_halign();
var _prev_valign = draw_get_valign();

draw_set_alpha(1)
draw_self()
draw_set_font(dsi_font)

draw_sprite_ext(spr_circle, 0, x, y, scale, scale, 0, color, 1)

if (startapp and hovered_text = "Album"){
	draw_sprite_ext(spr_app_icons, 7, x + 11, y + albumico_y_pos, spr_xscale, spr_yscale, albumico_angle, c_white, albumico_alpha)
}

draw_sprite_ext(spr_app_icons, spr, x + ico_x_pos, y + ico_y_pos, spr_xscale, spr_yscale, angle, c_white, 1)

if (position_meeting(Ocursor.x, Ocursor.y, self)) {
    draw_set_halign(fa_middle);
    draw_set_valign(fa_top);
    draw_set_color(make_color_rgb(24, 188, 254));
    draw_text_transformed(x, y + 55, hovered_text, 0.4, 0.4, 0);
}

event_inherited();
draw_set_halign(_prev_halign);
draw_set_valign(_prev_valign);
