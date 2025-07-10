	var effect = instance_create_depth(x, y, 0, Oeffect)
	effect.size = 83
	effect.color = c_white
	startapp = true
	global.locked = true
	
	switch (hovered_text){
		case "Nintendo Switch Online":
			effect.color = c_red
			audio_play_sound(snd_nsoapp, false, false, 7)
		break
		
		case "News":
			effect.color = c_red
			audio_play_sound(snd_newsapp, false, false, 7)
		break		
		
		case "Nintendo eShop":
			effect.color = c_orange
			audio_play_sound(snd_eshopapp, false, false, 7)
		break				
		
		case "Album":
			effect.color = c_aqua
			audio_play_sound(snd_albumapp, false, false, 7)
		break				
		
		case "Controllers":
			audio_play_sound(snd_controllersapp, false, false, 7)
		break				
		
		case "System Settings":
			audio_play_sound(snd_settings, false, false, 7)
		break				
		
		case "Sleep Mode":
			audio_play_sound(snd_sleepmode, false, false, 7)
		break					
	}