draw_self()
var _prev_halign = draw_get_halign();
var _prev_valign = draw_get_valign();

draw_set_color(c_black)
draw_set_alpha(bg_alpha)
draw_rectangle(0, 0, room_width, room_height, false)
draw_set_color(make_color_rgb(37, 210, 239))
draw_set_alpha(bg2_alpha)
draw_rectangle(0, 0, room_width, room_height, false)

draw_set_alpha(alpha)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_sprite_ext(spr_dialogbox, 0, x, y, scale, scale, 0, c_white, alpha)
draw_set_color(c_white)
draw_text_transformed(x, y - 50, dlg_text, text_scale, text_scale, 0)

draw_set_color(make_color_rgb(7, 231, 183))
draw_text_transformed(x - 300, y + 140, dlg_cancel_text, text_scale, text_scale, 0)
draw_text_transformed(x + 300, y + 140, dlg_confirm_text, text_scale, text_scale, 0)

if hovereffect == true{
	draw_set_alpha(hovereffect_alpha)
	draw_set_color(make_color_rgb(35, 100, 100));
	var half_size = 100 * 5;
	draw_set_color(make_color_rgb(35, 100, 100));
	draw_rectangle(Ocursor.x - 290, Ocursor.y - 50, Ocursor.x + 300, Ocursor.y + 50, false);
}

draw_set_valign(_prev_valign)
draw_set_halign(_prev_halign)