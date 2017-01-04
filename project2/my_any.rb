module Enumerable

	def my_each
		i = 0
		while i < self.length
			yield(self[i])
			i += 1
		end
		self
	end



	def my_any?
		self.my_each do |x|
			checker = yield(x)
			if checker
				return true
			end
		end
		false
	end

end


puts [1,2,3,4,5].my_any? {|x| x>5}

puts [1,2,3,4,5,6].my_any? {|x| x>5}