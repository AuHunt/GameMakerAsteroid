audio_play_sound(se_asteroidExplosion, 0, 0);

instance_create_layer(x + 0, y + 0, "Instances", obj_asteroids_s);
instance_create_layer(x + 0, y + 0, "Instances", obj_asteroids_s);

global.playerScore += 1;

rPick = irandom(1);
if (rPick == 0 && global.playerVictory != 1) {
	rPick = irandom(1);
	rCoord = irandom_range(20, 748);
	if (rPick == 0){
		instance_create_layer(1004, rCoord, "Instances", obj_asteroids);
	}
	if (rPick == 1){
		instance_create_layer(20, rCoord, "Instances", obj_asteroids);
	}
}

else if (rPick == 1 && global.playerVictory != 1) {
	rPick = irandom(1);
	rCoord = irandom_range(20, 1004);
	if (rPick == 0){
		instance_create_layer(rCoord, 748, "Instances", obj_asteroids);
	}
	if (rPick == 1){
		instance_create_layer(rCoord, 20, "Instances", obj_asteroids);
	}
}