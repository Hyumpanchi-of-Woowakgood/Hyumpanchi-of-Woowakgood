/// @func mdDrawGaussian(sprite, index, range, standard_deviation, x, y, xscale, yscale, image_angle, c_white, alpha)
/// @param sprite index
/// @param image_index
/// @param range range of gaussian blur
/// @param standard_deviation standard deviation of gaussian distribution
/// @param x 
/// @param y 
/// @param xsacle 
/// @param yscale 
/// @param angle 
/// @param color 
/// @param alpha 
function mdDrawGaussian(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10) {

	shader_enable_corner_id(true);

	var __SHADER = mdGaussian, __SPRITE = argument0, __IMG = argument1; //__XSCALE = argument6, __YSCALE = argument7, __ANGLE = argument8, __COLOR = argument9, __ALPHA = argument10;

	shader_set(__SHADER);
	shader_set_uniform_f(shader_get_uniform(__SHADER, "scaler"), clamp(argument2, 1, 15));
	var __texture = sprite_get_texture(__SPRITE, __IMG);
	shader_set_uniform_f(shader_get_uniform(__SHADER, "texelSize"), texture_get_texel_width(__texture), texture_get_texel_height(__texture));
	var UV = texture_get_uvs(__texture);
	shader_set_uniform_f(shader_get_uniform(__SHADER, "uvLT"), UV[0], UV[1]);
	shader_set_uniform_f(shader_get_uniform(__SHADER, "uvRB"), UV[2], UV[3]);
	shader_set_uniform_f(shader_get_uniform(__SHADER, "v"), clamp(argument3, 2, 8));

	draw_sprite_ext(__SPRITE, __IMG, argument4,argument5,argument6*1.01,argument7*1.01,argument8,argument9,argument10);

	shader_reset();

	shader_enable_corner_id(false);


}
