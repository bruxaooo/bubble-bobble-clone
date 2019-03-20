/// @description Insert description here
// You can write your code in this editor
if(estado =="caindo"||v_spd>0 && estado!="desce")
{

	

	//colisao
	//horizontal
	if(place_meeting(x+h_spd,y,o_col_enemy))
	{
		h_spd=sign(h_spd)*spd;
		while(!place_meeting(x+sign(h_spd),y,o_col_enemy))
		{
			x+=sign(h_spd);
		}
		h_spd=0;
	}
	
x+=h_spd;
	//vertical
	if(place_meeting(x,y+v_spd,o_col_enemy))
	{
		while(!place_meeting(x,y+sign(v_spd),o_col_enemy))
		{
			y+=sign(v_spd);
		}
		v_spd=0;
	}
	

}
y+=v_spd;



//// Componentes de velocidade horizontal/X e vertical/Y
//var xx = sign(h_spd)*spd;
//var yy = sign(v_spd)*spd;

//// Distancia que sera percorrida
//var h = point_distance(x, y, xx, yy);

//// Maior que a velocidade maxima?
//if h >= spd
//{
//    // Reduz os componentes X e Y
//    var scalar = spd/h;
//    xx *= scalar
//    yy *= scalar
//}

//x += xx
//y += yy