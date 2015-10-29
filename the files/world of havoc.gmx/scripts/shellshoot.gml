sh=instance_create(x+lengthdir_x(48,image_angle),y+lengthdir_y(48,image_angle),o_pshell1)
sh.speed=argument0
sh.direction=argument1-2+random(4)
s_emit = audio_emitter_create();
if fa=obj_player{audio_play_sound(playerfiring,1,0)}else{//plays sound quiter for player
audio_emitter_position(s_emit,x,y,0)
audio_falloff_set_model(audio_falloff_exponent_distance);
audio_emitter_falloff(s_emit, 50, 3000, 2);
audio_play_sound_on(s_emit, tankfiring, 0, 1);
}
