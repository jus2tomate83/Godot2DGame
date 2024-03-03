extends AudioStreamPlayer2D

var timer_interval : float = 0.5 # Intervalle en secondes

func _ready():
	# Démarrez le minuteur pour jouer le son toutes les secondes
	$"../Timer".start(timer_interval)

func _on_timer_timeout():
	play()
