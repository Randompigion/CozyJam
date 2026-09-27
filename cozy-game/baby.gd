extends Area2D

func _ready() -> void:
	$Label2.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.inventory.has("plushie"):
		$Label.text = "yay!!"
		$Label2.visible = true
		if Input.is_action_pressed("Interact") && Global.interacting_with == "baby":
			Global.children += 1	
			$"../Player/CharacterBody2D/collected".text = str(Global.children) + "/6 Children Collected"
			$"../Timer".start()
			queue_free()


func _on_body_entered(body: Node2D) -> void:
	Global.interacting_with = "baby"


func _on_body_exited(body: Node2D) -> void:
	Global.interacting_with = ""
