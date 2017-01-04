def bubble_sort_by(array)
	sorted_array = array

	final_checker = false

	until final_checker
		partial_checker = true
		helper_array = sorted_array
		helper_array.each_with_index do |value, index|
			if index < (helper_array.length - 1)
				if block_given?
					x = yield(helper_array[index], helper_array[index + 1])
					if x > 0
						partial_checker = false
						helper_var = sorted_array[index]
						sorted_array[index] = sorted_array[index + 1]
						sorted_array[index + 1] = helper_var
					end
				else
					if helper_array[index] > helper_array[index + 1]
						partial_checker = false
						helper_var = sorted_array[index]
						sorted_array[index] = sorted_array[index + 1]
						sorted_array[index + 1] = helper_var
					end
				end
			end
			

		end
		if partial_checker
			final_checker = true
		end
	end
	puts sorted_array.inspect
end

bubble_sort_by(["hi", "hello", "hey"]) do |left, right|
	left.length - right.length
end

bubble_sort_by([4,3,78,2,0,2])

bubble_sort_by(["hi", "hello", "hey"])