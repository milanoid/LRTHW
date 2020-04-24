
def fill_list_with_numbers(list, limit, increment)
  i = 0
  while i < limit
    puts "At the top i is #{i}"
    list.push(i)

    i += increment
    puts "Numbers now: ", list
    puts "At the bottom i is #{i}"
  end
  return list
end

def fill_list_with_numbers_using_for_loop(list, limit)
  (0..limit).each do |i|
    list.push(i)
  end
  return list
end

puts "The numbers: "

numbers = []
numbers = fill_list_with_numbers(numbers, 6, 2)
numbers.each {|num| puts num}

puts "The numbers2: "
numbers2 = []
numbers2 = fill_list_with_numbers_using_for_loop(numbers2, 6)
numbers2.each {|num| puts num}
