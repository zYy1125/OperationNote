extends Node2D


#
# 首页UI
#


#	仅提供开源软件下载和所有软件的部署




# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# 进入主页
func _on_ClickBtn_pressed():
	#get_tree().change_scene("res://Scene/OperationNote.tscn")
	get_tree().change_scene("res://Scene/TransferNode.tscn")
	pass # Replace with function body.

# 登录管理员用户
func _on_LoginBtn_pressed():
	pass # Replace with function body.
