extends Sprite2D
@onready var sfx_ability_activate: AudioStreamPlayer = $"../SfxAbilityActivate"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("Interact") && Global.interacting_with == "plushie":
		Global.inventory.push_back("plushie")
		sfx_ability_activate.play()
		queue_free()


func _on_area_2d_body_entered(body: Node2D) -> void:
	Global.interacting_with = "plushie"


func _on_area_2d_body_exited(body: Node2D) -> void:
	Global.interacting_with = ""
