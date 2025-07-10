function game_tile_scroll(scrolldir){
	var move_sounds = [snd_move2, snd_move3, snd_move4, snd_move5, snd_move6, snd_move7];
	var snd = irandom(array_length(move_sounds) - 1);
	audio_play_sound(move_sounds[snd], false, false, 10);
	
	enum scrolldir{
		LEFT,
		RIGHT
	}
	
	switch (scrolldir){
		case scrolldir.LEFT: 
				Ogametile.scrolleft = true;
				global.page -= 1;
		break;
		
		case scrolldir.RIGHT: 
				Ogametile.scrollright = true;
				global.page += 1;
		break;		
	}
}