extends Node

const SAVEFILE = "user://SAVEFILE.save"
signal data_loaded

var game_data = {
	"VidasJugador": 10
}

func _ready():
	load_data()

func load_data():
	var file = FileAccess.open(SAVEFILE,FileAccess.READ)
	print(file)
	if file == null:
		save_data()
	else:
		var data_saved = file.get_var()

		for data in game_data.keys():
			if !game_data.keys().has(data):
				data_saved[data] = game_data[data]
		game_data = data_saved
	save_data()
	file = null 

func save_data():
	var file = FileAccess.open(SAVEFILE,FileAccess.WRITE)
	file.store_var(game_data)
	file = null 
