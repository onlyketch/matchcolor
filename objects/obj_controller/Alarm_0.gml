global.rnd_sprite_num = irandom_range(1, 5);
instance_create_layer(80, 452, "Instances", obj_yoki);
alarm[0] = global.game_data.yoki_delay;