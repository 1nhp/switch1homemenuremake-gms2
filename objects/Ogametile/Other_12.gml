ini_open("programs.ini");

for (var i = 0; i < array_length(slot_numbers); i++) {
    var slot = slot_numbers[i];
    var value = gameslot[? slot];

    if (string_length(value) > 0) {
        ini_write_string("programs", slot, value);
        ini_write_string("icons", slot, string(icons[? slot]));
        ini_write_string("gamename", slot, gamenames[? slot]);
        ini_write_string("iconpath", slot, iconpaths[? slot]);
    }
}

ini_close();
