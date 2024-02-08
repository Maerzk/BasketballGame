extends Node

var score = 0
signal score_changed

func increase_score(scoreValue):
	score += scoreValue
	score_changed.emit()

func reset_score():
	score = 0
	score_changed.emit()
