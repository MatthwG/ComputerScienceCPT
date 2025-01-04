surface_resize(application_surface,320,180);
display_set_gui_maximize();
application_surface_draw_enable(false);
u_pos = shader_get_uniform(shd_light, "u_pos");
u_zz = shader_get_uniform(shd_light, "zz");
u_pos2 = shader_get_uniform(shd_shadow, "u_pos");


vertex_format_begin();
vertex_format_add_position_3d();
vf = vertex_format_end();
vb = vertex_create_buffer();

shad_surf = noone;
//show_debug_overlay(1)