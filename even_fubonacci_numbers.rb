def find_fib_numbers count
	fib_numbers = []
	a = 0
	b = 1
	count.times do
		c = a + b
		fib_numbers.push(c)
		a, b = b, c
	end
	return fib_numbers
end

def fib_numbers_less_than number
	fib_numbers = [0]
	i = 1
	while fib_numbers[-1] < number
		fib_numbers = find_fib_numbers(i)
		i += 1
	end
	fib_numbers
end


fib_numbers = fib_numbers_less_than(4000000)

fib_numbers = fib_numbers.select{|number| number % 2 == 0}

puts fib_numbers.inject {|sum, x| sum + x}