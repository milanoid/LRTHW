class Bathroom < Room
  def enter()
    puts "You have washed your hands. Now back to the main corridor."
    return "main_corridor"
  end
end
