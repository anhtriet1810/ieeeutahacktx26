#extends Sprite2D
#
#const VARIANTS := {
	#"red": preload("res://assets/game/fairy/red-fairy.png"),
	#"yellow": preload("res://assets/game/fairy/yellow-fairy.png"),
	#"blue": preload("res://assets/game/fairy/blue-fairy.png"),
#}
#
#func load_variants(dir_path: String) -> Dictionary:
	#var result := {}
	#for file in ResourceLoader.list_directory(dir_path):
		#if file.ends_with(".png"):
			#var key := file.get_basename()  # "player_red"
			#result[key] = load(dir_path.path_join(file))
	#return result
	#
#func load_external(path: String) -> Texture2D:
	#var img := Image.load_from_file(path)
	#if img == null:
		#push_error("Could not load %s" % path)
		#return null
	#return ImageTexture.create_from_image(img)
#
#func build_frames(textures: Array[Texture2D], fps := 6.0) -> SpriteFrames:
	#var frames := SpriteFrames.new()
	#frames.set_animation_speed("default", fps)
	#for tex in textures:
		#frames.add_frame("default", tex)
	#return frames
#
##func _ready():
	##var variants := load_variants("res://sprites")
	##var ordered: Array[Texture2D] = [
		##variants["red"], variants["yellow"], variants["blue"]
	##]
	##$AnimatedSprite2D.sprite_frames = build_frames(ordered)
	##$AnimatedSprite2D.play("default")
