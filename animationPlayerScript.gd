extends AnimationPlayer

var animation = AnimationResource.new()
var getAnimation = animation.getAnimationResource()

func _ready() -> void:
	self.add_animation("play", getAnimation)
	self.play("Test")
	# self.stop()
