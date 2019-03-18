/// @description Insert description here
// You can write your code in this editor
if(instance_exists(o_player))
{
	//estou mais alto que o player
	if(o_player.y>y)mask_index=s_sem_colisao;
	else mask_index=s_bloco;
}