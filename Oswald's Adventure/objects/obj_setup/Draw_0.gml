var _u_pos = u_pos;
var _u_pos2 = u_pos2;
var _vb = vb;
var _u_z = u_z;
var _u_z2 = u_z2;
gpu_set_ztestenable(1);
gpu_set_zwriteenable(1);
var _z = 0;
with(obj_light){
	shader_set(shd_shadow);
	shader_set_uniform_f(_u_pos2,x,y);
	shader_set_uniform_f(_u_z2,_z);
	vertex_submit(_vb,pr_trianglelist,-1);
	
	gpu_set_blendmode(bm_add);
	shader_set(shd_light);
	shader_set_uniform_f(_u_pos,x,y);
	shader_set_uniform_f(_u_z,_z);
	draw_rectangle(0,0,320,180,0);
	gpu_set_blendmode(bm_normal);
	
	_z--;
}
shader_reset();
gpu_set_ztestenable(0);
gpu_set_zwriteenable(0);