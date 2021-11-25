///@description draw correct facing 

draw_sprite_ext(sprite_index, image_index, x, y, facing, 1, 0, c_white, 1);
if(haveBook == 1) && (timer != 0)
	draw_text_transformed(x-7, y-22, timer, 0.5, 0.5, 0);
	
if(timer == 0)
{
	draw_text_transformed(x-7, y-22, "YOU WON", 0.5, 0.5, 0);
	draw_set_color(c_red);	
}