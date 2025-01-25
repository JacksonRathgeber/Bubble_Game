/// @description Insert description here
// You can write your code in this editor

yVel = 0;
xVel = 0;
accel = 0.25;
maxVel = 5;

selected = false


function AddForce(xForce,yForce){
	xVel += xForce;
	yVel += yForce;
}