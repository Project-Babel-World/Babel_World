extends Node2D

var canSeeDress = false

func prepDress():
	self.visible = false
	pass
	
func showingDress(): 
	self.visible = true 
	canSeeDress = true
	pass
	

func _on_wrong_1_pressed():
	pass # Replace with function body.


func _on_correct_pressed():
	self.visible = false
	pass # Replace with function body.


func _on_wrong_2_pressed():
	pass # Replace with function body.


func _on_wrong_3_pressed():
	pass # Replace with function body.
