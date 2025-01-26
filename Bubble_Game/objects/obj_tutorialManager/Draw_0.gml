/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_font(global.font)
draw_set_color(c_dkgray)
draw_set_halign(fa_center)
draw_text_ext_transformed(x+420,y-20,activeText,150,1900,0.3,0.3,0)
if manualProgress{
draw_set_color(c_gray)
draw_text_transformed(x+625,y+75,"Click to Continue",0.25,0.25,0)
}