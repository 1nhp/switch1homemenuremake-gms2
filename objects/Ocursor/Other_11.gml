if (menu = menuStates.GAMES) {
	if (x <= 1555) move_cursor_horizontally(410);
	if (global.page >= 27) cursor_cantmove(Direction.RIGHT, 410);
	if (x >= 1620 and Ogametile.scrollright == false and Ogametile.timer <= 6) {game_tile_scroll(scrolldir.RIGHT); }
}

if (menu = menuStates.DIALOG and ooboundsyd == false) {
	move_cursor_horizontally(590, CursorSound.DIALOG);
	if (x >= 1260) cursor_cantmove(Direction.RIGHT, 590);
}

if (menu = menuStates.APPS and ooboundsyd == false) {
	move_cursor_horizontally(160, CursorSound.APP);
	if (x >= 1595) cursor_cantmove(Direction.RIGHT, 160);
}