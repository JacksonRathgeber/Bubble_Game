/// @description Insert description here
// You can write your code in this editor

yVel += accel
yVel = clamp(yVel, 0, maxVel)

if (instance_place(x,y,obj_bubbleRyan)){
	col = instance_place(x,y,obj_bubbleRyan)
	col.AddForce(xVel,yVel);
}

if (selected){
	xVel += mouse_x - x;
	yVel += mouse_y -y;
}

y -= yVel
x += xVel


