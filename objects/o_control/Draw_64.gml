/// @description Insert description here
// You can write your code in this editor

var up,down,enter;
up = keyboard_check_pressed(vk_up);
down=keyboard_check_pressed(vk_down);
enter=keyboard_check_pressed(vk_enter);


if(pause)
{
	//dimencoes da view
	var pos_x = view_get_wport(view_camera[0])/2;
	var pos_y = view_get_hport(view_camera[0])/2;


	//opcoes
	//texto
	draw_set_font(f_opcoes);
	
	
	//movendo pelas opcoes
	if(up)
	{
		if(pause_s>0)pause_s--;
		else pause_s = array_length_1d(opcoes_p)-1;
	}
	if(down)
	{
		if(pause_s<array_length_1d(opcoes_p)-1)pause_s++;
		else pause_s = 0;
	}
	
	if(enter)
	{
		//funcoes para opcoes
		switch(pause_s)
		{
			//continuar
			case 0:
				pause=!pause;
				pause_s=0;
			
				break;
			//reiniciar
			case 1:
				pause=!pause;
				pause_s=0;
				room_restart();
			
				break;
			//sair
			case 2:
				pause=!pause;
				pause_s=0;
				game_end();
		
				break;
		}
	}
	
	
	var c1 = c_white;
	var c2 = c_black;
	
	
	
	
	for(var i=0;i<array_length_1d(opcoes_p);i++)
	{
		var sep = string_height(opcoes_p[0]);
		if(pause_s==i)
		{
			c1=c_red;
		}
		else
		{
			c1=c_white;
		}
		//sombra
		draw_set_color(c2);
		draw_text(pos_x/1.3+2,pos_y/1.5 + i*sep+2,opcoes_p[i]);
	
		//texto
		draw_set_color(c1);
		draw_text(pos_x/1.3,pos_y/1.5 + i*sep,opcoes_p[i]);
	}


	draw_set_color(c1);
	draw_set_font(-1);



}


