class Toilet < Room
  def enter()
    puts "Now in a toilet room. Would you like to switch the lights on?"
    puts "Available options 'Switch lights on' or 'Leave'"

    input = $stdin.gets.chomp

    case input
    when "Switch lights on"
      puts "Hurray, let it be light!"
      return "toilet"
    when "Leave"
      puts "Ok, you are going back to to main corridor..."
      return "main_corridor"
    else
      puts "What?"
      return "toilet"
    end
  end
end
