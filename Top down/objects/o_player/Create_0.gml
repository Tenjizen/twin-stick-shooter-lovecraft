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


//livre
haveBook = 0;
timer = 5;
cooldown = 0;
