switch(cPos)
{
    case 0:     room_goto(rm_init);
                break;
    case 1:     if(!disable_submit) msg = get_string_async("What's your name?","Anon");
                break;
    case 2:     game_end();
                break;
    default:    break;
}
