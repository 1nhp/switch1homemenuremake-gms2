// Can admit that my animation toolkit is barely a toolkit
// Its barely modular and i may need to refactor this someday

//TODO: refactor ts

event_inherited()

if released == false and startapp == false scale = lerp(scale, 0.26, 0.7)
if position_meeting(Ocursor.x, Ocursor.y, self) and startapp == false {
	scale = lerp(scale, 0.32, 0.9)
	waspressed = true
}else{
	waspressed = false
}

if (startapp){
	launchtimer += 1

	if (pressedtwice){
		if launchtimer >= 0{
			scale = lerp(scale, 0.25, 0.5)
			Ocursor.spr_size = lerp(Ocursor.spr_size, 0.18, 0.5)
		}
		if launchtimer >= 7{
			scale = lerp(scale, 0.43, 0.3)
			Ocursor.spr_size = lerp(Ocursor.spr_size, 0.31, 0.3)		
		}	
		if launchtimer >= 15{
			scale = lerp(scale, 0.28, 0.3)
			Ocursor.spr_size = lerp(Ocursor.spr_size, 0.21, 0.3)				
		}		
}
	
	switch (hovered_text){
	case "Nintendo Switch Online":
		if launchtimer >= 2 {
			spr_xscale = lerp(spr_xscale, 0.2, 0.3)
			spr_yscale = lerp(spr_yscale, 0.2, 0.3)
		}
		if launchtimer >= 6 {
			spr_xscale = lerp(spr_xscale, 0.8, 0.3)
			spr_yscale = lerp(spr_yscale, 0.8, 0.3)
		}	
		if launchtimer >= 10 {
			spr_xscale = lerp(spr_xscale, 0.03, 0.3)
			spr_yscale = lerp(spr_yscale, 0.03, 0.3)
		}		
	break
	
	case "News":
		if launchtimer >= 1 {
			spr_xscale = lerp(spr_xscale, 0.1, 0.3)
			spr_yscale = lerp(spr_yscale, 0.1, 0.3)
		}			
		if launchtimer >= 4 {
			spr_xscale = lerp(spr_xscale, 0.4, 0.3)
			spr_yscale = lerp(spr_yscale, 0.4, 0.3)
		}					
		break
		
	case "Nintendo eShop":
		if launchtimer >= 0 ico_y_pos = lerp(ico_y_pos, -25, 0.3)
		if launchtimer >= 4 ico_y_pos = lerp(ico_y_pos, 19, 0.3)
		break
		
	case "Album":
		if launchtimer >= 0 {
			angle = lerp(angle, -70, 0.3)
		}
		
		if launchtimer >= 4 {
			angle = lerp(angle, 160, 0.2)
		}
		if launchtimer >= 5 {
			angle = lerp(angle, -16, 0.2)
			albumico_angle = lerp(albumico_angle, -10, 0.3)
			albumico_y_pos = lerp(albumico_y_pos, 15, 0.3)
			albumico_alpha = lerp(albumico_alpha, 1, 0.2)			
		}		
		break
		
	case "Controllers":
		if launchtimer >= 2 {
			angle = lerp(angle, 15, 0.5)
			spr_xscale = lerp(spr_xscale, 0.15, 0.3)
			spr_yscale = lerp(spr_yscale, 0.15, 0.3)
		}
		if launchtimer >= 6 {
			angle = lerp(angle, 0, 0.5)
			spr_xscale = lerp(spr_xscale, 0.35, 0.3)
			spr_yscale = lerp(spr_yscale, 0.35, 0.3)
		}			
		if launchtimer >= 16 {
			spr_xscale = lerp(spr_xscale, 0.25, 0.3)
			spr_yscale = lerp(spr_yscale, 0.25, 0.3)			
		}								
		break		
		
	case "System Settings":
			if launchtimer >= 2 angle = lerp(angle, -360, 0.5)
		break				
		
	case "Sleep Mode":
		if launchtimer >= 1 {
			spr_xscale = lerp(spr_xscale, 0.1, 0.5)
			spr_yscale = lerp(spr_yscale, 0.1, 0.5)
		}			
		if launchtimer >= 4 {
			spr_xscale = lerp(spr_xscale, 0.3, 0.5)
			spr_yscale = lerp(spr_yscale, 0.3, 0.5)
		}					
		break		
	}

	if launchtimer > 17{
		startapp = false 
		launchtimer = 0
		albumico_angle = 0
		albumico_y_pos = 0
		albumico_alpha = 0
		ico_y_pos = 0
		ico_x_pos = 0
		angle = 0
		pressedtwice = false
		global.locked = false
		global.booting = false
		switch (hovered_text){
			case "Sleep Mode":
				instance_create_depth(display_get_width() / 2, display_get_width() / 3.5, 0, Odialog_box)
			break
		}
		
		
	}
}