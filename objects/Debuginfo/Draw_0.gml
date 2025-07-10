draw_set_alpha(1)
draw_set_color(c_white)

draw_set_font(debug_font)

if instance_exists(Ogametile) {draw_text(50, 130, "Game scrolling container page: " +string(global.page))}
if instance_exists(Ocursor){
draw_text(50, 30, "Rapid left right key delay: " + string(Ocursor.keyholdL))
draw_text(500, 30, Ocursor.keyholdR )
draw_text(50, 80, "Cordinator is scrolling?: " + string(Ocursor.scroll))
draw_text(50, 180, "Cordinator is out of bounds vertically?: " + string(Ocursor.oobounds))
draw_text(50, 240, "Cordinator is out of bounds horizontally?: " + string(Ocursor.ooboundsx))
draw_text(50, 290, "Cordinator green color: " + string(Ocursor.g))
draw_text(50, 340, "Cordinator is lighting?: " + string(Ocursor.light))
draw_text(50, 390, "Game scrolling container timer: " + string(Ogametile.timer))
draw_text(50, 430, "Game scrolling container timer1 : " + string(Ogametile.timer1))
draw_text(50, 480, "Cordinator X : " + string(Ocursor.x))
draw_text(50, 530, "Cordinator Y : " + string(Ocursor.y))
draw_text(50, 580, "Game scrolling container is scrolling right? : " + string(Ogametile.scrollright))
draw_text(50, 630, "Game scrolling container is scrolling left? : " + string(Ogametile.scrolleft))
draw_text(50, 730, "is booting a game? : " + string(global.booting))
}