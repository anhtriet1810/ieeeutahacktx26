extends Area2D

var speed := 500.0
var direction := Vector2.RIGHT

func _ready():
	body_entered.connect(_on_body_entered)

func _physics_process(delta):
	position += direction * speed * delta

func _on_body_entered(body):
	if body.has_method("take_hit"):
		body.take_hit()
	body.queue_free()
	queue_free()
	
