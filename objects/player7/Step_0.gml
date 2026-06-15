var other_enemy = instance_place(x, y, player7);

if (other_enemy != noone && other_enemy != id)
{
    show_debug_message("Colliding with another enemy!");
	other_enemy.x+= 14
}


if place_meeting(x, y+1, player8)
{
    x-=5
    }