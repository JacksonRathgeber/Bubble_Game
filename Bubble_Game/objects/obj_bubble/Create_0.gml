/// @description

yVel = random_range(0.1,0.5);
accel = random_range(0.05,0.1);

xVel = 0;

state = Bubble_Free;

target = noone;

dormant_timer = 480;
dormant_count = 0;


/* Next objectives: 

Bubble collision (point_direction?)
Bubble entering dormant state
Bubble manager (ds_list)
Parent for draggable things (ingredients, bubbles?), shared functions
Write code for mouse dragging (mouse as target + lerp for smoothness)
Dragged object tracked in manager
Dragged items lerp back to original positions (except bubbles)
Customer / Order list in manager

*/