extends Node2D


const ADD_OBJECT: String = "add_object"
const EXPLOSION = preload("uid://bo7mfvx3jabwa")
const POWER_UP = preload("uid://bgbfe7yrnido0")
const BULLET_BOMB = preload("uid://bfxpclkwmcndk")
const BULLET_ENEMY = preload("uid://bnthtvwa3a5jj")
const BULLET_PLAYER = preload("uid://uv4mpa7oqknu")
const HOMING_MISSLE = preload("uid://bs1mdfve436bd")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	SignalHub.on_create_explosion.connect(on_create_explosion)
	SignalHub.on_create_powerup.connect(on_create_power_up)
	SignalHub.on_create_power_up_random.connect(on_create_power_up_random)
	SignalHub.on_create_bullet.connect(on_create_bullet)
	SignalHub.on_create_homing_missle.connect(on_create_homing_missle)
	

func add_object(obj: Node, pos: Vector2) -> void:
	add_child(obj)
	obj.global_position = pos

func on_create_explosion(pos: Vector2, anim_name: String) -> void:
	var scene: Explosion = EXPLOSION.instantiate()
	scene.setup(anim_name)
	call_deferred(ADD_OBJECT, scene, pos)
	
func on_create_power_up(pos: Vector2, power_up_type: PowerUp.PowerUpType) -> void:
	var scene: PowerUp = POWER_UP.instantiate()
	scene.power_up_type = power_up_type	
	call_deferred(ADD_OBJECT, scene, pos)
	
	
func on_create_power_up_random(pos: Vector2) -> void:
	var rpu: PowerUp.PowerUpType = PowerUp.PowerUpType.values().pick_random()
	on_create_power_up(pos, rpu)

func on_create_bullet(pos: Vector2, dir: Vector2, speed: float, type: BulletBase.BulletType)-> void:
	var scene: BulletBase
	
	match type:
		BulletBase.BulletType.Player:
			scene = BULLET_PLAYER.instantiate()
		BulletBase.BulletType.Enemy:
			scene = BULLET_ENEMY.instantiate()
		BulletBase.BulletType.Bomb:
			scene = BULLET_BOMB.instantiate()
	if scene:
		scene.setup(dir, speed)
		call_deferred(ADD_OBJECT, scene, pos)
		
func on_create_homing_missle(pos: Vector2) -> void:
	var scene: Projectile 
	scene = HOMING_MISSLE.instantiate()
	if scene:
		call_deferred(ADD_OBJECT, scene, pos)




		
