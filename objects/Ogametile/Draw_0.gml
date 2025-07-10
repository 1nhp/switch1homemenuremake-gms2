/// Inherit the parent event
event_inherited();
var _prev_halign = draw_get_halign();
var _prev_valign = draw_get_valign();
var icon_enabled = icons[? slot_numbers[currentslot]];

if (position_meeting(Ocursor.x, Ocursor.y, self)) {
    draw_set_halign(fa_middle);
    draw_set_valign(fa_top);
    draw_set_color(make_color_rgb(24, 188, 254));
    draw_text_transformed(x, y - 300, hovered_text, 0.4, 0.4, 0);
	Ocontroller_tip.greyedout = 1
	Ocontroller_tip.text = "Start"
}

var spr = iconsprite[? slot_numbers[currentslot]];
if (sprite_exists(spr)) and (icon_enabled){
	sprite_set_offset(spr, sprite_get_width(spr) / 2, sprite_get_height(spr) / 2);
	draw_sprite_ext(spr, 0, x, y, 1.5, 1.5, 0, c_white, 1);
}
if (icon_enabled and !spr){
	draw_sprite_ext(spr_game_icons, 0, x, y, 1.5, 1.5, 0, c_white, 1);	
}

if ((position_meeting(Ocursor.x, Ocursor.y, self)) and hovered_text == "No Game") {
	Ocontroller_tip.greyedout = 0.5 Ocontroller_tip.text = "OK"
}

draw_set_halign(_prev_halign);
draw_set_valign(_prev_valign);