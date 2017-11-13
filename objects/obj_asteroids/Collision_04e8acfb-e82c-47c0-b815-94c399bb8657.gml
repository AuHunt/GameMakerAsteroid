if (global.playerVictory != 1) {
	with(other) instance_destroy();

	instance_create_layer(x, y, "Instances", obj_debris);
	instance_create_layer(x, y, "Instances", obj_debris);
	instance_create_layer(x, y, "Instances", obj_debris);
}