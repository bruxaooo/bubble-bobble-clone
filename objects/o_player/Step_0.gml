/// @description Insert description here
// You can write your code in this editor
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
		if(timer_parado<=0)
		{
			
			
			if(timer_volta>0)
			{
				timer_volta--;
				var direcao= point_direction(0,0,-1,-1);
				x+=lengthdir_x(spd,direcao);
				y+=lengthdir_y(spd,direcao);
			}
			if(timer_volta<=0)
			{
				var direcao=point_direction(x,y,xstart,ystart);
				x+=lengthdir_x(spd*2,direcao);
				y+=lengthdir_y(spd*2,direcao);

				if(instance_place(x,y,o_inicio))
				{
					estado="movendo";
					timer_volta=50;
					timer_parado=50
					show_debug_message(estado)
					image_alpha=1;
				}
			}
		}
		break;
	//_________
}



//limitando velocidade
v_spd=clamp(v_spd,-salto,salto);




