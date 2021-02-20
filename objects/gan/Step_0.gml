/// @description Insert description here
// You can write your code in this editor
if instance_number(wakgood_) > 0
{
x += (wakgood_.x - x)*0.1
y += (wakgood_.y+48 - y)*0.1
}
else
{
instance_destroy()
}