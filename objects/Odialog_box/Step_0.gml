switch global.dialog{
	case true:
		if (scale < 0.79){
			bg_alpha = lerp(bg_alpha, 0.6, 0.5)
			bg2_alpha = lerp(bg2_alpha, 0.06, 0.5)
			scale = lerp(scale, 0.78, 0.3)
			alpha = lerp(alpha, 1, 0.15)
			text_scale = lerp(text_scale, 0.5, 0.3)
		}
	break
	
	case false:
	if (scale < 0.79){	
		delay += 1
		hovereffect_alpha = lerp(hovereffect_alpha, 0.4, 0.5)
	}
	if (delay > 8) {
		bg_alpha = lerp(bg_alpha, 0, 0.5)
		bg2_alpha = lerp(bg2_alpha, 0, 0.5)
		scale = lerp(scale, 0.6, 0.3)
		alpha = lerp(alpha, 0, 0.4)
		hovereffect_alpha = lerp(hovereffect_alpha, 0, 0.4)		
	}
		if (delay > 13) {
			instance_destroy(self)
			Ocursor.x = global.prevX
			Ocursor.y = global.prevY
			Ocursor.spr_size = 0.56;
			Ocursor.spr = 0;
			Ocursor.spr_index = spr_cordinator_rect
			Ocursor.menu = menuStates.GAMES
			Ocursor.alpha = 1
	}
	break	
}