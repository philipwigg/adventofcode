i = IO.read('input.txt')

floor = 0
position = 0
entered_basement = false
basement_position = 0

i.each_char { |c|

  position += 1

  case c
    when "("
      floor += 1
    when ")"
      floor -= 1
  end

  if floor == -1 && !entered_basement
    basement_position = position
    entered_basement = true
  end
    
}

puts "Santa is on floor #{floor}!"

if entered_basement
  puts "Santa first reach the basement at position #{basement_position}."
else
  puts "Poor Santa never reached the basement..."
end
