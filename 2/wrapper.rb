def area(l,w,h)
  surface_area = 2*l*w + 2*w*h + 2*h*l
  smallest_side = [ l*w,l*h,w*h].min 
  return  surface_area + smallest_side
end

def ribbon(l,w,h)
  shortest = [ l+l+w+w,l+l+h+h,h+h+w+w ].min
  cubic = l*w*h
  return shortest + cubic
end

i = IO.read('input.txt')

paper_total = 0
ribbon_total = 0

i.each_line do |line|
  dims = line.split('x')
  l = dims[0].to_i
  w = dims[1].to_i
  h = dims[2].to_i

  paper_total = paper_total + area(l,w,h)
  ribbon_total = ribbon_total + ribbon(l,w,h)
end

puts "Paper total is #{paper_total}"
puts "Ribbon total is #{ribbon_total}"

