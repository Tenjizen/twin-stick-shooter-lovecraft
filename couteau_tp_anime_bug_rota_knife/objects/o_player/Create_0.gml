///@description Init Variables
//gamepads variables
nb_pad = 0;
aim_x = 0;
aim_y = 0;
old_aim_x = 0;
old_aim_y = 0;

//multiplayer variables
kill = 0;
death = 0;
team = 0;
name = "";

walk_spd = 1.5;
facing = 1; //face right
face = 1; //pour les animes en fonction de l'angle de la souris

//bow
aim_dir = 0; //où pointe l'arc ?
bow_dist = 8; //distance de l'arc par apport au joueur
fire_rate = 30; //on peut tirer 2x par sec (toutes les 30 frames donc une demie sec)
can_fire = true;
//arrow_speed = 8;

//my_bow = instance_create_layer(x, y, "Instances", o_bow); //crée une layer exprès
my_knife = instance_create_layer(x, y, "Instances", o_knife); //crée une layer exprès
knifeRota = 0;

//cursor_sprite = s_cursor;
//window_set_cursor(cr_none);

timer = 120;//timer à 120 sec soit 2min

canTP = true;
can_create = true;

invisible = false;
alpha_coloration = 1;