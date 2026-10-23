# autoloads/save_manager.gd
extends Node

func save_data(key: String, value: Variant) -> void:
	var config := ConfigFile.new()
	config.load("user://save.cfg")
	config.set_value("data", key, value)
	config.save("user://save.cfg")

func load_data(key: String, default_value: Variant = null) -> Variant:
	var config := ConfigFile.new()
	if config.load("user://save.cfg") != OK:
		return default_value
	return config.get_value("data", key, default_value)
