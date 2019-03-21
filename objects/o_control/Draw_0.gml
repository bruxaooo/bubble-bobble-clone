/// @description Insert description here
// You can write your code in this editor
if(room!=rm_menu)
{
	// pause menu
	if(pause )
	{
		//superficie existe??
		if(!surface_exists(surf))
		{
			//recriando surface
			var ww= view_get_wport(view_camera[0]);
			var hh = view_get_hport(view_camera[0]);
			surf=surface_create(ww,hh);
			surface_set_target(surf);
			draw_clear_alpha(c_black,0);
			surface_reset_target();
		}
		else//a superficie existe
		{
			//desenhando suiperficie
			var xx = camera_get_view_width(view_camera[0]);
			var yy = camera_get_view_height(view_camera[0]);
			draw_surface_stretched(surf,0,0,xx,yy);
			
			//escurecendo imagem
			
			draw_set_alpha(.6);
			draw_set_color(c_black);
			draw_rectangle(0,0,room_width,room_height,false);
			
			draw_set_alpha(1);
			draw_set_color(c_white);
			
			
		}
		
		
	}
	
	
}






