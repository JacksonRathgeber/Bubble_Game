/// @description Insert description here
// You can write your code in this editor

//application_surface_draw_enable(false);

u_resolution = shader_get_uniform(sh_godRays, "iResolution");
u_seconds = shader_get_uniform(sh_godRays, "iTime");

//FAILED WATER TEXTURE CODE
//u_resolution_water = shader_get_uniform(sh_underwater, "iResolution");
//u_seconds_water = shader_get_uniform(sh_underwater, "iTime");


//u_texture_water = shader_get_sampler_index(sh_underwater, "tex_water");


sec = 0;
