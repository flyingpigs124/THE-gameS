global.yspeed+=0.1
global.xspeed=0


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
}
if place_meeting(x, y+1, player2)
{
    instance_create_layer(x, y, "Instances_1", player4)
}



move_and_collide(global.xspeed, global.yspeed, player3)
