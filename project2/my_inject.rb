module Enumerable

	def my_each
		i = 0
		while i < self.length
			yield(self[i])
			i += 1
		end
		self
	end

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


puts [1,2,3,4,5].my_inject {|sum, x| sum + x}

puts [5,4,3,2,1].my_inject {|prod, x| prod * x}