/// @description 
if(room != rm_main)
{
	for(var i=0; i<ds_list_size(lst_players); i++)
	{
			if(i == 0)
			{
				var _id = instance_create_layer(x+i*150, y+i*150, "Instances", o_player);
				with(_id)
				{
					nb_pad = ds_list_find_value(o_game_controller.lst_players, i);
					switch(i)
					{
						case 0: name = "Player 1";
						break;
					}
				}
			}
			
			if(i == 1)
			{
				var _id = instance_create_layer(x+i*150, y+i*150, "Instances", o_player_2);
				with(_id)
				{
					nb_pad = ds_list_find_value(o_game_controller.lst_players, i);
					switch(i)
					{
						case 1 : name = "Player 2";
						break;
					}
				}
			}
			if(i == 2)
			{
				var _id = instance_create_layer(x+i*150, y+i*150, "Instances", o_player_3);
				with(_id)
				{
					nb_pad = ds_list_find_value(o_game_controller.lst_players, i);
					switch(i)
					{
						case 2 : name = "Player 3";
						x = 150;
						y = 150;
						break;
					}
				}
			}
			if(i == 3)
			{
				var _id = instance_create_layer(x+i*150, y+i*150, "Instances", o_player_4);
				with(_id)
				{
					nb_pad = ds_list_find_value(o_game_controller.lst_players, i);
					switch(i)
					{
						case 3 : name = "Player 4";
						break;
					}
				}
			}
	}
}