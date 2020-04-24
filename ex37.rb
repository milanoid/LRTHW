BEGIN {
  puts "This is the very first block of code to run..."
}


def hello
  puts "Hello"
end

# alias
alias ahoy hello

# case
def my_case(number)
  case number
  when 0
    "You are zero!"
  when 1
    "You are number one!"
  when 2
    "You are number two!"
  else
    "Error: either not a number or an uknown number #{number}"
  end
end

puts my_case(2)

# class
class Person {
  @my_instance_variable # different from object to object
  @@my_class_variable # the same variable available across different objects
}






END {
  puts "This is the very last block of code to run..."
}
