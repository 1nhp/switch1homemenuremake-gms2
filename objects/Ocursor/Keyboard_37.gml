if (keyholdL <= 20) {
	keyholdL += 1;
}
else if (keyholdL >= 19 and menu == menuStates.GAMES) {
	event_user(2);
	keyholdL = 16;
}
else if (keyholdL >= 19 and menu == menuStates.APPS) {
	event_user(2);
	keyholdL = 18;
}