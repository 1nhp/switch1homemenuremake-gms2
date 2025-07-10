var _prev_halign = draw_get_halign();
var _prev_valign = draw_get_valign();

draw_self();
draw_set_color(color);
draw_set_alpha(alpha);
draw_set_valign(fa_middle);
draw_set_halign(fa_middle);
draw_circle(x, y, size, false);

draw_set_halign(_prev_halign);
draw_set_valign(_prev_valign);