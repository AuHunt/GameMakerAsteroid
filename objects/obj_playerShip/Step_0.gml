speed = max(speed - 0.05, 0);

if (global.playerScore == 50 && global.playerVictory == 0) {
	instance_create_layer(x, y, "Instances", obj_timer);
	global.playerVictory = 1;
}