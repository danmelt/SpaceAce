extends Control

class_name UiButton

@onready var label: Label = $Label

@export var button_text :String


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	label.text = button_text
