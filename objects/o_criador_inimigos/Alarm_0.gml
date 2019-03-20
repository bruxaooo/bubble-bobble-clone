/// @description Insert description here
// You can write your code in this editor
quantidade--;
if(quantidade>=0)
{
	instance_create_layer(x,y,"inimigos",o_inimigo);

	alarm[0]=room_speed/2;
	
}
else
{
	instance_destroy();
}