extends TextureProgress


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _ready():
	pass # Replace with function body.
	
func _on_Player_health_change(new_health):
	value = new_health  #assign health value to lifebar #SW.
