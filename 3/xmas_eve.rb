def move_location(direction, current_location)

  x = current_location[0]
  y = current_location[1]

  case direction
    when '^'
      y += 1 
    when 'v'
      y -= 1 
    when '>'
      x += 1 
    when '<'
      x -= 1 
  end

  return [x,y]

end

i = IO.read('input.txt')

location_list = []
current_location = [0,0]

i.each_char do |c|
  location_list << current_location
  current_location = move_location(c, current_location)
end

puts "#{location_list.uniq.count} houses got at least one present!"
