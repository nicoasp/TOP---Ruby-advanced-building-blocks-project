def sorted?(array)
	array.each_with_index do |value, index|
		if (index < (array.length - 1)) && (array[index] > array[index + 1])
			return false
		end
	end
	true
end

def bubble_sort(array)
	sorted_array = array

	until sorted?(sorted_array)
		helper_array = sorted_array
		helper_array.each_with_index do |value, index|
			if (index < (helper_array.length - 1)) && (sorted_array[index] > sorted_array[index + 1])
				helper_var = sorted_array[index]
				sorted_array[index] = sorted_array[index + 1]
				sorted_array[index + 1] = helper_var
			end
		end
	end
	puts sorted_array.inspect
end

bubble_sort([4,3,78,2,0,2])