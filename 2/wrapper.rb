def area(l,w,h)
  surface_area = 2*l*w + 2*w*h + 2*h*l
  smallest_side = [ l*w,l*h,w*h].min 
  return  surface_area + smallest_side
end

i = IO.read('input.txt')

total = 0

i.each_line do |line|
  dims = line.split('x')
  total = total + (area(dims[0].to_i,dims[1].to_i,dims[2].to_i))
end

puts "Total is #{total}!"
