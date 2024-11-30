if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(-1);


//flicker to indicate player lose health
flicker_timer = 10;
flicker = true;

//trigger destroy zombie
with (other){
	instance_destroy()
}