extends Node2D
var dialogue_text =  [""]
var dialogue_speaker =  [""]
const textboxlocation = preload("res://textbox.tscn")
const creditslocation = preload("res://credits.tscn")
signal start
var textbox_exists = false

# I've set it so you just need to change the parameters and give that signal
#Give it a signal and a copy of this text and itll work!
func _ready() -> void:
	var textbox = textboxlocation.instantiate()
	textbox.finished.connect(_on_textbox_finished)
	dialogue_text =  ["You found all of my children!", "Thank you very much kind sir!", "You've returned them to their roots...", "next"]
	dialogue_speaker =  ["Mother Bug", "Mother Bug", "Mother Bug", "Mother Bug"]
	textbox.newDialouge(dialogue_text,dialogue_speaker)
	add_child(textbox)
	start.emit()

func _on_textbox_finished() -> void:
	get_tree().change_scene_to_file("res://credits.tscn")
	#This should be deleted but i dont have much time -randompigion
