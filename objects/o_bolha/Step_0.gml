/// @description Insert description here
// You can write your code in this editor





//===========estate machine====

switch(estado)
{
	case "avanca":
		//direcao 
		var limite_x=lengthdir_x(limite,dir);
		
		
		//movendo
		
		x+=lengthdir_x(spd,dir);
		y+=lengthdir_y(spd,dir);
		
		
		
		//trocando estado
		if(limite_x>0)
		{
			if(x>xstart+limite_x)estado="sobe";
		}
		else if (limite_x<0)
		{
			if(x<xstart+limite_x)estado="sobe";
		}
		
		if(place_meeting(x+(sign(image_xscale)*3),y,o_col_com_bolha_full))estado="sobe";
		
		
		break;
		
	case "sobe":
		
		
		
		
		
		if(ystart-limite_y>y)instance_destroy();
		
		
		
		if (!instance_place(x,y-1,o_col_com_bolha_full))
		{
			y--;
		}	
		else if(place_meeting(x,y-1,o_col_com_bolha_full))
		{
			if(!place_meeting(x+sign(image_xscale),y,o_col_com_bolha_full))
			{	
				x+=sign(image_xscale);
			}
		}
		
		
		
		break;	
		
}
