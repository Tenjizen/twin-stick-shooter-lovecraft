/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 543EE555
/// @DnDArgument : "code" "if(haveBook == 1) && (timer != 0)$(13_10){$(13_10)	timer--;$(13_10)	alarm_set(1, 60);$(13_10)}$(13_10)"
if(haveBook == 1) && (timer != 0)
{
	timer--;
	alarm_set(1, 60);
}