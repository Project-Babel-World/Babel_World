extends CanvasLayer

@export_file("*json") var sceneTextFile
var sceneText = {}
var selectedText = []
var inProgress = false

@onready var background = $Background
@onready var textLabel = $TextLabel

func _ready():
	background.visible = false
	sceneText = load_scene_text()
	SignalBus.connect("display_dialogue", show_text, "on_display_dialogue")
	
func load_scene_text():
	var file = File.new()
	if file.file_exists(sceneTextFile):
		file.open(sceneTextFile, File.READ)
		return parse_json(file.get_as_text())
		
func show_text():
		textLabel.text = selectedText.pop_front()
		
func next_line():
	if selectedText.size() > 0:
		show_text()
	else:
		finish()

func finish():
	textLabel.text = ""
	background.visible = false
	inProgress = false
	get_tree().paused = false
	
func on_display_dialogue(textKey):
	if inProgress:
		next_line()
	else:
		get_tree().paused = true
		background.visible = true
		inProgress = true
		selectedText = sceneText[textKey].duplicate()
		show_text()
