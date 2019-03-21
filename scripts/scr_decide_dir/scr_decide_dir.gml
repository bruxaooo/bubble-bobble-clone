///@scr_decide_dir(dir)
///@param dir

var dir = argument0;
var wid = 800

var hei = 600;
if (dir == 0)
{
	//Velocidade da transição
	var slide = scr_easeout(dura,0,wid,limite);
	//var slide = (dura / (limite-1)) * wid;
	//var slide = lerp((dura / limite) * wid , wid, .04);

	if (surface_exists(surf))
	{
		draw_surface(surf, -slide, 0);	
	}
	if (surface_exists(surf2))
	{
		draw_surface(surf2, wid- slide, 0);	
	}
}
else if (dir == 90)
{
	var slide = scr_easeout(dura,0,hei,limite);
	//var slide = (dura / (limite-1)) * hei;

	if (surface_exists(surf))
	{
		draw_surface(surf, 0, slide);	
	}
	if (surface_exists(surf2))
	{
		draw_surface(surf2, 0, slide - hei);	
	}	
}
else if (dir == 180)
{
	var slide = scr_easeout(dura,0,wid,limite);
	//var slide = (dura / (limite-1)) * wid;

	if (surface_exists(surf))
	{
		draw_surface(surf, slide, 0);	
	}
	if (surface_exists(surf2))
	{
		draw_surface(surf2, slide - wid, 0);	
	}		
}
else if (dir == 270)
{
	var slide = scr_easeout(dura,0,hei,limite);
	//var slide = (dura / (limite-1)) * hei;

	if (surface_exists(surf))
	{
		draw_surface(surf, 0, -slide);	
	}
	if (surface_exists(surf2))
	{
		draw_surface(surf2, 0, hei - slide);	
	}		
}