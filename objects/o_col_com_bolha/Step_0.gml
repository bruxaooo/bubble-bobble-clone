/// @description Insert description here
// You can write your code in this editor
if(instance_exists(o_bolha))
{
	//estou mais baixo que o player
	if(o_bolha.y<y)mask_index=s_sem_colisao;
	else mask_index=s_col_com_bolha;
}