require_relative 'main_corridor'
require_relative 'bathroom'
require_relative 'death'


class Map

  # class variable of type Hash
  @@rooms = {
    'main_corridor' => MainCorridor.new(),
    'bathroom' => Bathroom.new(),
    'death' => Death.new()
  }

  def initialize(start_room)
    @start_room = start_room
  end

  def next_room(room_name)
    val = @@rooms[room_name]
    return val
  end

  def opening_room()
    return next_room(@start_room)
  end
end
