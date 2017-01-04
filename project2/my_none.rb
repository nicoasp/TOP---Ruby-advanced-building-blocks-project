module Enumerable

	def my_each
		i = 0
		while i < self.length
			yield(self[i])
			i += 1
		end
		self
	end



	def my_none?
		self.my_each do |x|
			checker = yield(x)
			if checker
				return false
			end
		end
		true
	end

end


puts [1,2,3,4,5].my_none? {|x| x>5}

puts [1,2,3,4,5,6].my_none? {|x| x>5}