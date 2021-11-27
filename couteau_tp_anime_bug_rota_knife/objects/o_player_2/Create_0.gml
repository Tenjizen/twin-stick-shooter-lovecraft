/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 21462CF0
/// @DnDArgument : "code" "///@description Init Variables$(13_10)walk_spd = 1.5;$(13_10)facing = 1; //face right$(13_10)//bow$(13_10)aim_dir = 0; //où pointe l'arc ?$(13_10)bow_dist = 8; //distance de l'arc par apport au joueur$(13_10)fire_rate = 30; //on peut tirer 2x par sec (toutes les 30 frames donc une demie sec)$(13_10)can_fire = true;$(13_10)arrow_speed = 8;$(13_10)$(13_10)my_bow = instance_create_layer(x, y, "Instances", o_bow); //crée une layer exprès$(13_10)$(13_10)cursor_sprite = s_cursor;$(13_10)window_set_cursor(cr_none);$(13_10)$(13_10)timer = 120;//timer à 120 sec soit 2min$(13_10)$(13_10)face = 1;//direction de ou regarde le joueur$(13_10)$(13_10)canTP = true; // peut se téléporter$(13_10)$(13_10)//image_alpha = 0.5;"
///@description Init Variables
walk_spd = 1.5;
facing = 1; //face right
//bow
aim_dir = 0; //où pointe l'arc ?
bow_dist = 8; //distance de l'arc par apport au joueur
fire_rate = 30; //on peut tirer 2x par sec (toutes les 30 frames donc une demie sec)
can_fire = true;
arrow_speed = 8;

my_bow = instance_create_layer(x, y, "Instances", o_bow); //crée une layer exprès

cursor_sprite = s_cursor;
window_set_cursor(cr_none);

timer = 120;//timer à 120 sec soit 2min

face = 1;//direction de ou regarde le joueur

canTP = true; // peut se téléporter

//image_alpha = 0.5;