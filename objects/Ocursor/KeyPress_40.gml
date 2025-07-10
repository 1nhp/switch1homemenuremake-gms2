if (menu == menuStates.APPS or menu == menuStates.DIALOG) {
	if (ooboundsyd == false and ooboundsx == false and ooboundsxr == false) {
		cursor_cantmove(Direction.DOWN, 0)
	}	
}

event_user(3);