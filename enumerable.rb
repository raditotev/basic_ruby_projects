module Enumerable
	def my_each
		i = 0
		while i < self.size
			yield(self[i])
			i += 1
		end
		self
	end

	def my_each_with_index
		i = 0
		while i < self.size
			yield(self[i], i)
			i += 1
		end
		self
	end

	def my_collect
		result = []
		self.my_each{|n| result << yield(n)}
		result
	end

	def my_all?
		i = 0
		while i < self.size
			if block_given?
				if yield(self[i]) == false
					return false
					break
				end
			end
			if self[i] == false or self[i] == nil
				return false
				break
			end
			i += 1
		end
		return true
	end

	def my_any?
		i = 0
		while i < self.size
			if block_given?
				if yield(self[i])
					return true
					break
				end
			end
			if self[i] == true
				return true
				break
			end
			i += 1
		end
		return true
	end

	def my_none?
		reslut = true
		self.my_each do |el|
			if block_given?
				output = yield(el)
				if output
					return false
					break
				end
			elsif el
				return false
				break
			end
		end
		reslut
	end

	def my_count
		count = 0
		self.my_each{|el| count +=1}
		count
	end

	# def my_map
	# 	result = []
	# 	self.my_each{|n| result << yield(n)}
	# 	result
	# end

	def my_map(&proc)
		result = []
		if block_given?
			self.my_each{|n| result << yield(n)}
		else
			self.my_each{|el| result << proc.call(el)}
		end
		result
	end

	def my_inject
		i = 0
		sum = self[i]
		while i + 1 < self.size
			sum = yield(sum, self[i+1])
			i += 1
		end
		sum
	end

	def multiply_els
		self.my_inject{|sum, el| sum * el}
	end
end