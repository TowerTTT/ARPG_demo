///@arg injure_degree

var injure_degree = argument0;

var injured = instance_create_layer(o_camera.x,o_camera.y,"UI",o_injured);
injured.damage_degree = injure_degree;