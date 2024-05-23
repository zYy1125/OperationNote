extends Node2D

#
# 中转页面
#

# 服务节点
var OperationNote = preload("res://Scene/OperationNote.tscn")
var operationNote
# 文档节点
var DocumentPanel = preload("res://Scene/DocumentPanel.tscn")
var documentPanel
# 关于节点
var AboutPanel = preload("res://Scene/AboutPanel.tscn")
var aboutPanel




# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# 打开服务页面
func _on_ServiceBtn_pressed():
	# 节点激活
	_showServiceNode()
	# 关闭其他页面节点
	_disableListPanel()
	# 激活文档页面节点
	_enableListServicePanel()
	# 设置图标
	_setIconYellow(Vector2(0,0))
	pass # Replace with function body.
# 实例化服务节点
func _initServiceNode():
	operationNote = OperationNote.instance()
	$"OperationNoteKnowledgePanel/ListServicePanel".add_child(operationNote)
	pass
func _showServiceNode():
	if($"OperationNoteKnowledgePanel/ListTitlePanel/ServiceBtn".disabled == false):
		$"OperationNoteKnowledgePanel/ListTitlePanel/ServiceBtn".disabled = true
		_initServiceNode()
		pass
	pass

# 设置点击图标颜色
func _setIconYellow(Pos):
	$"OperationNoteKnowledgePanel/ListTitlePanel/Icon_Sqiu".visible = true
	$"OperationNoteKnowledgePanel/ListTitlePanel/Icon_Sqiu".rect_position = Pos
	pass

# 打开文档页面
func _on_DocumentBtn_pressed():
	# 显示文档页面内容
	_initDocumentNode()
	# 关闭其他页面节点
	_disableListPanel()
	# 激活文档页面节点
	_enableListDocumentPanel()
	# 设置图标
	_setIconYellow(Vector2(0,80))
	pass # Replace with function body.
# 实例化文档节点
func _initDocumentNode():
	documentPanel = DocumentPanel.instance()
	$"OperationNoteKnowledgePanel/ListDocumentPanel".add_child(documentPanel)
	pass
func _showDocumentNode():
	if($"OperationNoteKnowledgePanel/ListTitlePanel/DocumentBtn".disabled == false):
		$"OperationNoteKnowledgePanel/ListTitlePanel/DocumentBtn".disabled = true
		_initDocumentNode()
		pass
	pass



# 关闭所有页面节点
func _disableListPanel():
	# close
	$"OperationNoteKnowledgePanel/ListServicePanel".visible  = false
	$"OperationNoteKnowledgePanel/ListDocumentPanel".visible  = false
	$"OperationNoteKnowledgePanel/ListQuestionPanel".visible  = false
	$"OperationNoteKnowledgePanel/ListAboutPanel".visible  = false
	
	# disable
	$"OperationNoteKnowledgePanel/ListTitlePanel/ServiceBtn".disabled = true
	$"OperationNoteKnowledgePanel/ListTitlePanel/DocumentBtn".disabled = true
	$"OperationNoteKnowledgePanel/ListTitlePanel/QuestionBtn".disabled = true
	$"OperationNoteKnowledgePanel/ListTitlePanel/AboutBtn".disabled = true
	pass
#激活页面节点
func _enableServiceBtn():
	# enable
	$"OperationNoteKnowledgePanel/ListTitlePanel/ServiceBtn".disabled = false
	pass
func _enableDocumentBtn():
	# enable
	$"OperationNoteKnowledgePanel/ListTitlePanel/DocumentBtn".disabled = false
	pass
func _enableQuestionBtn():
	# enable
	$"OperationNoteKnowledgePanel/ListTitlePanel/QuestionBtn".disabled = false
	pass
func _enableAboutBtn():
	# enable
	$"OperationNoteKnowledgePanel/ListTitlePanel/AboutBtn".disabled = false
	pass
	
# 激活服务页面节点
func _enableListServicePanel():
	# 显示服务页面
	$"OperationNoteKnowledgePanel/ListServicePanel".visible  = true
	# 激活其他按钮节点
	_enableDocumentBtn()
	_enableQuestionBtn()
	_enableAboutBtn()
	# 移除节点
	_removeChilePanel($"OperationNoteKnowledgePanel/ListDocumentPanel")
	_removeChilePanel($"OperationNoteKnowledgePanel/ListQuestionPanel")
	_removeChilePanel($"OperationNoteKnowledgePanel/ListAboutPanel")
	pass
# 激活文档页面节点
func _enableListDocumentPanel():
	$"OperationNoteKnowledgePanel/ListDocumentPanel".visible  = true
	# 激活其他按钮节点
	_enableServiceBtn()
	_enableQuestionBtn()
	_enableAboutBtn()
	# 移除节点
	_removeChilePanel($"OperationNoteKnowledgePanel/ListServicePanel")
	_removeChilePanel($"OperationNoteKnowledgePanel/ListQuestionPanel")
	_removeChilePanel($"OperationNoteKnowledgePanel/ListAboutPanel")
	pass
# 激活问题页面节点
func _enableListQuestionPanel():
	$"OperationNoteKnowledgePanel/ListQuestionPanel".visible  = true
	# 激活其他按钮节点
	_enableServiceBtn()
	_enableDocumentBtn()
	_enableAboutBtn()
	# 移除节点
	# 移除节点
	_removeChilePanel($"OperationNoteKnowledgePanel/ListServicePanel")
	_removeChilePanel($"OperationNoteKnowledgePanel/ListDocumentPanel")
	_removeChilePanel($"OperationNoteKnowledgePanel/ListAboutPanel")
	pass
# 激活关于页面节点
func _enableListAboutPanel():
	# 显示服务页面
	$"OperationNoteKnowledgePanel/ListAboutPanel".visible  = true
	# 激活其他按钮节点
	_enableServiceBtn()
	_enableDocumentBtn()
	_enableQuestionBtn()
	# 移除节点
	_removeChilePanel($"OperationNoteKnowledgePanel/ListDocumentPanel")
	_removeChilePanel($"OperationNoteKnowledgePanel/ListQuestionPanel")
	_removeChilePanel($"OperationNoteKnowledgePanel/ListServicePanel")
	pass
# 切换页面Panel移除当前子节点
func _removeChilePanel(PanelNode):
	if(PanelNode.get_child(0)!=null):
		PanelNode.get_child(0).queue_free()
		pass
	pass
	
# 问题页面
func _on_QuestionBtn_pressed():
	# 
	_setIconYellow(Vector2(0,160))
	pass # Replace with function body.
	
# 个人页面
func _on_HomeBtn_pressed():
	# 设置图标
	_setIconYellow(Vector2(0,240))
	pass # Replace with function body.
	
# 左侧按钮 - 关于页面
func _on_AboutBtn_pressed():
	# 节点激活
	_showAboutNode()
	# 关闭其他页面节点
	_disableListPanel()
	# 激活关于页面节点
	_enableListAboutPanel()
	# 设置图标
	_setIconYellow(Vector2(0,320))
	pass # Replace with function body.

# 实例化服务节点
func _initAboutNode():
	aboutPanel = AboutPanel.instance()
	$"OperationNoteKnowledgePanel/ListAboutPanel".add_child(aboutPanel)
	pass
func _showAboutNode():
	if($"OperationNoteKnowledgePanel/ListTitlePanel/AboutBtn".disabled == false):
		$"OperationNoteKnowledgePanel/ListTitlePanel/AboutBtn".disabled = true
		_initAboutNode()
		pass
	pass


