// 在这个脚本中，你可以分配你的按键布局

left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
roll = keyboard_check_pressed(vk_space);
attack = keyboard_check_pressed(ord("J"));
cover = keyboard_check_pressed(ord("K"));
take_off_cover = keyboard_check_released(ord("K"));
defend = keyboard_check(ord("K"));
dodge = keyboard_check_pressed(ord("L"));

savegame = keyboard_check_pressed(vk_f1);

// ----------------- test ----------------- //
add_drug = keyboard_check_pressed(ord("Q"));