/// @description Insert description here
// You can write your code in this editor

//colisao
//horizontal
if(place_meeting(x+h_spd,y,o_col))
{
	while(!place_meeting(x+sign(h_spd),y,o_col))
	{
		x+=sign(h_spd);
	}
	h_spd=0;
}
x+=h_spd;

//vertical
if(place_meeting(x,y+v_spd,o_col))
{
	while(!place_meeting(x,y+sign(v_spd),o_col))
	{
		y+=sign(v_spd);
	}
	v_spd=0;
}
y+=v_spd;

