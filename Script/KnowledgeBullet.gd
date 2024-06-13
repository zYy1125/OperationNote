extends AnimatedSprite


#
# 子弹
#

# 属性
var speed:float = 500
var type:String
var target
var velocity:Vector2
#


# Called when the node enters the scene tree for the first time.
func _ready():
	self.animation == "default"
	pass # Replace with function body.

func _process(delta):
	#velocity = global_position.direction_to(target.global_position)*speed
	velocity = global_position.direction_to(target)*speed
	global_position += velocity * delta
	_rotationLogic()
	pass

# 自旋转
func _rotationLogic():
	self.rotation_degrees += 25
	pass


# 碰撞后节点消失
func _on_HitBox_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	queue_free()
	pass # Replace with function body.
