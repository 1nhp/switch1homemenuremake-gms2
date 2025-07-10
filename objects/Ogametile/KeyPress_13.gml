// Launch current slot
if (keyboard_check_pressed(vk_enter and position_meeting(Ocursor.x, Ocursor.y, self))) {
    var slot = slot_numbers[currentslot];
    var file = gameslot[? slot];
    if (file != "") {
        execute_shell_simple(file, "");
    } else {
        show_debug_message("No program assigned to " + slot);
    }
}