/// @description Insert description here
// You can write your code in this editor
if (global.tran = true) exit;


var right,left,jump,shoot;
chao=place_meeting(x,y+1,o_col);

if(y>room_height+sprite_height)y=-sprite_height/2;


right=keyboard_check(vk_right);
left=keyboard_check(vk_left);
jump=keyboard_check_pressed(vk_up);
shoot=keyboard_check_pressed(vk_control);

if(delay<20)delay++;



//=============== state machine =============
switch (estado)
{
	case "movendo":
		sprite_index=s_dininho_run;
		image_speed=1;
		
		//definindo direcao
		h_spd=(right-left)*spd;
		if(h_spd!=0)image_xscale=sign(h_spd);
		//_____
		
		//pulando
		if(chao)
		{
			if(jump)estado="pulo";
		}
		else
		{
			v_spd+=grav;
		}
		//_____
		
		//atirando
		if(shoot && delay==20)
		{
			var bolha = instance_create_layer(x,y-15,"frutas",o_bolha);
			bolha.dir= point_direction(0,0,image_xscale,0);
			bolha.image_xscale=image_xscale;
			delay=0;
		}
		
		
		
		//_____
		
		
		
		
		
		//sprite idle
		if(h_spd==0 && v_spd==0)sprite_index=s_dininho_idle;
		break;
		//_____
		
	case "pulo":
		v_spd=-salto;
		
		
		//saindodo pulo 
		estado="movendo";
		break;
		
		
	//====morto===
	case "morto":
		timer_parado--;
		sprite_index=s_player_morto;
		if(image_index>=image_number-1)
		{
			image_speed=0;
		}
		//fico piscando , ate poder voltar ao inicio
		if(timer_parado<=0)
		{
			
			
			if(timer_volta>0)
			{	
				x=xstart;
				y=ystart;
				estado="movendo";
				timer_volta=50;
				timer_parado=90;
				
				image_alpha=1;
			}

		}
		break;
	//_________
}

if(global.inimigos<=0 && !instance_exists(o_criador_inimigos)&& global.tem_ini)
{
	global.tem_ini=false;
	alarm[2]=room_speed*4;
}

//limitando velocidade
v_spd=clamp(v_spd,-salto,salto);
h_spd=clamp(h_spd,-spd,spd);



