module Enumerable

	def my_each
		i = 0
		while i < self.length
			yield(self[i])
			i += 1
		end
		self
	end

	# How do I make it choose the proc first? And work if no proc given?

	def my_map(*proc)
		result = []
		self.my_each do |x|
			if proc.length > 0
				result.push(proc[0].call(x))
			else
				result.push(yield(x))
			end
		end
		result
	end

end

proc1 = Proc.new {|x| x*2}

proc2 = Proc.new {|x| x**2}


puts [1,2,3,4,5].my_map(proc1).inspect

puts [1,2,3,4,5,6].my_map(proc2).inspect

puts [1,2,3,4,5].my_map {|x| x*2}.inspect

puts [1,2,3,4,5,6].my_map {|x| x**2}.inspect