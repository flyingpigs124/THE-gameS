
global.xspeed=0
if (global.flip)
{
    global.yspeed -= 0.1; // gravity UP
}
else
{
    global.yspeed += 0.1; // gravity DOWN
}
if place_meeting(x, y-1, player3)
    {
        global.yspeed = 0;

        if keyboard_check(ord("W"))
        {
            global.yspeed = 4.5; // jump DOWN
        }
    }

if keyboard_check(ord("A"))
{
   global.xspeed=-5


}



if keyboard_check(ord("D"))
{

    global.xspeed=+5

}


if place_meeting(x, y+1, player3)
{
    global.yspeed=0
    if keyboard_check(ord("W"))
      {
        global.yspeed=-4.5
		}
}

if place_meeting(x, y+1, player4)
{
    global.xspeed=-80
	global.flip = !global.flip;
}
if place_meeting(x, y+1, player2)
{
    instance_create_layer(x, y, "Instances_1", player4)
}
if (place_meeting(x, y + 1, player5))
{
    if (global.flip)
    {
        global.yspeed = 100000000000;
    }
    else
    {
        global.yspeed = -6;
    }
}
if place_meeting(x, y+1, player6)
{
    global.xspeed *= 2
}

if (place_meeting(x, y, player7))
{
    // Check if the push key is pressed (e.g., "D" for right, "A" for left)
    if (keyboard_check(ord("D")))
    {
		
        // Push player7 to the right
        player7.x += 7;
		global.yspeed = 0;
    }
    else if (keyboard_check(ord("A")))
    {
        // Push player7 to the left
        player7.x -= 7;
		global.yspeed = 0;
    }
}

// Detect collision from above
if (place_meeting(x, y + 1, player7))
{
    y = player7.bbox_top - sprite_height; // position on top
    global.yspeed = 0;

    // Optional: Jump from platform
    if (keyboard_check(ord("E")))
    {
        global.yspeed = -4.5;
    }
}



image_yscale = global.flip ? -1 : 1;
move_and_collide(global.xspeed, global.yspeed, player3)
