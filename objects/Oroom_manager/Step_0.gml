if (global.fadeout || global.fadein) {
    global.timer += 1;
}

if (global.fadeout) {
    if (global.timer > 10) {
        Ofade.fade = true;
    }

    if (global.timer > 20) {
        global.destroyall = true;
        global.fadeout = false;
        global.fadein = true;
        global.timer = 0;
    }
}

if (global.fadein && global.timer > 10) {
    global.rm = global.switchtoroom;
    global.once = true;
    global.destroyall = false;
    global.fadein = false;
    global.timer = 0;
    Ofade.fade = false;
}


if (global.once == true){
	switch (global.rm){
		case ROOMS.BOOT:
		
			instance_create_depth(0, 0, -100, Onews_container);
			instance_create_depth(64, 80, -200, Onews_box);
			instance_create_depth(64, 352, -200, Onews_box);
			instance_create_depth(64, 624, -200, Onews_box);
			instance_create_depth(155, 895, -200, Otext);
			instance_create_depth(65, 970, -200, OButton_icon);


			var StartText = instance_create_depth(1200, 860, -200, Otext);
			StartText.text = "Start";
			StartText.scale = 0.8;
	
			var abutton = instance_create_depth(1120, 960, -200, OButton_icon);
			abutton.image_index = 1;
	
			instance_create_depth(1240, 500, -200, OHomeButton);
		break
		
		case ROOMS.HOME:
			instance_create_depth(1770, 1005, 0, Ocontroller_tip);
			instance_create_depth(150, 1030, 0, Ocontroller_inuse);
			instance_create_depth(48, 970, 0, Obottommenu_line);
			instance_create_depth(400, 500, 0, Ocursor);
			
			create_app_button(475, 820, 0, 0.35, "Nintendo Switch Online", 255, 0, 0);
			create_app_button(635, 820, 1, 0.29, "News", 80, 80, 80);
			create_app_button(795, 820, 2, 0.27, "Nintendo eShop", 80, 80, 80);
			create_app_button(955, 820, 3, 0.29, "Album", 80, 80, 80);
			create_app_button(1115, 820, 4, 0.29, "Controllers", 80, 80, 80);
			create_app_button(1275, 820, 5, 0.27, "System Settings", 80, 80, 80);
			create_app_button(1435, 820, 6, 0.22, "Sleep Mode", 80, 80, 80);
			
			for (var i = 0; i < 30; i++) {
			    var inst = instance_create_depth(400 + i * 410, 500, 0, Ogametile);
			    inst.currentslot = i;
			}
			audio_play_sound(snd_home, false, false, 4);
			var SBGM = audio_play_sound(mus_3dshomemenu, false, true)
			audio_sound_loop_start(SBGM, 11)

	}
	global.once = false;
}

if (global.destroyall == true){
	switch (global.rm){
		case ROOMS.BOOT:
			instance_destroy(Onews_container);
			instance_destroy(Onews_box);
			instance_destroy(Onews_box);
			instance_destroy(Onews_box);
			instance_destroy(Otext);
			instance_destroy(OButton_icon);
			instance_destroy(OHomeButton);
			instance_destroy(Oeffect);
		break
		
	case ROOMS.HOME:
			instance_destroy(Ocursor)
			instance_destroy(Ogametile)
			instance_destroy(Oapps_button)
			instance_destroy(Ocontroller_tip)
			instance_destroy(Ocontroller_inuse)
			instance_destroy(Obottommenu_line)
	}
}