extends Node

@onready var  sound: AudioStreamPlayer = $AudioStreamPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	sound.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
