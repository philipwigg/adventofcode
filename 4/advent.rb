require 'digest'

def winner(input, number)
  md5 = Digest::MD5.hexdigest("#{input}#{number}") 
  if (md5 =~ /^000000/)
    puts "Winner is #{number}! MD5 is #{md5}"
    true
  else
    false
  end
end

input = 'yzbqklnj'
number = 0

until winner(input, number)
  number += 1 
end
