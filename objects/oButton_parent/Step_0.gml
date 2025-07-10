if (pressed && !position_meeting(mouse_x, mouse_y, id)) {
    audio_play_sound(release_snd, false, false, 7);
    pressed = false;
}
