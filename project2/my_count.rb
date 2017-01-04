module Enumerable

	def my_each
		i = 0
		while i < self.length
			yield(self[i])
			i += 1
		end
		self
	end



	def my_count
		count = 0
		self.my_each do |x|
			checker = yield(x)
			if checker
				count += 1
			end
		end
		count
	end

end


puts [1,2,3,4,5].my_count {|x| x>5}

puts [1,2,3,4,5,6].my_count {|x| x>5}