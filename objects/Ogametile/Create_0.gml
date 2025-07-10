event_inherited();
gameslot = ds_map_create();
slot_numbers = []; for (var i = 1; i <= 32; i++) array_push(slot_numbers, "slot" + string(i));
currentslot = 0;

for (var i = 0; i < array_length(slot_numbers); i++) gameslot[? slot_numbers[i]] = "";
icons = ds_map_create();
gamenames = ds_map_create();
iconsprite = ds_map_create();
iconpaths = ds_map_create()

ini_open("programs.ini");
for (var i = 0; i < array_length(slot_numbers); i++) {
	var icon_path = ini_read_string("iconpath", slot_numbers[i], "");	
	iconsprite[? slot_numbers[i]] = sprite_add(icon_path, 1, false, false, 0, 0);
    gameslot[? slot_numbers[i]] = ini_read_string("programs", slot_numbers[i], "");
	gamenames[? slot_numbers[i]] = ini_read_string("gamename", slot_numbers[i], "No Game");
    icons[? slot_numbers[i]] = (ini_read_string("icons", slot_numbers[i], "0") == "1");
	iconpaths[? slot_numbers[i]] = icon_path;
}
ini_close();

image_xscale = 0.53;
image_yscale = 0.53;
timer = 0;
scrollright = false;
scrolleft = false;
hover_effect = hover_effects.CUBE;
size = 385;
hovered_text = 0;
icon_y = 0
icon_yy = 0
icon_anim = 0
icon_alpha = 1