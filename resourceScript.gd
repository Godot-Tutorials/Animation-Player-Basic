extends Animation

class_name AnimationResource

func getAnimationResource() -> Animation:
	self.set_length(2.0) # how long is our total animation
	
	
	print("Length of Animation in Seconds: ", self.length, "\n")
	
	
	var track_index = self.add_track(Animation.TYPE_VALUE)
	self.track_set_path(track_index, "/root/Node2D/Enemy:position:x")
	self.track_insert_key(track_index, 0.0, 0)
	self.track_insert_key(track_index, 1.0, 100)
	self.track_insert_key(track_index, 2.0, 500)
	var indexPos0 = self.find_track('/root/Node2D/Enemy:position:x')
	
	
	print("Total Tracks Set: ", self.get_track_count())
	print("Track Index Value: ", indexPos0, "\n")
	print("Create another track\n")
	
	
	var track_index1 = self.add_track(Animation.TYPE_VALUE)
	self.track_set_path(track_index1, "/root/Node2D/Enemy:position:y")
	var indexPos1 = self.find_track('/root/Node2D/Enemy:position:y')
	
	
	print("Total Tracks Set: ", self.get_track_count())
	print("Track Index Value: ", indexPos1)
	
	
	return self # returns an animation
