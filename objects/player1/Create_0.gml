window_set_size(1920,1080)
global.xspeed=0
global.yspeed=0
global.flip=false
if (instance_number(player1) > 1)
{
    instance_destroy();
}