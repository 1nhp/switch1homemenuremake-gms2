if (!pressed && !global.locked && !global.dialog) {
    audio_play_sound(hover_snd, false, false, 7);
    pressed = true;
    event_perform(ev_user0, 0);
}
