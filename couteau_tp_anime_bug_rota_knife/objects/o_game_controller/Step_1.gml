/// @description detect gamepads and initialize players

if(init == false)
{
	//init variables
	nb_player = 0;
	lst_players = ds_list_create();
	gamepadDeadzone = 0.3;
	gamepadThreshold = 0.5;
	init = true;

	//detect gamepads
	var _maxpads = gamepad_get_device_count();

	for (var i = 0; i < _maxpads; i++)
	{
	    if (gamepad_is_connected(i))
	    {
	        // do stuff with pad "i"
			nb_player += 1;
			ds_list_add(lst_players, i);
			gamepad_set_axis_deadzone(i, gamepadDeadzone);
			gamepad_set_button_threshold(i, gamepadThreshold);
	    }
	}

	//if(room == rm_main)
	{
		if(nb_player > 0)
			room_goto(rm_game);
	}
}