class Death < Room
  def enter()
    puts "You are now dead!"
    puts "Game over."
    exit(0)
  end
end
