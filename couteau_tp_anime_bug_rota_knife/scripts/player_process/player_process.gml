function reset_variables()
{
	left	= 0;
	right	= 0;
	up		= 0;
	down	= 0;
	hmove	= 0;
	vmove	= 0;//-1 je monte, 1 je descends
}


function get_gp_input(nb_pad)
{
	hmove = gamepad_axis_value(nb_pad, gp_axislh);
	vmove = gamepad_axis_value(nb_pad, gp_axislv);
}

function calc_movement()
{
	hmove = right - left;
	vmove = down - up;
	
	var _facing = (aim_dir < 90 or aim_dir > 270);
	if(_facing == 0)
		_facing = -1;
	facing = _facing;	


	if (aim_dir < 45 and aim_dir > 0||aim_dir < 360 and aim_dir > 315)//viseur a droite du player
	{
		face = 1;
	}
	if (aim_dir < 315 and aim_dir > 235)// viseur en bas du player
	{
		face = 2;
	}
	if (aim_dir < 235 and aim_dir > 145)//viseur a gauche du player
	{
		face = 3;
	}
	if (aim_dir > 45 and aim_dir < 145)// viseur en haut du player
	{	
		face = 4;
	}

	if(hmove != 0 or vmove != 0)
	{
		var _dir = point_direction(0, 0, hmove, vmove);
		hmove = lengthdir_x(walk_spd, _dir);
		vmove = lengthdir_y(walk_spd, _dir);
		
		x += hmove;
		y += vmove;
	}		
	
	aim_dir = point_direction(x, y, mouse_x, mouse_y);
	//my_bow.image_angle = aim_dir;
	
	my_knife.image_angle = aim_dir;
	knifeRota = my_knife.image_angle;
}

function calc_gp_movement()
{	
	var _facing = (aim_dir < 90 or aim_dir > 270);
	if(_facing == 0)
		_facing = -1;
	facing = _facing;
	
	if (aim_dir < 45 and aim_dir > 0||aim_dir < 360 and aim_dir > 315)//viseur a droite du player
	{
		face = 1;
	}
	if (aim_dir < 315 and aim_dir > 235)// viseur en bas du player
	{
		face = 2;
	}
	if (aim_dir < 235 and aim_dir > 145)//viseur a gauche du player
	{
		face = 3;
	}
	if (aim_dir > 45 and aim_dir < 145)// viseur en haut du player
	{	
		face = 4;
	}
	
	if(hmove != 0 or vmove != 0)
	{
		var _dir = point_direction(0, 0, hmove, vmove);
		hmove = lengthdir_x(walk_spd, _dir);
		vmove = lengthdir_y(walk_spd, _dir);
		
		x += hmove;
		y += vmove;
	}
	aim_x = gamepad_axis_value(nb_pad, gp_axisrh);
	aim_y = gamepad_axis_value(nb_pad, gp_axisrv);
	
	if(aim_x >= 0.01 || aim_x <= -0.01)
	    old_aim_x = aim_x;
	if(aim_y >= 0.01 ||	 aim_y <= -0.01)
	    old_aim_y = aim_y;

	//aim_dir = point_direction(x, y, aim_x, aim_y);
	aim_dir = point_direction(x, y, old_aim_x+x, old_aim_y+y);
	
	if (aim_dir < 90 or aim_dir > 270)
		my_knife.image_yscale = 1;
	else
		my_knife.image_yscale = -1;
		
	my_knife.image_angle = aim_dir;
	

function collision()
{
	var _tx = x;
	var _ty = y;
	
	x = xprevious;
	y = yprevious;
	
	var _disx = abs(_tx - x);
	var _disy = abs(_ty - y);
	
	repeat(_disx)
	{
		if(!place_meeting(x+sign(_tx-x), y, o_solid))
			x += sign(_tx-x);
	}	
	
	repeat(_disy)
	{
		if(!place_meeting(x, y+sign(_ty-y), o_solid))
			y += sign(_ty-y);
	}	
}	

function collisionWalltest()
{
	var _tx = x;
	var _ty = y;
	
	x= xprevious
	y = yprevious
	
	//get dist we want to move
	var _distx = abs(_tx - x);
	var _disty = abs(_ty -y);
	
	repeat(_distx)
	{
		if(!place_meeting(x+sign(_tx-x),y,o_creatWall) )
			x+=sign(_tx-x);

	}
	repeat(_disty)
	{
		if(!place_meeting(x,y+sign(_ty-y),o_creatWall))
			y+=sign(_ty-y);

	}
}

function check_fire()
{
	if(mouse_check_button(mb_left)) // si j'appuie sur le bouton gauche de la souris
	{
		if(can_fire)
		{
			can_fire = false; //pr être sûr
			alarm[0]= fire_rate; // est à 30 frames/sec
			//var _dir = point_direction(x, y, mouse_x, mouse_y); // direction de la flèche
			//var _inst = instance_create_layer(x, y, "Arrow", o_arrow); // je crée la flèche
			bow_dist = 2; // arc se rapproche du player (initialement à 8)
			//with(_inst)
			//{
			//	speed = other.arrow_speed;
			//	direction = _dir;
			//	image_angle = _dir; 
			//	owner_id = other; // chaque flèche va contenir l'ID du joueur (par ex, c'est le J1 qui la tiré et pas le J2);
			//}
		}
	}
}

function check_gp_fire(nb_pad)
{
	if(gamepad_button_check(nb_pad, gp_shoulderr))
	{
		if(can_fire)
		{
			can_fire = false; //pr être sûr
			alarm[0]= fire_rate; // est à 30 frames/sec
			var _dir = point_direction(x, y, old_aim_x + x, old_aim_y+ y); // direction de la flèche
			var _inst = instance_create_layer(x, y, "Arrow", o_knife); // je crée la flèche
			bow_dist = 2; // arc se rapproche du player (initialement à 8)
			with(_inst)
			{
				speed = other.arrow_speed;
				direction = _dir;
				image_angle = _dir; 
				owner_id = other; // chaque flèche va contenir l'ID du joueur (par ex, c'est le J1 qui la tiré et pas le J2);
			}
		}
	}
}


function can_take_book() //savoir si le book peut être pris ou non (personne ne l'a dans les mains)
{
	if(global.haveBook == 0)//personne ne l'a, il est par terre
		global.canTake = true; //on peut donc le prendre
	else
		global.canTake = false;		
}

function have_book(i) //savoir qui l'a dans les mains, i étant le paramètre qui aura l'ID du joueur (1, 2, 3 ou 4)
{
	if(global.canTake = true) && (place_meeting(x, y, o_book))//si personne n'a le livre et qu'un des joueurs rentre en collision avec 
		global.haveBook = i; //haveBook prend l'ID du joueur
	
	if(global.haveBook == i)
	{
		o_book.x = x;//le livre suit le joueur
		o_book.y = y;
		global.hadBook = i;//pour savoir qui avait le livre en dernier
	}
	
	if(global.canTake)// on lance les timers des joueurs dès le début du jeu 
		alarm_set(1, 60);	
}


function anim()
{
	if(hmove != 0 or vmove != 0)
	{
		if(face == 1|| face == 3)
			sprite_index = s_player_walk1;
		if(face == 2)
			sprite_index = s_player_walk2;
		if(face == 4)
			sprite_index = s_player_walk4;
	}
	else
	{
		if (face == 1 || face == 3)
			sprite_index = s_player_idle1;
		if(face == 2)
			sprite_index = s_player_idle2;
		if(face == 4)
			sprite_index = s_player_idle4;		
	}
}

function teleportation()
{
	if (place_meeting(x,y,o_tp))
	{
		canTP = false;
		x = o_tp1.x+8;
		y = o_tp1.y+8;
		o_book.x = x;
		o_book.y = y;
		alarm[3] = 60;
	}
	else if (place_meeting(x,y,o_tp1))
	{
		canTP = false;
		x = o_tp.x+8;
		y = o_tp.y+8;
		o_book.x = x;
		o_book.y = y;
		alarm[3] = 60;
	}
}
function competencePlayer()
{
	if (gamepad_button_check(nb_pad, gp_shoulderl)&& use_power)
		{
			randomize();
			global.variable = floor(random_range(0, 4));//4 non prit
			use_power = false;
			//show_debug_message(variable);
			if (global.variable == 0)
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
					//instance_create_layer(x-8,y-8,"Instances",o_creatWall);
			}
			if (global.variable == 1)
			{
				walk_spd = 5;
				alarm[4] = 60;
			}
			if (global.variable == 2)
			{
				alpha_coloration = 0.2;
				alarm[4] = 60;
			}
			if (global.variable == 3)
			{
				//show_debug_message("je s'appel groot");
				instance_create_layer(x-8,y-8,"Instances",o_slow);
				alarm[4] = 60;
			}
		}
	}
}
