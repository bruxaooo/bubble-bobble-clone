/// @description Insert description here
// You can write your code in this editor

if(h_spd!=0)image_xscale=sign(h_spd);

switch (estado)
{
	
//==========caindo	
	case "caindo":
		if(place_meeting(x,y+1,o_col_enemy))
		{
			
			var chance=irandom(100);
			if(chance>50)
			{
				h_spd=-spd;
			}
			else
			{
				h_spd=+spd;
			}
			estado="movendo";
			
		}
		
		if(place_meeting(x+sign(h_spd),y,o_col_full))
		{
			h_spd=-sign(h_spd)*spd;
		}
		break;
//=======movendo
	case "movendo":
	
		// mudando direcao ao bater na parede 
		if(place_meeting(x+sign(h_spd),y,o_col_full))
		{
			h_spd=-sign(h_spd)*spd;
		}
		var cha = irandom(100);

		if(cha>99)
		{	//escolho se desco ou se pulo 
			if(place_meeting(x,y+1,o_col_enemy))
			{
				var cha2 = irandom(100);
				if(cha2>85 && !place_meeting(x+sign(h_spd)*spd,y+1,o_col_enemy))
				{	//pulo
					var cha3=irandom(100);
					if(cha3>50)
					{
						estado="pula";
						v_spd=-salto;
						ultimoy=y;
					}
					else
					{
						h_spd=-sign(h_spd)*spd;
					}
				}
				else if(cha2>30 && place_meeting(x,y-49,o_col_enemy))
				{
					estado="pula";
					v_spd=-salto;
					ultimoy=y;
				}//desco
				else if(!place_meeting(x+sign(h_spd)*spd,y+33,o_col_enemy))
				{
					estado="desce";
					ultimoy=y;
					
					
				}
				
			}
		}
		
		
		
		
		break;
//======pulando
	case "pula":

		if(ultimoy>y+70)estado="caindo";
		if(v_spd>0)estado="caindo";
	
		
		
		break;
//===== descendo
	case "desce":
		if(ultimoy<y-30)estado="caindo";
		

		break;
//==== bolha 
	case "bolha":
		//morrendo se o player me tocar emquanto estou na bolha 
		if(place_meeting(x,y,o_player))
		{
			instance_destroy();
			global.inimigos--;
			
		//adicionar pontuacao e criar bonus aki
		}
		break;
}







show_debug_message(estado);


















/*
if(h_spd!=0)image_xscale=sign(h_spd);
if (estado!="bolha")v_spd+=grav;
var parede_dir = place_meeting(x+1,y,o_col_enemy);
var parede_esq = place_meeting(x-1,y,o_col_enemy);




randomize();
//====state machine
switch (estado)
{
	case "caindo":
	
	
		if(place_meeting(x,y+1,o_col_enemy))
		{
			h_spd-=spd;
			estado="movendo";
			
		}
		break;
	case "bolha":
		
		
		//morrendo se o player me tocar emquanto estou na bolha 
		if(place_meeting(x,y,o_player))
		{
			instance_destroy();
		
		//adicionar pontuacao e criar bonus aki
		}
		
		
		
		break;
	case "movendo":
		sprite_index=s_inimigo;

		
		var cha = irandom(100);
		//ando na horizontal
		if(place_meeting(x+sign(h_spd),y,o_col_full))
		{
			h_spd=-sign(h_spd)*spd;
		}
		if(cha>99)
		{	//escolho se desco ou se pulo 
			if(place_meeting(x,y+1,o_col_enemy))
			{
				var cha2 = irandom(100);
				if(cha2>40 && !place_meeting(x+sign(h_spd)*spd,y,o_col_enemy))
				{	//pulo
					estado="pula";
					v_spd=-salto;
					ultimoy=y;
				}	//desco
				else if(!place_meeting(x,y+33,o_col_enemy))
				{
					estado="desce";
					ultimoy=y;
					
				}
			}
		}
		
		break;
		
		
		
		
		
	case "desce":
		
		if(ultimoy<y-30)estado="movendo";
		break;
	case "pula":
		if(ultimoy>y+70)estado="movendo";
		break;
}
//======fim state machine




