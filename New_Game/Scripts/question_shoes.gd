extends Node2D

var canSee = false

func prep():
	self.visible = false
	pass
	
func showing(): 
	self.visible = true 
	canSee = true
	pass
	

func _on_wrong_1_pressed():
	pass # Replace with function body.


func _on_correct_pressed():
	self.visible = false 
	pass # Replace with function body.


func _on_wrong_3_pressed():
	pass # Replace with function body.


func _on_wrong_4_pressed():
	pass # Replace with function body.
