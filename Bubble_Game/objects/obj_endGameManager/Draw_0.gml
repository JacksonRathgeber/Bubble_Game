/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_dkgrey)
draw_set_alpha(alpha)
draw_rectangle(0,0,room_width,room_height,false)
draw_set_alpha(1)
if alpha < alphaMax{
	alpha += 0.025
}else{
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_text_transformed(room_width/2,100,"Shift Ended!",1,1,0)
	draw_set_color(c_dkgrey)
}
