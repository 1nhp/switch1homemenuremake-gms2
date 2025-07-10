oobounds = false;
ooboundsyd = false;
ooboundsx = false;
ooboundsxr = false;
g = 210;
b = 239;
light = false
color = make_color_rgb(37.0, g, b);
bounce_timer = 0;
keyholdL = 0;
keyholdR = 0;
scroll = false;
ooboundstimer = 0
spr_size = 0.56;
spr = 0;
spr_index = spr_cordinator_rect
alpha = 1
enum menuStates{
	GAMES,
	APPS,
	DIALOG
}
menu = menuStates.GAMES

fade = false
fadetimer = 0
alpha = 1


global.page = 0;
global.prevX = 400
global.prevY = 500
depth =- 300;