extends Node3D

@export var action_button_action : String = "trigger_click"
var isDisabled = false  # Initial visibility state

func _ready():
	visible = isDisabled
	set_process_input(isDisabled)
	set_process(isDisabled)
	$"../../XRRighthand/FunctionPointer".visible = isDisabled
	$"../../XRRighthand/FunctionPointer".set_process_input(isDisabled)
	$"../../XRRighthand/FunctionPointer".set_process(isDisabled)
	# $"../../XRRighthand/FunctionPickup".visible = !isDisabled
	# $"../../XRRighthand/FunctionPickup".set_process_input(!isDisabled)
	# $"../../XRRighthand/FunctionPickup".set_process(!isDisabled)

func _on_xr_lefthand_button_pressed(name):
	if name == "ax_button":
		print("ax_button pressed")
		isDisabled = !isDisabled
		
		visible = !isDisabled
		set_process_input(!isDisabled)
		set_process(!isDisabled)
		$"../../XRRighthand/FunctionPointer".visible = !isDisabled
		$"../../XRRighthand/FunctionPointer".set_process_input(!isDisabled)
		$"../../XRRighthand/FunctionPointer".set_process(!isDisabled)
		# $"../../XRRighthand/FunctionPickup".visible = isDisabled
		# $"../../XRRighthand/FunctionPickup".set_process_input(isDisabled)
		# $"../../XRRighthand/FunctionPickup".set_process(isDisabled)
