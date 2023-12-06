if (live = true)
{
con_Game.pause = true;
alarm[0] = 150;
live = false;
im = stop;
obj_Talking.image_index = im;

if (im != 6) || (im != 5)
{
audio_play_sound(Soplayerinpneg,1,false);
}
if (im = 5)
audio_play_sound(playerTNeg,1,false);
}