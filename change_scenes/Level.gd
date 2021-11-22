extends CanvasLayer

signal level_changed(level_name)

export (String) var level_name = "level"

func _on_ChangedSceneButton_pressed() -> void:
	emit_signal("level_changed", level_name)
