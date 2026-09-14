extends Projectile

class_name PowerUp

@onready var sprite_2d: Sprite2D = $Sprite2D

enum PowerUpType { Health, Shield }

const HEALTH: int = 50
const SPEED: float = 80.0
const TEXTURES: Dictionary = {
PowerUpType.Health : preload("uid://corto2r4s6dis"),
PowerUpType.Shield : preload("uid://bcy8wtnoerd3r")
}

var power_up_type: PowerUpType = PowerUpType.Shield:
	get: return power_up_type
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	sprite_2d.texture = TEXTURES[power_up_type]	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += delta * SPEED * Vector2.DOWN
