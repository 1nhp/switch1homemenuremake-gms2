if (menu == menuStates.APPS and !global.locked){
	audio_play_sound(snd_appsbutton_hover, false, false, 7);
	y = 500;
	x = global.prevX;
	spr_size = 0.56;
	spr = 0;
	menu = menuStates.GAMES
	Ocontroller_tip.greyedout = 0.5;
}