enum CursorSound {
    MOVE,
    APP,
	DIALOG
}

function move_cursor_horizontally(amount, snd = CursorSound.MOVE, reverse = false) {
	if global.locked == false{
	    x += reverse ? -amount : amount;

	    switch (snd) {
	        case CursorSound.MOVE: audio_play_sound(snd_cursor_move, false, false, 7); break;
	        case CursorSound.APP: audio_play_sound(snd_appsbutton_hover, false, false, 7); break;
	        case CursorSound.DIALOG: audio_play_sound(snd_cursor_dialogmove, false, false, 7); break;
	    }
	}
}

enum Direction {
    LEFT,
    RIGHT,
    UP,
    DOWN
}

function cursor_cantmove(dir, amount) {
    audio_stop_sound(snd_appsbutton_hover);
    audio_stop_sound(snd_cursor_move);
    audio_stop_sound(snd_cursor_dialogmove);
    audio_play_sound(snd_cantmove, false, false, 10);

    switch (dir) {
        case Direction.LEFT:
            ooboundsx = true;
            x += amount;
        break;

        case Direction.RIGHT:
            ooboundsxr = true;
            x -= amount;
        break;

        case Direction.UP:
            oobounds = true;
            y += amount;
        break;

        case Direction.DOWN:
            ooboundsyd = true;
            y -= amount;
        break;
    }
}
