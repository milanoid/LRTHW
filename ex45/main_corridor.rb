require_relative 'room'

class MainCorridor < Room
  def enter()
    puts "Doors have closed and you are in the main corridor."
    puts "You see a wardrobe on the left."
    puts "You may wash your hands in bathroom."
    puts "Available options are: 'Go to bathroom' and 'Open the wardrobe'"

    input = $stdin.gets.chomp

    case input
    when "Go to bathroom"
      return "bathroom"
    when "Open the wardrobe"
      return "death"
    else
      puts "Not an option..."
      return "main_corridor"
    end
  end
end
