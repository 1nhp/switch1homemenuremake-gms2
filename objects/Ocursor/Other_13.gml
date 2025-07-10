if menu == menuStates.GAMES and Ogametile.scrollright == false and Ogametile.scrolleft = false{
	audio_stop_sound(snd_cursor_move)
	audio_play_sound(snd_appsbutton_hover, false, false, 10)
	y += 320
	
	if Ocursor.x <= 400 x = 475
	else if Ocursor.x <= 810 x = 795
	else if Ocursor.x <= 1220 x = 1115
	spr_size = 0.22
	menu = menuStates.APPS
	spr = 1
	Ocontroller_tip.greyedout = 1
	Ocontroller_tip.text = "OK"
}