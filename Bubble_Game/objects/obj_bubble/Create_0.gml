/// @description

yVel = random_range(0.05,0.5);
accel = random_range(0.05,0.1);
maxVel = 20;

xVel = 0;

state = Bubble_Free;

dormant_timer = 480;
dormant_count = 0;

bounce_damp = 0.025;

radius = obj_manager.mouse_radius;

selected = false
color = color

alarm[0] = 1800;

/* Next objectives: 

Bubble manager (ds_list)
Write code for mouse dragging (mouse as target + lerp for smoothness)
Dragged object tracked in manager
Dragged items lerp back to original positions (except bubbles)
Customer / Order list in manager

*/