if (pressed == true) {
	audio_play_sound(release_snd, false, false, 7);
	pressed = false;
	released = false;
	event_user(1)
}