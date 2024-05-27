extends Node2D

#
# 知识点 - 部署页面
#


# 知识点 - 节点 - 下载
var KnowledgePanel = preload("res://Scene/KnowledgePanel.tscn")
var knowledgePanel




# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# 创建知识点 - 闲聊页面
func _initKnowledgePanel():
	knowledgePanel = KnowledgePanel.instance()
	$"KnowledgecScroll/KnowledgeVBox".add_child(knowledgePanel)
	pass


# 选择节点
func _ChioseKnowledgeNode(knowledgeNode):
	match knowledgeNode:
		"Jdk":
			_initKnowledgeVBox(
				allResources.ArrayKnowledgeJDKDownloadResourcesTitle.size(),
				allResources.ArrayKnowledgeJDKDownloadResourcesTitle,
				allResources.ArrayKnowledgeJDKDownloadResourcesTitleText
			)
			pass
		"Tomcat":
			_initKnowledgeVBox(
				allResources.ArrayKnowledgeTOMCATDownloadResourcesTitle.size(),
				allResources.ArrayKnowledgeTOMCATDownloadResourcesTitle,
				allResources.ArrayKnowledgeTOMCATDownloadResourcesTitleText
			)
			pass
		"Mysql":
			_initKnowledgeVBox(
				allResources.ArrayKnowledgeMYSQLDownloadResourcesTitle.size(),
				allResources.ArrayKnowledgeMYSQLDownloadResourcesTitle,
				allResources.ArrayKnowledgeMYSQLDownloadResourcesTitleText
			)
			pass
		"Oracle":
			_initKnowledgeVBox(
				allResources.ArrayKnowledgeORACLEDownloadResourcesTitle.size(),
				allResources.ArrayKnowledgeORACLEDownloadResourcesTitle,
				allResources.ArrayKnowledgeORACLEDownloadResourcesTitleText
			)
			pass
		"Sqlserver":
			_initKnowledgeVBox(
				allResources.ArrayKnowledgeSQLSERVERDownloadResourcesTitle.size(),
				allResources.ArrayKnowledgeSQLSERVERDownloadResourcesTitle,
				allResources.ArrayKnowledgeSQLSERVERDownloadResourcesTitleText
			)
			pass
		"Nginx":
			_initKnowledgeVBox(
				allResources.ArrayKnowledgeNGINXDownloadResourcesTitle.size(),
				allResources.ArrayKnowledgeNGINXDownloadResourcesTitle,
				allResources.ArrayKnowledgeNGINXDownloadResourcesTitleText
			)
			pass
		"Ceph":
			pass
		"Docker":
			pass
		"Ansible":
			pass
		"Chrony":
			pass
		"Elk":
			pass
		"Hadoop":
			pass
		"Ntpd":
			pass
		"Docker":
			pass
		"Kubernetes":
			_initKnowledgeVBox(
				allResources.ArrayKnowledgeKubernetesDownloadResourcesTitle.size(),
				allResources.ArrayKnowledgeKubernetesDownloadResourcesTitle,
				allResources.ArrayKnowledgeKubernetesDownloadResourcesTitleText
			)
			pass
		"Prometheus":
			
			pass
		"RabbitMQ":
			
			pass
		"RocketMQ":
			
			pass
		"Kafka":
			
			pass
		"CentosKernelUpdate":
			
			pass
		"RAID":
			
			pass
		"Github":
			
			pass
	pass

# 加载当前知识点部署内容
func _initKnowledgeVBox(chioseNum,ArrayTitle,ArrayTitleText):
	for i in range(chioseNum):
		# 创造节点
		_initKnowledgePanel()
		# 赋予内容
		knowledgePanel.get_child(0).get_child(0).text = ArrayTitle[i]
		knowledgePanel.get_child(1).get_child(0).text = ArrayTitleText[i]
		# 字符数过多时,通过弹出画面显示
		if(ArrayTitleText[i].length() > 80):
			#print("内容过多")
			knowledgePanel.get_child(1).get_child(1).visible = true
			knowledgePanel.get_child(2).get_child(0).text = ArrayTitleText[i]
			pass
		if(ArrayTitleText[i].find("https") != -1):
			#print("内容为下载Url-可以显示")
			knowledgePanel.get_child(1).get_child(2).visible = true
			pass
		pass
	pass
	
# 下载按钮[下载选中的文档]
func _on_DownloadBtn_pressed():
	#print("_on_DownloadBtn_pressed")
	# 获取网址
	if(allResources.ChioseDownloadUrl != ""):
		# 打开网页
		OS.shell_open(allResources.ChioseDownloadUrl)
		#print("shell_open")
		pass
	pass # Replace with function body.

# 闹铃按钮[选中文档后,推送更新此文档]
func _on_ClockBtn_pressed():
	pass # Replace with function body.
