extends Node2D

#
# 知识点 - 部署页面
#


# 知识点 - 节点x - 闲聊
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
				allResources.ArrayKnowledgeJDKResourcesTitle.size(),
				allResources.ArrayKnowledgeJDKResourcesTitle,
				allResources.ArrayKnowledgeJDKResourcesTitleText
			)
			pass
		"Tomcat":
			_initKnowledgeVBox(
				allResources.ArrayKnowledgeTOMCATResourcesTitle.size(),
				allResources.ArrayKnowledgeTOMCATResourcesTitle,
				allResources.ArrayKnowledgeTOMCATResourcesTitleText
			)
			pass
		"Mysql":
			_initKnowledgeVBox(
				allResources.ArrayKnowledgeMysqlResourcesTitle.size(),
				allResources.ArrayKnowledgeMysqlResourcesTitle,
				allResources.ArrayKnowledgeMysqlResourcesTitleText
			)
			pass
		"Oracle":
			pass
		"Sqlserver":
			pass
		"Nginx":
			_initKnowledgeVBox(
				allResources.ArrayKnowledgeNGINXResourcesTitle.size(),
				allResources.ArrayKnowledgeNGINXResourcesTitle,
				allResources.ArrayKnowledgeNGINXResourcesTitleText
			)
			pass
		"Ceph":
			_initKnowledgeVBox(
				allResources.ArrayKnowledgeCephResourcesTitle.size(),
				allResources.ArrayKnowledgeCephResourcesTitle,
				allResources.ArrayKnowledgeCephResourcesTitleText
			)
			pass
		"Docker":
			_initKnowledgeVBox(
				allResources.ArrayKnowledgeDockerResourcesTitle.size(),
				allResources.ArrayKnowledgeDockerResourcesTitle,
				allResources.ArrayKnowledgeDockerResourcesTitleText
			)
			pass
		"Ansible":
			_initKnowledgeVBox(
				allResources.ArrayKnowledgeAnsibleResourcesTitle.size(),
				allResources.ArrayKnowledgeAnsibleResourcesTitle,
				allResources.ArrayKnowledgeAnsibleResourcesTitleText
			)
			pass
		"Chrony":
			_initKnowledgeVBox(
				allResources.ArrayKnowledgeChronyResourcesTitle.size(),
				allResources.ArrayKnowledgeChronyResourcesTitle,
				allResources.ArrayKnowledgeChronyResourcesTitleText
			)
			pass
		"Elk":
			_initKnowledgeVBox(
				allResources.ArrayKnowledgeElkResourcesTitle.size(),
				allResources.ArrayKnowledgeElkResourcesTitle,
				allResources.ArrayKnowledgeElkResourcesTitleText
			)
			pass
		"Hadoop":
			pass
		"Ntpd":
			_initKnowledgeVBox(
				allResources.ArrayKnowledgeNtpdResourcesTitle.size(),
				allResources.ArrayKnowledgeNtpdResourcesTitle,
				allResources.ArrayKnowledgeNtpdResourcesTitleText
			)
			pass
		"Kubernetes":
			_initKnowledgeVBox(
				allResources.ArrayKnowledgeKubernetesResourcesTitle.size(),
				allResources.ArrayKnowledgeKubernetesResourcesTitle,
				allResources.ArrayKnowledgeKubernetesResourcesTitleText
			)
			pass
		"Prometheus":
			pass
		"RabbitMQ":
			_initKnowledgeVBox(
				allResources.ArrayKnowledgeRabbitMQResourcesTitle.size(),
				allResources.ArrayKnowledgeRabbitMQResourcesTitle,
				allResources.ArrayKnowledgeRabbitMQResourcesTitleText
			)
			pass
		"RocketMQ":
			_initKnowledgeVBox(
				allResources.ArrayKnowledgeRocketMQResourcesTitle.size(),
				allResources.ArrayKnowledgeRocketMQResourcesTitle,
				allResources.ArrayKnowledgeRocketMQResourcesTitleText
			)
			pass
		"Kafka":
			_initKnowledgeVBox(
				allResources.ArrayKnowledgeKafkaResourcesTitle.size(),
				allResources.ArrayKnowledgeKafkaResourcesTitle,
				allResources.ArrayKnowledgeKafkaResourcesTitleText
			)
			pass
		"CentosKernelUpdate":
			_initKnowledgeVBox(
				allResources.ArrayKnowledgeCentosKernelResourcesTitle.size(),
				allResources.ArrayKnowledgeCentosKernelResourcesTitle,
				allResources.ArrayKnowledgeCentosKernelResourcesTitleText
			)
			pass
		"Linux":
			_initKnowledgeVBox(
				allResources.ArrayKnowledgeLinuxInstructResourcesTitle.size(),
				allResources.ArrayKnowledgeLinuxInstructResourcesTitle,
				allResources.ArrayKnowledgeLinuxInstructResourcesTitleText
			)
		"Github":
			_initKnowledgeVBox(
				allResources.ArrayKnowledgeGithubResourcesTitle.size(),
				allResources.ArrayKnowledgeGithubResourcesTitle,
				allResources.ArrayKnowledgeGithubResourcesTitleText
			)
			pass
		"Jellyfin":
			_initKnowledgeVBox(
				allResources.ArrayKnowledgeJellyfinResourcesTitle.size(),
				allResources.ArrayKnowledgeJellyfinResourcesTitle,
				allResources.ArrayKnowledgeJellyfinResourcesTitleText
			)
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
	
	
	
	
	
	
	
	
