var other_enemy = instance_place(x, y, player7);

if (other_enemy != noone && other_enemy != id)
{
    show_debug_message("Colliding with another enemy!");
	other_enemy.x+= 7
}


if (place_meeting(x, y, player8))
{
    var playerhit = instance_place(x, y, player8);

    if (playerhit != noone)
    {
        var dir = sign(playerhit.x - x);

        // move out until NOT colliding
        while (place_meeting(playerhit.x, playerhit.y, id))
        {
            playerhit.x += dir;
        }
    }
}