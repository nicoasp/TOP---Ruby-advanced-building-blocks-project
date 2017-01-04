module Enumerable

	def my_each
		i = 0
		while i < self.length
			yield(self[i])
			i += 1
		end
		self
	end



	def my_map(proc)
		result = []
		self.my_each do |x|
			result.push(proc.call(x))
		end
		result
	end

end

proc1 = Proc.new {|x| x*2}

proc2 = Proc.new {|x| x**2}


puts [1,2,3,4,5].my_map(proc1).inspect

puts [1,2,3,4,5].my_map(proc2).inspect