x += hsp;

// turn after 200 pixels
if abs(x - start_x) >= 200
{
    hsp = -hsp;
    start_x = x;
}

// wall detection (player3 is solid)
if place_meeting(x + hsp, y, player3)
{
    hsp = -hsp;
    start_x = x;
}