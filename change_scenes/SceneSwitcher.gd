extends Node

onready var current_level = $GrassLevel

func _ready() -> void:
	current_level.connect("level_changed", self, "handle_level_changed")
	
func handle_level_changed(current_level_name: String):
	var next_level
	var next_level_name: String
	
	match current_level_name:
		"grass":
			next_level_name = "Desert"
		"desert":
			next_level_name = "Grass"
		_:
			return
	print(next_level_name)	
	next_level = load("res://change_scenes/" + next_level_name + "Level.tscn").instance()
	print(next_level)
	add_child(next_level)
	current_level.connect("level_changed", self, "handle_level_changed")
	current_level.queue_free()
	current_level = next_level
			
