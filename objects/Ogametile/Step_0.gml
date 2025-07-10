hovered_text = gamenames[? slot_numbers[currentslot]];

if (keyboard_check_pressed(ord("Z")) and position_meeting(Ocursor.x, Ocursor.y, self)) {
	audio_play_sound(snd_button_confirm, false, false, 7)	
    var file = get_open_filename("Executable Files|*.exe|All Files|*.*", "");
    
    if (file != "") {
		audio_play_sound(snd_button_confirm, false, false, 7)
        var name = get_string("Enter a name for this game slot:", "");
		var icon_file = get_open_filename("Image Files|*.png;*.jpg;*.bmp", "");
		var icon_sprite = spr_game_icons;
		
        if (name != "") {
			gamenames[? slot_numbers[currentslot]] = name;
			audio_play_sound(snd_placegame, false, false, 7)			
		}
        else gamenames[? slot_numbers[currentslot]] = file;
		
		if (icon_file != "") {
		    icon_sprite = sprite_add(icon_file, 1, false, false, 0, 0);
		    iconsprite[? slot_numbers[currentslot]] = icon_sprite;
			iconpaths[?slot_numbers[currentslot]] = icon_file;			
		}
        gameslot[? slot_numbers[currentslot]] = file;
        icons[? slot_numbers[currentslot]] = true;
    }
    else {
        icons[? slot_numbers[currentslot]] = false;
        gameslot[? slot_numbers[currentslot]] = "No Game";
        gamenames[? slot_numbers[currentslot]] = "No Game";
		iconpaths[? slot_numbers[currentslot]] = ""
    }
    event_user(2);
}

event_inherited()
var move_amount = 68;
var coord_adjust = 2.2662;

if ((scrollright || scrolleft) && timer < 6) {
    var dir = scrolleft ? 1 : -1;
    x += move_amount * dir;
    Ocursor.x += coord_adjust * dir;
    timer += 1;
}

if (timer >= 6) {
    var dir = scrolleft ? 1 : -1;
    timer = 0;
    scrollright = false;
    scrolleft = false;
	Ocursor.scroll = true
	global.prevX = Ocursor.x
	global.prevY = Ocursor.y
}