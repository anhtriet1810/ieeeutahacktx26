extends AnimatableBody2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	# Alternatively, connect the signal via code if not using the editor UI
	$Area2D.body_entered.connect(_on_area_2d_body_entered)

func _on_area_2d_body_entered(body: Node2D) -> void:
	# Optional: Filter out specific objects, like ensuring it's the Player
	if body.is_in_group("player") or body is CharacterBody2D:
		# Play your designated collision animation
		animation_player.play("on_collision_hit") 
