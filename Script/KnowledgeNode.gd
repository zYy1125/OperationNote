extends Button

#
# 中简介模块节点
#


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



# 进入范围触发
func _on_KnowledgeNode_mouse_entered():
	self.self_modulate = Color(1, 1, 1, 1)
	$"TitleLabel".modulate = Color(0, 0, 0)
	yield(get_tree().create_timer(2.0), "timeout")
	_initmodulate()
	pass # Replace with function body.


# 离开范围触发
func _on_KnowledgeNode_mouse_exited():
	_initmodulate()
	pass # Replace with function body.

# 初始化颜色
func _initmodulate():
	self.self_modulate = Color(1, 1, 1, 0.705882)
	$"TitleLabel".modulate = Color(1, 1, 1)
	pass

