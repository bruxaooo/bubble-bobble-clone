/// @description Insert description here
// You can write your code in this editor
if (estado!="bolha")v_spd+=grav;

	if(place_meeting(x+h_spd,y,o_col_enemy))
	{
		if(estado=="movendo" || estado=="caindo")
		{	
			while(!place_meeting(x+sign(h_spd),y,o_col_enemy))
			{
				x+=sign(h_spd);
			}
			h_spd=0;
		}
	}
	x+=h_spd;

	//vertical
	if(place_meeting(x,y+v_spd,o_col_enemy))
	{
		if(estado=="movendo" || estado=="caindo")
		{
			while(!place_meeting(x,y+sign(v_spd),o_col_enemy))
			{
				y+=sign(v_spd);
			}
			v_spd=0;
		}
	}
	y+=v_spd;



















/*if(estado =="caindo" ||v_spd<0 || estado!="desce")
{

	

	//colisao
	//horizontal
	if(place_meeting(x+h_spd,y,o_col_enemy))
	{
		h_spd=sign(h_spd)*spd;
		while(!place_meeting(x+sign(h_spd),y,o_col_enemy))
		{
			x+=sign(h_spd);
		}
		h_spd=0;
	}
	x+=h_spd;

	//vertical
	if(place_meeting(x,y+v_spd,o_col_enemy))
	{
		while(!place_meeting(x,y+sign(v_spd),o_col_enemy))
		{
			y+=sign(v_spd);
		}
		v_spd=0;
	}
	

}
else
{
	//colisao
	//horizontal
	if(place_meeting(x+h_spd,y,o_col_full))
	{
		h_spd=sign(h_spd)*spd;
		while(!place_meeting(x+sign(h_spd),y,o_col_full))
		{
			x+=sign(h_spd);
		}
		h_spd=0;
	}
	x+=h_spd;

	//vertical
	if(place_meeting(x,y+v_spd,o_col_full))
	{
		while(!place_meeting(x,y+sign(v_spd),o_col_full))
		{
			y+=sign(v_spd);
		}
		v_spd=0;
	}
	y+=v_spd;
}




