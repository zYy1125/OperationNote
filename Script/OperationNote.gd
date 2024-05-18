extends Node2D

#
# 主页UI[每个知识点因内容长短不一,无法标准格式化处理,所以均需单独制作页面]
#

#
var ActiviSearchCount = 0
var likeIndex:int
# 知识点节点
var KnowledgeNode = preload("res://Scene/KnowledgeNode.tscn")
var knowledgeNode
# 知识点 - 节点 - 闲聊
var OperationNoteChatView = preload("res://Scene/OperationNoteChatView.tscn")
var operationNoteChatView
#var OperationNoteChatKey
# 知识点 - 节点 - 部署
var KnowledgeInstallView = preload("res://Scene/Knowledge/KnowledgeInstall.tscn")
var knowledgeInstallView
# 知识点 - 节点 - 下载
var KnowledgeDownloadView = preload("res://Scene/Knowledge/KnowledgeDownload.tscn")
var knowledgeDownloadView

# Called when the node enters the scene tree for the first time.
func _ready():
	# 遍历移除缓存节点
	_removeBufferChild()
	# 初始化UI按钮显示
	_showVisableInit()
	# 初始化UI
	_initUI()
	_reLoadOperationNoteKnowledgePanelPos()
	pass # Replace with function body.
	
func _process(delta):
	_ActiviSearch()
	pass

# 初始化UI
func _initUI():
	# 按钮文字Title显示
	_initKnowledgeNode()
	# 按钮点击事件
	_initCardSoulContainer()
	pass

# 遍历移除缓存节点
func _removeBufferChild():
	#print("节点个数:")
	#print($"OperationNoteKnowledgePanel/ListValuePanel".get_child_count())
	# 移除Chat节点
	_removeBufferChatChild()
	# 移除Install节点
	_removeBufferInstallChild()
	# 移除Install节点
	_removeBufferDownloadChild()
	pass
# 遍历移除缓存节点 - chat
func _removeBufferChatChild():
	if($"OperationNoteKnowledgePanel/ListChatPanel".get_child(0)!=null):
		$"OperationNoteKnowledgePanel/ListChatPanel".get_child(0).queue_free()
		pass
	pass
# 遍历移除缓存节点 - install
func _removeBufferInstallChild():
	for i in range($"OperationNoteKnowledgePanel/ListInstallPanel".get_child_count()):
		if($"OperationNoteKnowledgePanel/ListInstallPanel".get_child(i)!=null):
			$"OperationNoteKnowledgePanel/ListInstallPanel".get_child(i).remove_and_skip()
			pass
		pass
	pass
# 遍历移除缓存节点 - download
func _removeBufferDownloadChild():
	for i in range($"OperationNoteKnowledgePanel/ListDownloadPanel".get_child_count()):
		if($"OperationNoteKnowledgePanel/ListDownloadPanel".get_child(i)!=null):
			$"OperationNoteKnowledgePanel/ListDownloadPanel".get_child(i).remove_and_skip()
			pass
		pass
	pass

# 动态设置模块
func _flushCardSoulContainer():
	# 第一步获取控件数值
	var searchStr = $"SearchPanel/SearchLabel".text
	# 隐藏所有模块
	
	# 根据数值设置模块单独显示
	
	
	pass

# Container按钮初始化
func _initCardSoulContainer():
	#print("_initCardSoulContainer")
	for body_item in $"KnowledgePanel/KnowledgeContainer/Container".get_children():
		body_item.connect("gui_input",self,"_on_KnowledgeNode_input",[body_item])
	pass
	
# Container按钮事件 - PlanePanel
func _on_KnowledgeNode_input(event,body_item):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		# 关闭UI显示
		_showVisableClose()
		#var body_index = body_item.get_index()
		var body_Label = body_item.get_child(0).text
		# 标识对应文本内容
		match body_Label:
			"Jdk":
				# 定义选择的知识点
				_chioseKnowledgeKey("Jdk")
				pass
			"Tomcat":
				_chioseKnowledgeKey("Tomcat")
				pass
			"Mysql":
				_chioseKnowledgeKey("Mysql")
				pass
			"Oracle":
				_chioseKnowledgeKey("Oracle")
				pass
			"Sqlserver":
				_chioseKnowledgeKey("Sqlserver")
				pass
			"Nginx":
				_chioseKnowledgeKey("Nginx")
				pass
			"Ceph":
				_chioseKnowledgeKey("Ceph")
				pass
			"Docker":
				_chioseKnowledgeKey("Docker")
				pass
			"Ansible":
				_chioseKnowledgeKey("Ansible")
				pass
			"Chrony":
				_chioseKnowledgeKey("Chrony")
				pass
			"Elk":
				_chioseKnowledgeKey("Elk")
				pass
			"Hadoop":
				_chioseKnowledgeKey("Hadoop")
				pass
			"Ntpd":
				_chioseKnowledgeKey("Ntpd")
				pass
			"Kubernetes":
				_chioseKnowledgeKey("Kubernetes")
				pass
			"Prometheus":
				_chioseKnowledgeKey("Prometheus")
				pass
			"RabbitMQ":
				_chioseKnowledgeKey("RabbitMQ")
				pass
			"RocketMQ":
				_chioseKnowledgeKey("RocketMQ")
				pass
			"Kafka":
				_chioseKnowledgeKey("Kafka")
				pass
			"CentosKernelUpdate":
				_chioseKnowledgeKey("CentosKernelUpdate")
				pass
			"RAID":
				_chioseKnowledgeKey("RAID")
				pass
			"Linux":
				_chioseKnowledgeKey("Linux")
				pass
		pass
	pass

# 定义选择的知识点
func _chioseKnowledgeKey(Str):
	allResources.OperationNoteChatKey = Str
	pass

# 加载知识点 - 所有中间件的模块
func _initKnowledgeNode():
	for i in range(allResources.ArrayAllKnowledgeNodeResources.size()):
		_initKnowledgenodes(i)
		pass
	pass
func _initKnowledgenodes(index):
	knowledgeNode = KnowledgeNode.instance()
	# 设置知识点名称
	knowledgeNode.get_child(0).text = allResources.ArrayAllKnowledgeNodeResources[index]
	$"KnowledgePanel/KnowledgeContainer/Container".add_child(knowledgeNode)
	pass
	
# 重置其位置	
func _reLoadOperationNoteKnowledgePanelPos():
	$"OperationNoteKnowledgePanel".rect_position = Vector2(-192,-24)
	pass

# 创建知识点 - 闲聊页面
func _initOperationNoteChatView():
	operationNoteChatView = OperationNoteChatView.instance()
	operationNoteChatView._initChatLabel(allResources.OperationNoteChatKey)
	$"OperationNoteKnowledgePanel/ListChatPanel".add_child(operationNoteChatView)
	
	# 重置其位置
	#_reLoadOperationNoteKnowledgePanelPos()
	pass
	
# 创建知识点 - 部署页面
func _initOperationNoteInstallView():
	knowledgeInstallView = KnowledgeInstallView.instance()
	# 调用部署加载内容
	knowledgeInstallView._ChioseKnowledgeNode(allResources.OperationNoteChatKey)
	$"OperationNoteKnowledgePanel/ListInstallPanel".add_child(knowledgeInstallView)
	
	# 重置其位置
	#_reLoadOperationNoteKnowledgePanelPos()
	pass
	

# 创建知识点 - 下载页面
func _initOperationNoteDownloadView():
	knowledgeDownloadView = KnowledgeDownloadView.instance()
	# 调用部署加载内容
	knowledgeDownloadView._ChioseKnowledgeNode(allResources.OperationNoteChatKey)
	$"OperationNoteKnowledgePanel/ListDownloadPanel".add_child(knowledgeDownloadView)
	
	# 重置其位置
	#_reLoadOperationNoteKnowledgePanelPos()
	pass
	
	
# 初始化UI显示
func _showVisableInit():
	$"SearchPanel".visible = true
	$"KnowledgePanel".visible = true
	#
	$"OperationNoteKnowledgePanel".visible = false
	$"OperationNoteKnowledgePanel/ListChatPanel".visible = false
	$"OperationNoteKnowledgePanel/ListInstallPanel".visible = false
	$"OperationNoteKnowledgePanel/ListDownloadPanel".visible = false
	pass
	
# 显示部署页面/关闭闲聊页面
func _showVisableInstall():
	$"OperationNoteKnowledgePanel/ListInstallPanel".visible = true
	$"OperationNoteKnowledgePanel/ListChatPanel".visible = false
	$"OperationNoteKnowledgePanel/ListDownloadPanel".visible = false
	pass

# 显示闲聊页面/关闭部署页面
func _showVisableChat():
	$"OperationNoteKnowledgePanel/ListChatPanel".visible = true
	$"OperationNoteKnowledgePanel/ListInstallPanel".visible = false
	$"OperationNoteKnowledgePanel/ListDownloadPanel".visible = false
	pass
	
# 显示闲聊页面/关闭部署页面
func _showVisableDownload():
	$"OperationNoteKnowledgePanel/ListDownloadPanel".visible = true
	$"OperationNoteKnowledgePanel/ListChatPanel".visible = false
	$"OperationNoteKnowledgePanel/ListInstallPanel".visible = false
	pass

	
# 关闭UI显示
func _showVisableClose():
	$"SearchPanel".visible = false
	$"KnowledgePanel".visible = false
	#
	$"OperationNoteKnowledgePanel".visible = true
	pass

# 加载详细页面
func _reloadListChatPanel(Index):
	match Index:
		1:
			# 简介
			_initOperationNoteChatView()
			pass
		2:
			# 部署
			_initOperationNoteInstallView()
			pass
		3:
			# 扩展
			
			pass
		4:
			# 下载
			_initOperationNoteDownloadView()
			pass
	pass

###################### 按钮焦点 ######################
# 禁用下载按钮
func _disableDownloadBtn():
	$"OperationNoteKnowledgePanel/ListTitlePanel/DownloadBtn".disabled = true
	pass
# 启用下载按钮
func _enableDownloadBtn():
	$"OperationNoteKnowledgePanel/ListTitlePanel/DownloadBtn".disabled = false
	pass
	
# 禁用闲聊按钮
func _disableChatBtn():
	$"OperationNoteKnowledgePanel/ListTitlePanel/ChatBtn".disabled = true
	pass
# 启用闲聊按钮
func _enableChatBtn():
	$"OperationNoteKnowledgePanel/ListTitlePanel/ChatBtn".disabled = false
	pass

# 禁用部署按钮
func _disableInstallBtn():
	$"OperationNoteKnowledgePanel/ListTitlePanel/InstallBtn".disabled = true
	pass
# 启用部署按钮
func _enableInstallBtn():
	$"OperationNoteKnowledgePanel/ListTitlePanel/InstallBtn".disabled = false
	pass

###################### UI ######################
# 加载知识点 - 闲聊简介
func _on_ChatBtn_pressed():
	_reloadListChatPanel(1)
	# 禁用闲聊按钮
	_disableChatBtn()
	# 启用UI按钮
	_enableInstallBtn()
	_enableDownloadBtn()
	# 隐藏部署面板
	_showVisableChat()
	
	# 移除Install节点
	_removeBufferInstallChild()
	# 移除Download节点
	_removeBufferDownloadChild()
	pass # Replace with function body.

# 加载知识点 - 部署信息
func _on_InstallBtn_pressed():
	_reloadListChatPanel(2)
	# 显示面板
	_showVisableInstall()
	# 禁用部署按钮
	_disableInstallBtn()
	# 启用UI按钮
	_enableChatBtn()
	_enableDownloadBtn()
	
	# 移除Chat节点
	_removeBufferChatChild()
	# 移除Download节点
	_removeBufferDownloadChild()
	pass # Replace with function body.

# 加载知识点扩展信息
func _on_MainBtn_pressed():
	_reloadListChatPanel(3)
	pass # Replace with function body.


# 加载知识点 - 下载资源页面
func _on_DownloadBtn_pressed():
	_reloadListChatPanel(4)
	# 点击后禁用
	_disableDownloadBtn()
	# 显示面板
	_showVisableDownload()
	# 启用UI按钮
	_enableChatBtn()
	_enableInstallBtn()
	
	# 移除Chat节点
	_removeBufferChatChild()
	# 移除Install节点
	_removeBufferInstallChild()
	pass # Replace with function body.

# 返回节点选择页面
func _on_BackBtn_pressed():
	# 移除所有节点
	_removeBufferChild()
	# 启用按钮
	_enableChatBtn()
	_enableInstallBtn()
	_enableDownloadBtn()
	# 关闭页面
	_showVisableInit()
	pass # Replace with function body.

###################### UI ######################


# 激活搜索
func _ActiviSearch():
	# 搜索框有内容时[每隔30ms执行一次]
	ActiviSearchCount += 1
	# 条件满足时 - 输出对应模块
	if($"SearchPanel/SearchLabel".text != "" and ActiviSearchCount % 10 == 0
		and likeIndex!=999):
		#print("激活搜索")
		#print($"SearchPanel/SearchLabel".text)
		# 模糊查询
		_KnowledgeC_LikeShow()
		# 重新激活点击事件
		_initCardSoulContainer()
	elif($"SearchPanel/SearchLabel".text == "" and likeIndex==999):
		# 清除搜索内容
		_deleteKnowledgeContainer()
		# 重置知识点模块
		_initKnowledgeNode()
		# 标识
		likeIndex = 1000
		# 移除模糊查询死亡节点
		$"KnowledgePanel/KnowledgeContainer/Container".get_child(0).remove_and_skip()
		# 重新激活点击事件
		_initCardSoulContainer()
		pass
	pass

# 清除KnowledgeContainer内容
func _deleteKnowledgeContainer():
	for i in range($"KnowledgePanel/KnowledgeContainer/Container".get_child_count()):
		if($"KnowledgePanel/KnowledgeContainer/Container".get_child(i)!=null):
			$"KnowledgePanel/KnowledgeContainer/Container".get_child(i).remove_and_skip()
		pass
	pass

# 模糊查询逻辑
func _KnowledgeC_LikeShow():
	# 清除原有的子节点
	_deleteKnowledgeContainer()
	# 获取玩家输入框的字符串 
	var likeString = $"SearchPanel/SearchLabel".text
	# 对比字符串与节点数组
	likeIndex = allResources.ArrayAllKnowledgeNodeResources.find($"SearchPanel/SearchLabel".text)
	# 将ArrayAllKnowledgeNodeResources搜索到的字符串添加至Like数组
	# 将Like数组添加知识点模块
	if(likeIndex != -1):
		_initKnowledgenodes(likeIndex)
		likeIndex = 999 # 节点添加后,终止
		pass
	pass




