extends Node2D
var children = 0

# Called when the node enters the scene tree for the first time.
# func _ready() -> void:

func _on_baby_body_entered(body: Node2D) -> void:
	children += 1


func _on_winbox_body_entered(body: Node2D) -> void:
	if not children == 5:
		$"%You dont have enough".text = str("You're missing " + (5- children) + " children! Go find them!")
	else:
		#PUT ENDING HERE. Call dialouge_test_zone if need be.
		pass
