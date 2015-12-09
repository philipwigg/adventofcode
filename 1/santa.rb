i = IO.read('input.txt')

floor = 0

i.each_char { |c|
  case c
    when "("
      floor += 1
    when ")"
      floor -= 1
  end
}

puts "Santa is on floor #{floor}!"
