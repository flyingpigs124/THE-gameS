var other_enemy = instance_place(x, y, player7);

if (other_enemy != noone && other_enemy != id)
{
    show_debug_message("Colliding with another enemy!");
	other_enemy.x+= 7
}


if (place_meeting(player7.x, player7.y, player8)) {
    x -= 7
}
