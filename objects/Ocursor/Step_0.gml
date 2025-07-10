
color = make_color_rgb(37.0, g, b);
if (!light) g -= 4;
if (g <= 140) light = true;
if (g >= 254) light = false;
if (light) g += 4;

if (oobounds){
	ooboundstimer += 1;
	
	if (ooboundstimer < 4) y -= 5;
	else if (ooboundstimer == 4) y += 15;
	else if (ooboundstimer == 7) y += 5;	
	else if (ooboundstimer == 9) y -= 5;			
	else if (ooboundstimer == 10) y -= 1;	
	else if (ooboundstimer == 11){
		y+= 1;
		oobounds = false;
		ooboundstimer = 0;	
	}			
}

if (ooboundsx){
	ooboundstimer += 1;
	
	if (ooboundstimer < 4) x -= 5;
	else if (ooboundstimer == 4) x += 15;
	else if (ooboundstimer == 7) x += 5;	
	else if (ooboundstimer == 9) x -= 5;				
	else if (ooboundstimer == 10) x -= 1;					
	else if (ooboundstimer == 11){
		x += 1;
		ooboundsx = false;
		ooboundstimer = 0;
	}						
}

if (ooboundsxr){
	ooboundstimer += 1;
	
	if (ooboundstimer < 4) x += 5;
	else if (ooboundstimer == 4) x -= 15;
	else if (ooboundstimer == 7) x += 5;
	else if (ooboundstimer == 9) x -= 5;
	else if (ooboundstimer == 10) x += 1;
						
	else if (ooboundstimer == 11){
		x -= 1;
		ooboundsxr = false;
		ooboundstimer = 0;
	}						
}

if (ooboundsyd){
	ooboundstimer += 1;
	
	if (ooboundstimer < 4) y += 5;
	else if (ooboundstimer == 4) y -= 15;
	else if (ooboundstimer == 7) y += 5;	
	else if (ooboundstimer == 9) y -= 5;					
	else if (ooboundstimer == 10) y -= 1;			
	else if (ooboundstimer == 11){
		y += 1;
		ooboundsyd = false;
		ooboundstimer = 0;
	}					
}