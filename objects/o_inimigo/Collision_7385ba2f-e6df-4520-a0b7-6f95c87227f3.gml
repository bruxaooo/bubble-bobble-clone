/// @description Insert description here
// You can write your code in this editor

if(estado=="bolha")
{	
	if(other.x>x)x-=.1;
	if(other.x<x)x+=.1;
	var escolha = irandom(1);
	if(escolha==1)
	{
		x-=.3
	}
	else
	{
		x+=.3
	}
}