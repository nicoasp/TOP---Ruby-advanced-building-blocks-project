module Enumerable

	def my_each
		i = 0
		while i < self.length
			yield(self[i])
			i += 1
		end
		self
	end



	def my_map
		result = []
		self.my_each do |x|
			result.push(yield(x))
		end
		result
	end

end


puts [1,2,3,4,5].my_map {|x| x*2}.inspect

puts [1,2,3,4,5,6].my_map {|x| x**2}.inspect