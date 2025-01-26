/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_halign(fa_center)
draw_set_color(c_dkgrey)
draw_set_font(global.font)
draw_text_transformed(x,y,"Grade:",0.3,0.3,0)
draw_text_transformed(x,y+150,obj_endGameManager.endGrade,1,1,0)

