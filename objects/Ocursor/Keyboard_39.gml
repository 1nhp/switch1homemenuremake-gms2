if (keyholdR <= 20) {
	keyholdR += 1;
}
else if (keyholdR >= 19 and menu == menuStates.GAMES) {
	event_user(1);
	keyholdR = 16;
}
else if (keyholdR >= 19 and menu == menuStates.APPS) {
	event_user(1);
	keyholdR = 18;
}