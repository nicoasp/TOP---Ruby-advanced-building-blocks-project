module Enumerable

	def my_each_with_index
		i = 0
		while i < self.length
			yield(self[i], i)
			i += 1
		end
		self
	end

	def my_inject
		accum = self[0]
		self.my_each_with_index do |x, index|
			if index > 0
				accum = yield(accum,x)
			end
		end
		accum
	end

end

def multiply_els(array)
	array.my_inject {|prod, x| prod * x}
end








puts multiply_els([1,2,3,4,5])

puts multiply_els([5,10])