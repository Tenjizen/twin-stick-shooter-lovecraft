/// @description correct bow
var _depth = (aim_dir > 0 and aim_dir < 180)
//my_bow.depth = depth + _depth;
my_knife.depth = depth + _depth;

//my_bow.x = x + lengthdir_x(bow_dist, aim_dir);
my_knife.x = x + lengthdir_x(bow_dist, aim_dir);
//my_bow.y = y + lengthdir_y(bow_dist, aim_dir);
my_knife.y = y + lengthdir_y(bow_dist, aim_dir);

bow_dist = lerp(bow_dist, 8, 0.1);	// "transition" entre les valeurs, l=ici de 2 à 8
