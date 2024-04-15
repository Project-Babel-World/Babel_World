extends Area2D

@export var dialog_key = ""
var area_active = false

func _input(event):
	if area_active and event.is_action_pressed("ui_accept"):
		print("Emit")
		SignalBus.emit_signal("display_dialog", dialog_key)
	else:
		print("not active")


func _on_area_entered(area):
	print("Entered")
	area_active = true

func _on_area_exited(area):
	print("Exited")
	area_active = false
