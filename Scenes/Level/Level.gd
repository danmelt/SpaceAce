extends Node2D

func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("test"):
		#SignalHub.emit_on_create_explosion(Vector2(100,200), Explosion.BOOM)
		#SignalHub.emit_on_create_explosion(Vector2(200,300), Explosion.EXPLODE)
		#SignalHub.emit_on_create_power_up(Vector2(400,100), PowerUp.PowerUpType.Shield)	
		#SignalHub.emit_on_create_power_up(Vector2(300,500), PowerUp.PowerUpType.Health)	
		#SignalHub.emit_on_create_power_up_random(Vector2(400,600))
		#SignalHub.emit_on_create_power_up_random(Vector2(500,700))
		#SignalHub.emit_on_create_bullet(Vector2(400,50), Vector2.DOWN,
		#100.0, BulletBase.BulletType.Player)
		#SignalHub.emit_on_create_bullet(Vector2(350,300), Vector2(1, -1).normalized(),
		#100.0, BulletBase.BulletType.Enemy)
		#SignalHub.emit_on_create_bullet(Vector2(400,50), Vector2.DOWN,
		#100.0, BulletBase.BulletType.Bomb)
		SignalHub.emit_on_create_bullet(Vector2(400,50), Vector2.DOWN,
		100.0, BulletBase.BulletType.Enemy)
		SignalHub.emit_on_create_homing_missle(Vector2(400,50))

	if Input.is_action_just_pressed("shield"):
		SignalHub.emit_on_create_power_up(Vector2(400,100), PowerUp.PowerUpType.Shield)	

	if Input.is_action_just_pressed("health"):
		SignalHub.emit_on_create_power_up(Vector2(400,100), PowerUp.PowerUpType.Health)

	
