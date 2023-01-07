/// @description kill

audio_play_sound(sd_death, 8, false);
instance_destroy(other);
instance_destroy(self);