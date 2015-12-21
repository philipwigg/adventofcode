require_relative 'lights'
require_relative 'parser'

l = Lights.new

#top_left = { :x => 0, :y => 0 }
#bottom_right = { :x => 3, :y => 3 }
#l.turn_on(top_left, bottom_right)
#l.count

p = InputParser.new('input.txt')

instructions = p.get_instructions

instructions.each do |i|
  command = i[:command]
  case command 
    when 'turn on'
      l.turn_on(i[:top_left], i[:bottom_right])
    when 'turn off'
      l.turn_off(i[:top_left], i[:bottom_right])
    when 'toggle'
      l.toggle(i[:top_left], i[:bottom_right])
  end
      
end

puts "The total brightness is #{l.count}!"
