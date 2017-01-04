module Enumerable
	def my_each
		i = 0
		while i < self.length
			yield(self[i])
			i += 1
		end
		self
	end



	def my_select
		result = []
		self.my_each do |x|
			check = yield(x)
			if check
				result.push(x)
			end
		end
		result
	end
end



puts [1,2,3,4,5,6,7,8,9].my_select {|x| x>4}.inspect
