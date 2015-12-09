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
santa_current_location = [0,0]
robo_current_location = [0,0]
robo_turn = false

i.each_char do |c|
  if robo_turn
    robo_current_location = move_location(c, robo_current_location)
    location_list << robo_current_location
    robo_turn = false
  else
    santa_current_location = move_location(c, santa_current_location)
    location_list << santa_current_location
    robo_turn = true
  end
end

puts "#{location_list.uniq.count} houses got at least one present!"
