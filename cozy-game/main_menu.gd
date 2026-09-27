extends Control
@onready var click: AudioStreamPlayer = %Click

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var playingsound = false


func _on_play_pressed() -> void:
	click.play()
	get_tree().change_scene_to_file("res://roots.tscn")


func _on_credits_pressed() -> void:
	click.play()
	get_tree().change_scene_to_file("res://credits.tscn")


func _on_quit_pressed() -> void:
	click.play()
	get_tree().quit()
