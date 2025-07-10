/// @function create_app_button(x, y, spr, size, text)
/// @param x           The x position
/// @param y           The y position
/// @param spr       The sprite index or number to use
/// @param size      The sprite size of the button
/// @param text      The hovered text to display
/// @param r    The red Color to use
/// @param g    The green Color to use
/// @param b    The blue Color to use

function create_app_button(x, y, spr, size, text, r, g, b){
	var btn = instance_create_depth(x, y, 0, Oapps_button);
	btn.spr = spr
	btn.color = make_color_rgb(r, g, b);
	btn.spr_xscale = size
	btn.spr_yscale = size
	btn.hovered_text = text
	return btn;
}