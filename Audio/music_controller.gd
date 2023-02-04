extends Node

const mainMenuMusic = preload("res://Audio/crystalCave_mainmenu.mp3")
# list of all level music in list/GDScript equivalent

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# initial check to make sure a scene is active to avoid exception throwing when changing scenes
	if get_tree().current_scene != null:
		if get_tree().current_scene.name == "Main Menu":
			if not $MusicAudio.playing:
				$MusicAudio.stream = mainMenuMusic
				print("music playing")
				$MusicAudio.play()
		# else if in levels play random order of music list

# possible playing of music etc
func play_music():
	pass
	
# stops all music currently playing
func stop_music():
	$MusicAudio.stop()
	$MasterAudio.stop()
	pass
	
func is_playing():
	pass
