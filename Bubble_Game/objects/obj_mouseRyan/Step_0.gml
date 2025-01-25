/// @description Insert description here
// You can write your code in this editor

x = mouse_x
y = mouse_y

if (instance_place(x,y,obj_bubbleRyan) && mouse_check_button_pressed(mb_left)){
	bubble=instance_place(x,y,obj_bubbleRyan)
	bubble.selected = true
}