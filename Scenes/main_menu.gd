extends Control


func _ready():
	$VBoxContainer/StartButton.grab_focus()
	#if MusicController.is_playing() == false:
		#MusicController.play_music()
	

func _process(delta):
	pass
	#if MusicController.is_playing() == false:
		#MusicController.play_music()

func _on_start_button_pressed():
	pass # Replace with function body.

func _on_options_button_pressed():
	pass # Replace with function body.

func _on_quit_button_pressed():
	get_tree().quit()

