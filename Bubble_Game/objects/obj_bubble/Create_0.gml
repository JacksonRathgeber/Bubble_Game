/// @description

yVel = random_range(0.05,0.5);
accel = random_range(0.1,0.3);
maxVel = 12;

xVel = 0;

state = Bubble_Free;

bounce_damp = 0.025;

radius = obj_manager.mouse_radius;

selected = false
color = color

counter = 0

image_xscale = 0.4;
image_yscale = 0.4;
//image_alpha = 0.75;
//Plays a "forming noise" when the bubble is created
audio_play_sound(Bubble_Formed, 0, false,1,0,random_range(0.8,1.2));

/* Next objectives: 
Start and End Screens

Game Design:
Forcing choice regarding ingredients
Points scale with customer satisfaction


Conveyance: 
Communicate rules to player
Tell player what ingredients are currently in the geyser
Make bubbles more distinct from each other
Visually link bubbles to ingredients

*/