letters = ('a'..'z').to_a
$double_letters = letters.map { |x| x + x } 

def contains_three_vowels?(input)

  vowels = 0

  input.each_char { |c|
    if c =~ /a|e|i|o|u/
      vowels += 1
    end
  }

  if vowels >= 3
    true
  else
    false
  end

end

def twice_in_a_row?(input)
  matched = false
  $double_letters.each { |double_letter|
    if input =~ /#{double_letter}/
      matched = true
    end
  }
  if matched
    true
  else
    false
  end
end

def contains_bad_strings?(input)
  if input =~ /ab|cd|pq|xy/
    true
  else
    false
  end
end

def nice?(input)
  if contains_three_vowels?(input) && twice_in_a_row?(input) && (! contains_bad_strings?(input))
    true
  else
    false
  end
end

i = IO.read('input.txt')

count = 0

i.each_line do |line|
  if nice?(line)
    count += 1
  end
end

puts "#{count} strings are nice!"
