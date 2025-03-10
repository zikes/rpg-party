extends Node2D

var PositionHistory: Array[Vector2] = []
var PositionHistoryMaxLength: int = 30

@export var Following: Node2D

func _process(delta: float) -> void:
	# Is this character currently following anyone?
	if Following and len(Following.PositionHistory) > 0:
		# If so, update our position to be the oldest position in the leader's position history
		position = Following.PositionHistory[-1]

	# If the current position matches the most recent position, don't add it again.
	if len(PositionHistory) > 0 and position == PositionHistory[0]: return
	
	# Add the character's current position to the front of the array
	PositionHistory.push_front(position)
	
	# Trim the array to a maximum length so it doesn't grow endlessly
	PositionHistory = PositionHistory.slice(0, PositionHistoryMaxLength)
