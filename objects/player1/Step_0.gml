
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
        global.yspeed=-4
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

image_yscale = global.flip ? -1 : 1;
move_and_collide(global.xspeed, global.yspeed, player3)
