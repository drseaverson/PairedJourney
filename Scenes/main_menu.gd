extends Control


func _ready():
	pass
	#$VBoxContainer/StartButton.grab_focus()
	#if MusicController.is_playing() == false:
		#MusicController.play_music()
	

func _process(delta):
	pass
	#if MusicController.is_playing() == false:
		#MusicController.play_music()

func _on_start_button_pressed():
	StageManager.changeScene(StageManager.Level1)
	# create global variable to manage levels and easily select levels based on button click

func _on_options_button_pressed():
	StageManager.changeScene(StageManager.Options)
	# make stagemanager gloabl "scene" with video guidance for loading screen and access to all levels

func _on_quit_button_pressed():
	get_tree().quit()

