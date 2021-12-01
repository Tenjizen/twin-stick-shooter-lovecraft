/// @description 
reset_variables();

get_gp_input(nb_pad);

calc_gp_movement(nb_pad);

check_gp_fire(nb_pad);

anim();

can_take_book();

have_book(4);//ID du joueur étant 4

if (canTP && global.haveBook == 2)
	teleportation();
	
if(global.haveBook == 4)
{
	competencePlayer();
}