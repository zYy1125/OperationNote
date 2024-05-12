extends Node2D


#
# 首页UI
#

#
#	新需求
#		1、扩展页面功能=常见问题-模块化
#		2、问题搜索功能[需要直接模糊查询|非完全匹配查询]游客可提交搜索不到的问题[免费不定时解决][解决后自动存储]
#		3、家:记录使用者历史记录
#		4、知识点没有部署材料时、灰色图标
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
