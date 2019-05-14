hsp = 0
vsp = -0
grv = 0.1
done = 0

image_speed = 0
image_index = 0

screenshake(4,+30)
audio_play_sound(sn_deadorc,10,false)

game_set_speed(30,gamespeed_fps)
with (o_camera) follow = other.id