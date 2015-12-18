def all_pairs_to_array(input)

  pairs = []
  all_chars = input.chomp.split ""

  all_chars.each_index do | index |
    pairs << [ all_chars[index], all_chars[index+1] ]
  end

  return pairs

end

def matching_pairs?(pairs)

  has_matching_pair = false

  until pairs.length <= 1 do

    pair = pairs.shift
    remaining_pairs = pairs.drop(1)
    if remaining_pairs.include?(pair)
      has_matching_pair = true 
    end

  end

  return has_matching_pair

end

count = 0

i = IO.read('input.txt')

i.each_line do |line|
  pairs = all_pairs_to_array(line)
  if  matching_pairs?(pairs)
    count += 1
  end
end

puts "#{count} strings are nice!"
