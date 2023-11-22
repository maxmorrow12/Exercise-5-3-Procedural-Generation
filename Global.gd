extends Node

func_ready(): 
	process_mode = Node.PROCESS_MODE_ALWAYS

func _unhandled_input(event):
	if event.is_action_pressed("Menu"):
		var Menu = get_node_or_null("/root/Game/Menu")
		if Menu == null:
			get_tree().quit()
		else:
			if not Menu.visible:
				Menu.show()
				get_tree().paused = true 	# pause the game while the menu is visible
			else:
				Menu.hide()
				get_tree().paused = false
		get_tree().quit()
