extends Panel


#
# 文档页面
#

# 逻辑
#	1、文档页面默认加载10个小文档节点 - 自由滑动   [实现]
#	2、玩家通过精确搜索时,文档页面默认小文档节点逐渐消失,屏幕中央出现搜索文档
#	3、文档搜索不存在时,文档页面提供输入框 - 玩家可以提出需求待其他人上传


# 创建文档小节点
var DocumentChild = preload("res://Scene/DocumentChild.tscn")
var documentChild

# Called when the node enters the scene tree for the first time.
func _ready():
	_initDocumentChild()
	pass # Replace with function body.

# 创建文档小节点
# 默认创建10个
func _initDocumentChild():
	for i in range(10):
		_createDocumentChild()
		pass
	pass
func _createDocumentChild():
	documentChild = DocumentChild.instance()
	self.add_child(documentChild)
	pass















