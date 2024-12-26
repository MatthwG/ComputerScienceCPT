surface_resize(application_surface,320,180);
display_set_gui_maximize();

u_pos = shader_get_uniform(shd_light, "u_pos");
u_pos2 = shader_get_uniform(shd_shadow, "u_pos");
u_z = shader_get_uniform(shd_light, "u_z");
u_z2 = shader_get_uniform(shd_shadow, "u_z");

vertex_format_begin();
vertex_format_add_position_3d();
vf = vertex_format_end();
vb = vertex_create_buffer();

show_debug_overlay(1)