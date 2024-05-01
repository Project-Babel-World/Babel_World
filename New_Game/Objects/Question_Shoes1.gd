extends Node2D

#Quick Note: You have to have visibility off before playing the game
#Game would then turn it on and off based on that

var canSee = false

func prep():
	self.visible = false
	pass



func showing(): 
	#if canSee == false: 
	self.visible = true
	canSee = true
		
	pass
	#hide the question
# Called every frame. 'delta' is the elapsed time since the previous frame.



func _on_wrong_1_pressed():
	print("Oops... this is really wrong actually...")
	print("This is state in Mexico")

	pass # Replace with function body.


func _on_wrong_2_pressed():
	print("Uhmm... this means heel... well at least you learned something new")
	pass # Replace with function body.




func _on_correct_pressed():
	print("Yay!Thats correct <insert voice of that one animated peruvian girl>")
	self.visible = false

	pass # Replace with function body.


func _on_wrong_4_pressed():
	print("Not wrong, but not what we're looking for... this is a sandle. ")
	pass # Replace with function body.


