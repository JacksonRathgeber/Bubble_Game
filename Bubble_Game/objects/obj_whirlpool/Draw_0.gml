/// @description

x = mouse_x;
y = mouse_y;

if (mouse_check_button(mb_left) && !global.ingredientSelected){
	image_alpha += 0.05;
	draw_self();
}
if(!mouse_check_button(mb_left)  && image_alpha>0){
	
		image_alpha -= 0.05;
		draw_self();
}
