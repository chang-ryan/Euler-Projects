# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below N.

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

