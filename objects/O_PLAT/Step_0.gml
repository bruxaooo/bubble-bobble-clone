/// @description Insert description here
// You can write your code in this editor
event_inherited();

if(xstart+90<x)avanca=false;
if(xstart-90>x)avanca=true;


if(avanca)
{
h_spd=spd;
}
else
h_spd=-spd;


x+=h_spd;



if(place_meeting(x,y-1,o_player))
{
	
	if(sign(o_player.h_spd)!=sign(h_spd)&& o_player.h_spd!=0)
	{
		o_player.h_spd=-h_spd;
	}
	else
	{
		o_player.h_spd+=h_spd;
	}
	
	
}
