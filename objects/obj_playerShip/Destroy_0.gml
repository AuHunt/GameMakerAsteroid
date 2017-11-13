global.playerDeath = 1;
global.playerScore -= 1;
if (global.playerGoal > 50) { global.playerGoal -= 25; }

instance_create_layer(0, 0, "Instances", obj_timer);

script_execute(scr_save);