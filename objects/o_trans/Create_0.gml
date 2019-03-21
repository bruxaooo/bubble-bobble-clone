/// @description Insert description here
// You can write your code in this editor


w = view_get_wport(view_wport[0]);
h = view_get_hport(view_hport[0]);

surf = surface_create(w, h)
surface_set_target(surf);
draw_clear_alpha(c_black, 0);
surface_reset_target();
surface_copy(surf, 0, 0, application_surface);

persistent = true;

dura = 0;
limite = room_speed;

dir = 0;

global.tran = true;