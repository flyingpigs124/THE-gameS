yspeed+=0.1
xspeed=0


if keyboard_check(ord("A"))
{
   xspeed=-5


}



if keyboard_check(ord("D"))
{

    xspeed=+5

}


if place_meeting(x, y+1, player3)
{
    yspeed=0
    if keyboard_check(ord("W"))
      {
        yspeed=-4
		}
}



if place_meeting(x, y+1, player2)
{
    room_restart()
}



move_and_collide(xspeed, yspeed, player3)
