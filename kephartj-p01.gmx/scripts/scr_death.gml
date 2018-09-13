audio_play_sound(snd_player_die, 0, false); // Player death sound

// Buffer based save
if(instance_exists(global.checkpoint) && global.checkpoint_r == room)
{
    with(global.checkpoint)
    {
        buffer_seek(SaveBuffer, buffer_seek_start, 0);
        game_load_buffer(SaveBuffer);
    }
}
else room_restart(); // Restarts room
