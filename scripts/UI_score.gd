extends Control

func _ready():
	Global.connect("score_changed", _on_score_changed)
	update_score()

func _on_score_changed():
	print("_on_score_changed received")
	update_score()

func update_score():
	$Score.text = str(Global.score)
