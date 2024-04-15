extends Area2D

@export var dialogueKey = "story1"
var areaActive = false

func _input(event):
	if areaActive and event.is_actionpressed("ui_accept"):
		SignalBus.emit_signal("display_dialogue", dialogueKey)


func _on_area_entered(area):
	areaActive = true


func _on_area_exited(area):
	areaActive = false
