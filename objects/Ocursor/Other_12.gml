if (menu = menuStates.APPS and ooboundsx == false and ooboundsyd == false) {
	move_cursor_horizontally(160, CursorSound.APP, true);
	if (x <= 465) cursor_cantmove(Direction.LEFT, 160);
}

if (menu = menuStates.DIALOG and ooboundsyd == false) {
	move_cursor_horizontally(590, CursorSound.DIALOG, true);
	if (x < 660) cursor_cantmove(Direction.LEFT, 590);
}

if menu = menuStates.GAMES{
	if (x >= 385 and ooboundsx == false and oobounds == false) move_cursor_horizontally(410, false, true);
	if (x <= 385 and oobounds == false and ooboundsx == false and scroll = false) cursor_cantmove(Direction.LEFT, 410);
	if (global.page == 0) scroll = false;
	if (x <= 780 and scroll == true and Ogametile.scrolleft == false and Ogametile.timer <= 6) {
		game_tile_scroll(scrolldir.LEFT);		
		scroll = true;
	}
}