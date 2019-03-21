/// @description Insert description here
// You can write your code in this editor
var esc ;
esc = keyboard_check_pressed(vk_escape);

if(room!=rm_menu)
{
	//pausar o jogo 
	if(esc)
	{
		pause=!pause;
	}
	
	
	if(pause)
	{
		//criando surface
		if(surf==0)
		{
			var ww= view_get_wport(view_camera[0]);
			var hh = view_get_hport(view_camera[0]);
			surf=surface_create(ww,hh);
			surface_set_target(surf);
			draw_clear_alpha(c_black,0);
			surface_copy(surf,0,0,application_surface);
			surface_reset_target();
		}
		
		
		//desativo tudo = pauso
		instance_deactivate_all(true);
	}
	else
	{
		//acabar com minha surface
		//se criei superficie
		if(surf!=0)
		{
			surface_free(surf);
			surf=0;
		}
		
		//despauso - reativo tudo 
		instance_activate_all();
	}
	
}



