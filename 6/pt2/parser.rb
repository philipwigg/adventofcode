class InputParser

  def initialize(filename)
    @instructions = [ ]
    @i = IO.read(filename)
  end

  def get_instructions
    @i.each_line do |line|
      @instructions << parse_line(line)
    end
    return @instructions
  end

  def parse_line(line)

    command = {}
    instruction = {}
    top_left = {}
    bottom_right = {}

    mtch = line.match(/^(turn on|turn off|toggle) (\d+),(\d+) through (\d+),(\d+)/)
    command = mtch[1]
    top_left[:x] = mtch[2].to_i
    top_left[:y] = mtch[3].to_i
    bottom_right[:x] = mtch[4].to_i
    bottom_right[:y] = mtch[5].to_i

    instruction = { :command => command, :top_left => top_left, :bottom_right => bottom_right }
  end

end
