class Lights

  attr_accessor :lights

  def initialize
    @lights = Array.new(1000) { Array.new(1000,'off') }
  end

  def count
    c = 0
    @lights.each do |a|
      c = c + a.count('on')
    end
    return c
  end

  def count_off
    c = 0
    @lights.each do |a|
      c = c + a.count('off')
    end
    return c
  end

  def print
    @lights.each do |x|
      puts x.to_s
    end
  end

  def lights_to_change(top_left, bottom_right)

    lights_to_change  = []

    current_position  = top_left
    x                 = current_position[:x]
    y                 = current_position[:y]

    until y > bottom_right[:y] do 
      until x > bottom_right[:x] do
        lights_to_change.push([x,y])
        x += 1
      end
    x = top_left[:x]
    y += 1
    end

    return lights_to_change

  end

  def turn_on(top_left, bottom_right)
    lights_to_change = lights_to_change(top_left,bottom_right)
    lights_to_change.each do |x,y|
      @lights[x][y] = 'on'
      #puts "Turning on #{x},#{y}"
    end
  end

  def turn_off(top_left, bottom_right)
    lights_to_change = lights_to_change(top_left,bottom_right)
    lights_to_change.each do |x,y|
      @lights[x][y] = 'off'
      #puts "Turning off #{x},#{y}"
    end
  end

  def toggle(top_left, bottom_right)
    lights_to_change = lights_to_change(top_left,bottom_right)
    lights_to_change.each do |x,y|
      case @lights[x][y]
        when 'on'
          #puts "Toggling off #{x},#{y}"
          @lights[x][y] = 'off' 
        when 'off'
          #puts "Toggling on #{x},#{y}"
          @lights[x][y] = 'on' 
      end
    end
  end
 
end

