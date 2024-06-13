extends Panel


#
# 页面内容:
#		玩家操作命令模块对抗BOSS
#

# ErrorNode
var ErrorNode = preload("res://Scene/ErrorNode.tscn")
var errorNode

# 定义随机变量
var QuestionRanNum
# 定义命令结果输出行数
var BulletTrackIndex = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	# 首次加载提问
	_showQuestionTip()
	# 初始化点击事件
	_initKeyboardOnClick()
	# 初始化点击事件 - 扩展
	_initKeyboardExtend()
	pass # Replace with function body.

#------------------------  gui_input  ---------------------------#

# 初始化点击事件
func _initKeyboardOnClick():
	for Keyboard_item in $"KeyboardPanel/Keyboard/KnowledgeContainer/Container".get_children():
		Keyboard_item.connect("gui_input",self,"_on_GameKeyboard_input",[Keyboard_item])
	pass
	
# _on_GameKeyboard_input
func _on_GameKeyboard_input(event,Keyboard_item):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		#var body_index = body_item.get_index()
		var body_Label = Keyboard_item.text
		#var body_Label = Keyboard_item.get_child(0).text
		# 标识对应文本内容
		_showOrderText(body_Label)
		# 设置音效
		#_SoundsPlayer("res://Music and Sounds/Pause.wav",-15)
		pass
	pass
	
# 初始化点击事件
func _initKeyboardExtend():
	for Keyboard_item in $"KeyboardPanel/YSortExtendUI/ExtendPanel/ExtendContainer/Container".get_children():
		Keyboard_item.connect("gui_input",self,"_on_KeyboardExtend_input",[Keyboard_item])
	pass
	
# _on_GameKeyboard_input
func _on_KeyboardExtend_input(event,Keyboard_item):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		#var body_index = body_item.get_index()
		var body_Label = Keyboard_item.text
		# 标识对应文本内容
		_showOrderText(body_Label)
		# 设置音效
		#_SoundsPlayer("res://Music and Sounds/Pause.wav",-15)
		pass
	pass
	
#------------------------  gui_input  ---------------------------#
	
	
	
# Order - 文件标识
func _on_OderFileBtn_pressed():
	_showOrderText("File.txt")
	_SoundsPlayer("res://Music and Sounds/Audio1.wav",0)
	pass # Replace with function body.
	
# Order - 字符串标识
func _on_OrderAttackBtn_pressed():
	_showOrderText("Attack")
	_SoundsPlayer("res://Music and Sounds/Audio2.wav",0)
	pass # Replace with function body.

# Order - 发送指令标识
func _on_OrderSendBtn_pressed():
	# 核对指令
	#$"KeyboardPanel/ShowOrder/OrderLabel".text.length()
	#$"KeyboardPanel/ShowOrder/OrderLabel".text.substr(22)
	#print($"KeyboardPanel/ShowOrder/OrderLabel".text.substr(0,$"KeyboardPanel/ShowOrder/OrderLabel".text.length()-1))
	var tmpText = $"KeyboardPanel/ShowOrder/OrderLabel".text.substr(0,
		$"KeyboardPanel/ShowOrder/OrderLabel".text.length()-1)
	#  指令正确：
	#	-	发动攻击
	#	-	BOSS抖动
	#	-	分数增加
	if(tmpText == allResources._QuestionTipValue.get(int(QuestionRanNum))[2]):
		print("核对:指令正确")
	# 	-	指令正确音效
		_SoundsPlayer("res://Music and Sounds/Audio2.wav",0)
	#	-	发动攻击
		_initKnowledgeBulletTrack()
	#	-	BOSS抖动
		#_updateBossModelLogic()
	#	-	分数增加
		_getScoreLabel()
		pass
	#  指令错误：
	#	-	键盘抖动
	#	-	键盘增加遮挡模组
	#	-	BOSS眼睛闪烁
	else:
		print("核对:指令错误")
	#	-	BOSS眼睛闪烁
		_updateBossModel()
	#	-	键盘增加遮挡模组
		_addErrorModel()
	# 	-	指令错误音效
		_SoundsPlayer("res://Music and Sounds/Pause.wav",-15)
		pass
	
	# 清空指令内容
	_DelOrderText()
	pass # Replace with function body.
	


# Order - 扩展按钮
func _on_ExtendBtn_pressed():
	# 显示扩展额外按钮
	if($"KeyboardPanel/YSortExtendUI/ExtendPanel".visible == true):
		$"KeyboardPanel/YSortExtendUI/ExtendPanel".visible = false
	else:
		$"KeyboardPanel/YSortExtendUI/ExtendPanel".visible = true
	pass # Replace with function body.


# Order - 删除按钮
func _on_DelBtn_pressed():
	# 清空指令内容
	_DelOrderText()
	pass # Replace with function body.


# 显示文本内容
func _DelOrderText():
	# 清空指令内容
	$"KeyboardPanel/ShowOrder/OrderLabel".text = ""
	pass

# 显示文本内容
func _showOrderText(text):
	$"KeyboardPanel/ShowOrder/OrderLabel".text = $"KeyboardPanel/ShowOrder/OrderLabel".text + text + " "
	pass

# 显示提问
func _showQuestionTip():
	# 获取随机编号
	var RanNum = randi() % allResources._QuestionTipValue.size()
	# TEST
	RanNum = 1
	QuestionRanNum = RanNum
	# TEST
	#print(allResources._QuestionTipValue.get(int(RanNum))[0])
	#print(allResources._QuestionTipValue.get(int(RanNum))[1])
	# 设置题目Tip
	$"QuestionPanel/QuestionTip".text = \
		allResources._QuestionTipValue.get(int(RanNum))[0]
	# 设置题目提示
	$"QuestionPanel/QuestionTipValue".text = \
		allResources._QuestionTipValue.get(int(RanNum))[1]
	pass

# 设置BOSS头像
func _updateBossModel():
	$"BossModel/BossModelIcon".texture = \
		load("res://Icon/UITexture/Icon_RedSkull.png")
	yield(get_tree().create_timer(0.35), "timeout")
	$"BossModel/BossModelIcon".texture = \
		load("res://Icon/UITexture/Icon_Skull.png")
	pass

# 答案错误时触发
func _addErrorModel():
	# 随机位置增加模组
	var RanPosx = rand_range(0,680)
	var RanPosy = rand_range(0,200)
	var ErrorPos = Vector2(RanPosx,RanPosy)
	_initErrorNode(ErrorPos)
	# 抖动键盘
	$"KeyboardPanel".rect_position.x -= 16
	yield(get_tree().create_timer(0.05), "timeout")
	$"KeyboardPanel".rect_position.x += 16
	pass
# 初始化错误节点模组
func _initErrorNode(ErrorPos):
	errorNode = ErrorNode.instance()
	$"KeyboardPanel/YSortErrorUI".add_child(errorNode)
	errorNode.rect_position = ErrorPos
	pass

# BOSS模块受到攻击时触发
func _updateBossModelLogic():
	$"BossModel".rect_position.x -= 16
	yield(get_tree().create_timer(0.05), "timeout")
	$"BossModel".rect_position.x += 16
	pass

# 播放音效
func _SoundsPlayer(ResUrl,DBv):
	$"KeyboardPanel/BtnPlayer".stream = load(ResUrl)
	$"KeyboardPanel/BtnPlayer".playing = true
	$"KeyboardPanel/BtnPlayer".volume_db = DBv
	pass

# 获取分数
func _getScoreLabel():
	$"InfoShowPanel/ScoreLabel".text = \
		String(int($"InfoShowPanel/ScoreLabel".text) + 50)
	pass

# -----------------------  子弹攻击  -----------------------------
# 连续发子弹攻击
func _initKnowledgeBulletTrack():
	for i in range(BulletTrackIndex):
		_KnowledgeBulletTrack()
		yield(get_tree().create_timer(0.25), "timeout")
		pass
	pass
# 指令正确 - 触发子弹攻击
func _KnowledgeBulletTrack():
	var bullet = preload("res://Scene/KnowledgeBullet.tscn").instance()
	self.add_child(bullet)
	bullet.global_position = Vector2(1000,96)
	bullet.target = Vector2(464,192)
	bullet.velocity = bullet.global_position.direction_to(get_global_mouse_position()) * bullet.speed
	bullet.rotation = bullet.velocity.angle()
	pass
# -----------------------  子弹攻击  -----------------------------



# AREABox
func _on_HurtBox_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	#	-	BOSS抖动
	_updateBossModelLogic()
	#	-	BOSS受伤
	#	-	根据玩家命令结果的行数设置伤害
	_setHurtBoxareaValue()
	pass # Replace with function body.
# 根据玩家命令结果的行数设置伤害
func _setHurtBoxareaValue():
	$"BossModel/BossModelName".text = \
	String(
		int(int($"BossModel/BossModelName".text) - 50 * BulletTrackIndex)
		)
	pass


















