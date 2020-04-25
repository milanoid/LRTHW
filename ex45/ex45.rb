require_relative 'map'
require_relative 'engine'


a_map = Map.new('main_corridor')
a_game = Engine.new(a_map)
a_game.play()
