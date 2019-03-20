/// @description Insert description here
// You can write your code in this editor

if(estado!="caindo")
{
	h_spd=0;
	v_spd=0;
	sprite_index=s_inimigo_bolha;
	if(estado!="bolha")estado="bolha";
	alarm[0]=room_speed*10;
	instance_destroy(other);
}