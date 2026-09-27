extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Label2.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.inventory.has("seeds"):
		$Label.text = "Feed me!!"
		$Label2.visible = true
		if Input.is_action_pressed("Interact") && Global.interacting_with == "large_baby_6":
			Global.large_baby_6_fed = true
			Global.children += 1	
			$"../Player/CharacterBody2D/collected".text = str(Global.children) + "/6 Children Collected"
			$"../Timer".start()
			queue_free()


func _on_body_entered(body: Node2D) -> void:
	Global.interacting_with = "large_baby_6"


func _on_body_exited(body: Node2D) -> void:
	Global.interacting_with = ""
