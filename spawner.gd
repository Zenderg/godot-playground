extends Node2D

@export var entity: PackedScene;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	print("!!!!!!!")
	var instans = entity.instantiate()
	var entity_spawn_location = $Path2D/PathFollow2D
	entity_spawn_location.progress_ratio = randf()

	instans.position = entity_spawn_location.position

	add_child(instans)
