extends CanvasLayer

signal level_changed

export (String) var level_name = "level"

func _on_Button_pressed() -> void:
	emit_signal("level_changed", level_name)
