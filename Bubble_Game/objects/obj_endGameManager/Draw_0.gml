/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_dkgrey)
draw_set_alpha(alpha)
draw_rectangle(0,0,room_width,room_height,false)
draw_set_alpha(1)
draw_set_valign(fa_center)
if alpha < alphaMax{
	alpha += 0.025
}else{
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_text_transformed(room_width/2,100,"Shift Ended!",1,1,0)
	draw_set_color(c_dkgrey)
	if !statsIn{
		statsIn = true
		instance_create_depth(648,352,-10000,obj_endStats)
		instance_create_depth(1280,352,-10000,obj_endStats2)
		instance_create_depth(648,976,-10000,obj_startButton)
		instance_create_depth(1280,986,-10000,obj_menuButton)
	}
}
