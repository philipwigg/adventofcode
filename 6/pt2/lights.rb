class Lights

  attr_accessor :lights

  def initialize
    @lights = Array.new(1000) { Array.new(1000,0) }
  end

  def count
    c = 0
    @lights.each do |a|
        a.each { |b| c = c + b } 
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
      @lights[x][y] = @lights[x][y] + 1; 
    end
  end

  def turn_off(top_left, bottom_right)
    lights_to_change = lights_to_change(top_left,bottom_right)
    lights_to_change.each do |x,y|
      if @lights[x][y] > 0
        @lights[x][y] = @lights[x][y] - 1 
      end
    end
  end

  def toggle(top_left, bottom_right)
    lights_to_change = lights_to_change(top_left,bottom_right)
    lights_to_change.each do |x,y|
      @lights[x][y] = @lights[x][y] + 2 
    end
  end
 
end

