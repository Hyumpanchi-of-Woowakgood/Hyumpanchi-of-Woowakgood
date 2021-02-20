/// @description Insert description here
// You can write your code in this editor

if instance_number(obj_camera) > 1
{
instance_destroy()
}

v_x = 1280
v_y = 720

t_x = -4
t_y = -4

//복구 뷰
tv_x = 1280
tv_y = 720


global.saved_view_xscale = v_x
global.saved_view_yscale = v_y
global.saved_view_t_xscale = tv_x
global.saved_view_t_yscale = tv_y

global.shake_x = 1
global.shake_y = 1
global.real_shake_x = 0
global.real_shake_y = 0
global.t_shake_x = 0;
global.t_shake_y = 0;
global.shake_time = 0
global.terror = 0
global.terror_zero = 0
global.view_angle_ = 0
global.black_ = 0
global.t_black_ = 0
global.w_alpha2 = 0


view_smaller = 0
