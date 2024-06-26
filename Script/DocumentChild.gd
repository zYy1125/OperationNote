extends Button


#
# 文档小节点[在区域内平滑移动][点击后查看详细介绍/附带下载按钮]
#

# 设置默认下载
var DownloadUrlIndex = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	# 设置初始位置
	self.rect_position = Vector2(436,192)
	# 初始化节点移动
	_initDocument()
	pass # Replace with function body.

# 设置文件信息
func _getDocumentChildInfo(Index):
	$"TitleLabel".text = allResources.ArrayAllDocumentDownloadPanelResources.get(Index)[0]
	#
	DownloadUrlIndex = Index
	pass


# 初始化节点移动
func _initDocument():
	# 获取随机IP
	var DPos = Vector2(rand_range(0,864),rand_range(0,376))
	# 移动逻辑
	$"AutoMoveTween".interpolate_property(
		self,"rect_position",null,DPos,3,Tween.TRANS_LINEAR)
	$"AutoMoveTween".start()
	pass

# 动画播放完毕后重载
func _on_AutoMoveTween_tween_completed(object, key):
	_initDocument()
	pass # Replace with function body.

# UI按钮
func _on_DocumentChild_pressed():
	$"KnowledgeInstruct".popup_centered()
	$"KnowledgeInstruct".get_child(0).text = allResources.ArrayAllDocumentDownloadPanelResources.get(DownloadUrlIndex)[1]
	pass # Replace with function body.


# 点击下载对应的文档
func _on_DownloadBtn_pressed():
	# 打开网页
	OS.shell_open(allResources.ArrayAllDocumentDownloadPanelResources.get(DownloadUrlIndex)[2])
	pass # Replace with function body.
