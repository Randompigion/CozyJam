extends Node2D
@onready var sfx_timer_up: AudioStreamPlayer = $SfxTimerUp
@onready var sfx_timer_down: AudioStreamPlayer = $SfxTimerDown


# Called when the node enters the scene tree for the first time.
# func _ready() -> void:

# deleted baby 1 part for convenience

func _on_baby_2_body_entered(body: Node2D) -> void:
	Global.children += 1
	sfx_timer_up.play()
	$Player/CharacterBody2D/collected.text = str(Global.children) + "/6 Children Collected"
	$Timer.start()
	
func _on_baby_3_body_entered(body: Node2D) -> void:
	Global.children += 1
	sfx_timer_up.play()
	$Player/CharacterBody2D/collected.text = str(Global.children) + "/6 Children Collected"
	$Timer.start()
	
func _on_baby_4_body_entered(body: Node2D) -> void:
	Global.children += 1
	sfx_timer_up.play()
	$Player/CharacterBody2D/collected.text = str(Global.children) + "/6 Children Collected"
	$Timer.start()
	
func _on_large_baby_5_body_entered(body: Node2D) -> void:
	Global.children += 1
	sfx_timer_up.play()
	$Player/CharacterBody2D/collected.text = str(Global.children) + "/6 Children Collected"
	$Timer.start()
	
# I removed the one for the large baby 6 for convenience, sorry
	
func _on_winbox_body_entered(body: Node2D) -> void:
	if not Global.children == 6:
		sfx_timer_down.play()
		$"%You dont have enough".text = "You're missing " + str(6 - Global.children) + " children! Go find them!"
	else:
		get_tree().change_scene_to_file("res://dialouge_test_zone.tscn")


func _on_timer_timeout() -> void:
	$Player/CharacterBody2D/collected.text = " "
