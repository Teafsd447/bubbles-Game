extends Label
func _process(delat):
	self.text = str(Global.score)
func _on_body_entered():
		Global.score += 1
		
