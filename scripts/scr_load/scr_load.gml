if (file_exists("Save.sav")) {
	ini_open("Save.sav");
	global.playerGoal = ini_read_real("Save1", "goal", 50);
	ini_close();
}
