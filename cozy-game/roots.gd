extends Node2D
var children = 0

# Called when the node enters the scene tree for the first time.
# func _ready() -> void:

func _on_baby_body_entered(body: Node2D) -> void:
	children += 1
	$Player/CharacterBody2D/collected.text = str(children) + "/6 Children Collected"
	$Timer.start()
	
func _on_baby_2_body_entered(body: Node2D) -> void:
	children += 1
	$Player/CharacterBody2D/collected.text = str(children) + "/6 Children Collected"
	$Timer.start()
	
func _on_baby_3_body_entered(body: Node2D) -> void:
	children += 1
	$Player/CharacterBody2D/collected.text = str(children) + "/6 Children Collected"
	$Timer.start()
	
func _on_baby_4_body_entered(body: Node2D) -> void:
	children += 1
	$Player/CharacterBody2D/collected.text = str(children) + "/6 Children Collected"
	$Timer.start()
	
func _on_large_baby_5_body_entered(body: Node2D) -> void:
	children += 1
	$Player/CharacterBody2D/collected.text = str(children) + "/6 Children Collected"
	$Timer.start()
	
func _on_large_baby_6_body_entered(body: Node2D) -> void:
	children += 1	
	$Player/CharacterBody2D/collected.text = str(children) + "/6 Children Collected"
	$Timer.start()
	
func _on_winbox_body_entered(body: Node2D) -> void:
	if not children == 6:
		$"%You dont have enough".text = "You're missing " + str(6- children) + " children! Go find them!"
	else:
		get_tree().change_scene_to_file("res://dialouge_test_zone.tscn")


func _on_timer_timeout() -> void:
	$Player/CharacterBody2D/collected.text = " "
