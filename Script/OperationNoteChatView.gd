extends Node2D


#
# 知识点 - 闲聊内容
#


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# 创建节点时定义文本内容
func _initChatLabel(Key):
	$"ChatLabel".text = \
		allResources.ArrayAllKnowledgeNodeInfoResources.get(Key)[0]
	pass

# 打开当前知识点 - 命令语句
func _on_OpenBtn_pressed():
	$"KnowledgeInstruct".popup()
	_initInstructValue()
	pass # Replace with function body.
	
# 加载指令
func _initInstructValue():
	# 根据知识点设置其内容
	$"KnowledgeInstruct".get_child(0).text = \
		allResources.ArrayKnowledgeInstructResources.get(allResources.OperationNoteChatKey)[0]
	pass


