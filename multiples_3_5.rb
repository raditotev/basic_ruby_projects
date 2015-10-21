natural_numbers = []

for x in 1..999
	if x % 3 == 0 or x % 5 == 0
		natural_numbers << x
	end
end

puts natural_numbers.inject(0) {|sum, x| sum + x}