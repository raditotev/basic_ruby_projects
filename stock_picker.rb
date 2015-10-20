# Implement a method #stock_picker that takes in an array of stock
# prices, one for each hypothetical day.
# It should return a pair of days representing the best day to buy
# and the best day to sell. Days start at 0.

def stock_picker array
	profit = 0
	max = 0
	min = 0
	(0..array.size).each do |i|
		array[i..-1].each do |j|
			temp = j - array[i]
			if temp > profit
				profit = temp
				min = i
				max = array.find_index(j)
			end
		end
	end
	p [min, max]
end

stock_picker([17,3,6,9,15,8,6,1,10])

# => [1,4] for a profit of $15 - $3 == $12