extends Panel


#
# 左侧按钮 - 关于
#


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# 跳转Github首页
func _on_ClcikBtn_pressed():
	# 打开网页
	OS.shell_open("https://github.com/zYy1125/OperationNote")
	pass # Replace with function body.
