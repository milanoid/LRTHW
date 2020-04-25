require_relative 'map'

class Engine

  def initialize(room_map)
    @room_map = room_map
  end

  def play()
    current_room = @room_map.opening_room()
    last_room = @room_map.next_room('finished')

    while current_room != last_room
      next_room_name = current_room.enter()
      puts "Next room to be: ", next_room_name
      current_room = @room_map.next_room(next_room_name)
      puts "New current room is: ", current_room
    end

    # be sure to print out the last scene
    current_room.enter()
  end
end
