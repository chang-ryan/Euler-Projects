def sum(multiple, max)
  count = (max-1) / multiple
  last = multiple * count
  sum = ((multiple+last)/2.0) * count
  sum.floor
end

def sum_of_multiples
	t = gets.chomp.to_i
	return "bad input" unless t >=1 and t <= 10**5
	
	n = []
	
	t.times do 
		input = gets.chomp.to_i
		return "bad input" unless input >= 1 and input <= 10**9
		n << input
	end
	
	n.each do |max|
	  result = sum(3,max) + sum(5,max)
	  result -= sum(3*5,max)
	  puts result
	end
end

sum_of_multiples

