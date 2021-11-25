reset_variables();

get_input();

calc_movement();

check_fire();

anim();

if(place_meeting(x, y, o_book))	&& (cooldown == 0)
{	
	haveBook = 1;	
	o_book.x = x;
	o_book.y = y;
}

if(keyboard_check_pressed(ord("E")))
{
	cooldown = 1;
	haveBook = 0;
	alarm_set(2, 30);	
}

if (haveBook == 0)
	alarm_set(1, 60);
	
