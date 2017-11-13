text = "Score: " + string(global.playerScore) + "\n Destroy " + string(global.playerGoal) + " asteroids;";

if (global.playerVictory == 1){ 
	text = "Score: " + string(global.playerScore) + "\n Press Enter to Restart"; 
}

draw_set_color(c_white);
draw_set_font(fnt_scoreFont);
draw_text_transformed(48, 32, text, 1.5, 1.5, image_angle);