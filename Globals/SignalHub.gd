extends Node

signal on_player_died()
signal on_player_hit(v: int)
signal on_score_updated(v: int)
signal on_create_explosion(pos: Vector2, anim_name: String)
signal on_create_powerup(pos: Vector2, power_up_type: PowerUp.PowerUpType)
signal on_create_power_up_random(pos: Vector2)
signal on_create_bullet(pos: Vector2, dir: Vector2, speed: float, type: BulletBase.BulletType)
signal on_create_homing_missle(pos: Vector2)
signal on_health_pickup(health: int)


func emit_on_player_died():
	on_player_died.emit()
	
func emit_on_player_hit(v: int) -> void:
	on_player_hit.emit(v)

func emit_on_score_updated(v: int):
	on_score_updated.emit(v)

func emit_on_create_explosion(pos: Vector2, anim_name: String):
	on_create_explosion.emit(pos, anim_name)

func emit_on_create_power_up(pos: Vector2, power_up_type: PowerUp.PowerUpType):
	on_create_powerup.emit(pos, power_up_type)


func emit_on_create_power_up_random(pos: Vector2):
	on_create_power_up_random.emit(pos)
	
func emit_on_create_bullet(pos: Vector2, dir: Vector2, speed: float, type: BulletBase.BulletType):
	on_create_bullet.emit(pos, dir, speed, type)

func emit_on_create_homing_missle(pos: Vector2):
	on_create_homing_missle.emit(pos)
	
func emit_on_health_pickup(health: int):
	on_health_pickup.emit(health)
