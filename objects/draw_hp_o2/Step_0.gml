/// @description Insert description here
// You can write your code in this editor
yy = (obj_camera.v_y/720)*48/1.25
x_plus = (obj_camera.v_x/1280)*48/1.25
image_xscale = ((obj_camera.v_x)/1280)/(64/48)
image_yscale = ((obj_camera.v_y)/720)/(64/48)

depth = obj_camera.depth+2
