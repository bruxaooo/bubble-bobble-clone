/// @description Insert description here
// You can write your code in this editor


//====state machine
switch (estado)
{
	case "bolha":
		
		
		//morrendo se o player me tocar emquanto estou na bolha 
		if(place_meeting(x,y,o_player))instance_destroy();
		
		break;
	case "movendo":
		sprite_index=s_inimigo;
		
		
		
		break;







}
//======fim state machine
if(estado !="bolha")
{


	v_spd+=grav;




	//colisao
	//horizontal
	if(place_meeting(x+h_spd,y,o_col_enemy))
	{
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
	y+=v_spd;

}






