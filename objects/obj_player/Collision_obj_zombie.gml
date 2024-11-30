if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(-1);

<<<<<<< Updated upstream
=======
<<<<<<< HEAD
//trigger destroy zombie
other.dead = true;
=======
>>>>>>> 06b078761bfb5d95fe5a036b6cc030dd2c563042
>>>>>>> Stashed changes

//flicker to indicate player lose health
flicker_timer = 10;
flicker = true;

//trigger destroy zombie
with (other){
	instance_destroy()
}