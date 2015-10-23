# def bubble_sort arr
# 	n = arr.length
# 	count  = 0
# 	begin
# 		swapped = false
# 		for i in 1..n-1
# 			if arr[i - 1] > arr[i]
# 				arr[i - 1], arr[i] = arr[i], arr[i - 1]
# 				swapped = true
# 			end
# 		end
# 	end while swapped# 	arr
# end

# Optimized bubble_sort
def bubble_sort arr
	n = arr.size
	swapped = true
	while swapped
		swapped = false
		for i in 1..n-1
			if arr[i-1] >arr[i]
				arr[i-1], arr[i] = arr[i], arr[i-1]
				swapped = true
			end
		end
		n -= 1
	end
	arr
end


p bubble_sort([3,4,5,2,1])