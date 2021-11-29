/// @description 
reset_variables();

get_gp_input(nb_pad);

calc_gp_movement(nb_pad);

check_gp_fire(nb_pad);

anim();

can_take_book();

have_book(1);//ID du joueur étant 1

if((place_meeting(x, y, o_player_2)) && (global.haveBook != 0)) //si P1 entre en collision avec P2 et que qlq à déjà le livre
{
	global.canTake = true;
	global.haveBook = 0;//le livre tombe
	o_book.x = x+15;
	o_book.y = y+15;	
	
}

if((place_meeting(x, y, o_player_2)) && (global.hadBook == 1))//si P2 vient nous prendre le livre
{
	walk_spd = 0;//le joueur est paralysé
	alarm_set(2, 120);//pdt 2 sec
	global.hadBook = 0; //réinitialisation du hadBook après le lancement de l'alarme
}


if (canTP && global.haveBook == 1)
	teleportation();