///@param camera_zoom
///@param shake_view
///@param view_angle_shake
function view_shake(argument0, argument1, argument2) 
{
	if room != room4
	{
		if global.nickname = "멀미"
		{
		var zoom_scale = argument0*3
		var shake_scale = argument1*3
		var angle_shake_ = argument2/2
		}
		else
		{
		var zoom_scale = argument0*1.7
		var shake_scale = argument1*1.8
		var angle_shake_ = argument2/5
		}
	
		global.shake_time = 0
		if shake_scale*13 < global.t_shake_x
		{
		global.t_shake_x = shake_scale*10;
		}
		else
		{
		global.t_shake_x += shake_scale*4.5;
		}

		if shake_scale*0.7 < global.t_shake_y
		{
		global.t_shake_y = shake_scale*0.9;
		}
		else
		{
		global.t_shake_y += shake_scale*0.45;
		}
		global.shake_x = choose(-1,1)
		global.shake_y = choose(-1,1)

		if global.playing_scene = 0
		{
		global.view_angle_ = choose(-1,1)*angle_shake_
		}

		if instance_number(obj_camera) > 0
		{
		obj_camera.v_x -= zoom_scale*1.28
		obj_camera.v_y -= zoom_scale*0.72
		}
	}
}
