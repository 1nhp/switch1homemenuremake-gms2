function goto_room(targetRoom) {
    global.switchtoroom = targetRoom;
    global.fadeout = true;
    global.fadein = false;
    global.timer = 0;
}