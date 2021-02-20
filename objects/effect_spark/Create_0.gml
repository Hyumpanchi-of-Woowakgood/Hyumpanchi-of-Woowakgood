/// @description Insert description here
// You can write your code in this editor
if global.l_q_grap > 0
{
instance_destroy()
}

for(var i = 0; i <= 31; i++)
{
spark_x[i] = x
spark_y[i] = y
}
time = 0
time_s = 1
alpha = 0
alpha2 = 0.4
bounced_time = 4.3

image_xscale = 6/64
image_yscale = 6/64

random_alpha_des = 0
random_alpha_des = irandom_range(1,100)