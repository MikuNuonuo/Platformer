extends CanvasLayer



var coins_collected = 0
var new_health = 0

onready var coins_label = $Coin
onready var Health_Bar = $HealthBar


func _ready():
	coins_label.set_text(str(coins_collected))
	# Static types are necessary here to avoid warnings.
	var anim_sprite: AnimatedSprite = $AnimatedSprite
	anim_sprite.play()
	var _player_path = get_node("/root/Game/Level/Player")
	_player_path.connect("collect_coin", self, "_collect_coin")
	_player_path.connect("health_change", self, "_on_Player_health_change")

func _collect_coin():
	coins_collected += 1
	coins_label.set_text(str(coins_collected))
	
func _on_Player_health_change(new_health):
	Health_Bar.value = new_health 
