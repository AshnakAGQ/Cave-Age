    audio_play_sound(snd_player_die, 0, false); // Player death sound

// Buffer based save
if(instance_exists(global.checkpoint) && global.checkpoint_r == room)
{
    with(global.checkpoint)
    {
        ini_open("checkpoint.ini");
        ini_write_real("Cursor", "death", 1);
        ini_write_real("Cursor", "mx", global.mx);
        ini_write_real("Cursor", "my", global.my);
        ini_write_real("Death Data", "score", score - 500); 
        ini_close();
        
        buffer_seek(SaveBuffer, buffer_seek_start, 0);
        game_load_buffer(SaveBuffer);
    }
}
else 
{
    score = global.score_temp - 500;
    room_restart(); // Restarts room
}
