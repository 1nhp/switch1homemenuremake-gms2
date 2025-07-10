if (Ogametile.scrollright == false and Ogametile.scrolleft == false) {
	Ocursor.y = y
	Ocursor.x = x
	Ocursor.spr_size = 0.22
	Ocursor.menu = menuStates.APPS
	Ocursor.spr = 1
	Ocontroller_tip.greyedout = 1
	Ocontroller_tip.text = "OK"	
}

if waspressed == true{
	event_user(2)
	pressedtwice = true
}