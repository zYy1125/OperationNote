extends Panel


#
# 知识点 - 部署页面
#


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



# 更多内容显示
func _on_MoreText_pressed():
	$"MorePopup".popup_centered()
	pass # Replace with function body.


# 获取玩家当前选中控件对应的字符串
func _on_ClickUrlBox_pressed():
	#print("_on_ClickUrlBox_pressed")
	allResources.ChioseDownloadUrl = $"TitleTextBGView/TitleText".text
	pass # Replace with function body.
