/// @description 
reset_variables();

get_gp_input(nb_pad);

calc_gp_movement(nb_pad);

check_gp_fire(nb_pad);

anim();

can_take_book();

have_book(1);//ID du joueur étant 1

//if(!o_player_2.invisible && !invisible)
//{
//	if((place_meeting(x, y, o_player_2)) && (global.haveBook != 0)) //si P1 entre en collision avec P2 et que qlq à déjà le livre
//	{

//			global.canTake = true;
//			global.haveBook = 0;//le livre tombe
//			o_book.x = x+15;
//			o_book.y = y+15;	

//	}

//	if((place_meeting(x, y, o_player_2)) && (global.hadBook == 1))//si P2 vient nous prendre le livre
//	{

//		invisible = true;
//		alpha_coloration =0.5;
//		walk_spd = 0;//le joueur est paralysé
//		alarm_set(2, 120);//pdt 2 sec
//		global.hadBook = 0; //réinitialisation du hadBook après le lancement de l'alarme
	
//	}
//}
if (canTP && global.haveBook == 1)
	teleportation();
	

if(global.haveBook == 1)
{
		if (gamepad_button_check(0, gp_shoulderl)&& use_power)
			{
				randomize();
				variable = floor(random_range(0, 4));//4 non prit
				use_power = false;
				//show_debug_message(variable);
				if (variable == 0)
				{
				//can_create = false
				if (face == 1)
					instance_create_layer(x+8,y-8,"Instances",o_creatWall);
				if (face == 3)
					instance_create_layer(x-24,y-8,"Instances",o_creatWall);
				if (face == 2)
					instance_create_layer(x-8,y+10,"Instances",o_creatWall);
				if (face == 4)
					instance_create_layer(x-8,y-28,"Instances",o_creatWall);
				alarm[4] = 60;
//					instance_create_layer(x-8,y-8,"Instances",o_creatWall);
				}
				if (variable == 1)
				{
					walk_spd = 5;
					alarm[4] = 60;
				}
				if (variable == 2)
				{
					alpha_coloration = 0.2;
					alarm[4] = 60;
				}
				if (variable == 3)
				{
					//show_debug_message("je s'appel groot");
					instance_create_layer(x-8,y-8,"Instances",o_slow);
					alarm[4] = 60;
				}
			}
}