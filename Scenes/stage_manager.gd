extends CanvasLayer

const MainMenu = "res://Scenes/main_menu.tscn"
const Options = "res://Scenes/options.tscn"
#const LevelSelect = "res://Scenes/level_select.tscn"
const Level1 = "res://Scenes/Levels/Level1.tscn"

func changeScene(scene_path):
	get_tree().change_scene_to_file(scene_path)
