extends CanvasLayer

const MainMenu = preload("res://Scenes/main_menu.tscn")
const Options = preload("res://Scenes/options.tscn")
#const LevelSelect = "res://Scenes/level_select.tscn"
const Level1 = preload("res://Scenes/Levels/Level1.tscn")


func _ready():
	get_node("ColorRect").hide()
	get_node("Label").hide()
	
	
func changeScene(scene_path):
	get_node("ColorRect").show()
	get_node("Label").show()
	get_node("anim").play("TransIn")
	await get_node("anim").animation_finished
	
	var scene = scene_path.instantiate()
	get_tree().get_root().get_child(2).free()
	get_tree().get_root().add_child(scene)

	get_node("anim").play("TransOut")
	await get_node("anim").animation_finished
	get_node("ColorRect").hide()
	
