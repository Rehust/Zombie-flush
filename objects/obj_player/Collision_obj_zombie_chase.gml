if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(-1);

//trigger destroy zombie_chase
other.destroy = true;

//flicker to indicate player lose health
flicker_timer = 10;
flicker = true;

