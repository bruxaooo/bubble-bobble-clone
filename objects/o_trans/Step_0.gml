/// @description Insert description here
// You can write your code in this editor
dura++;

if (dura >= limite) instance_destroy();

//Copiando a room nova

if (dura == 2)
{
	surf2 = surface_create(w, h);
	surface_set_target(surf2);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();
	surface_copy(surf2, 0, 0, application_surface);
	
}