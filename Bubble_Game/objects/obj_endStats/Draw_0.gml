/// @description Insert description here
// You can write your code in this editor

draw_self()
draw_set_halign(fa_center)
draw_set_color(c_dkgrey)
draw_set_font(global.font)
draw_text_transformed(x,y,"Customers Served:",0.3,0.3,0)
draw_text_transformed(x,y+50,global.served,0.5,0.5,0)
draw_text_transformed(x,y+150,"Customers Missed:",0.3,0.3,0)
draw_text_transformed(x,y+200,global.missed,0.5,0.5,0)
draw_text_transformed(x,y+300,"Total Score:",0.3,0.3,0)
draw_text_transformed(x,y+375,global.score,0.75,0.75,0)