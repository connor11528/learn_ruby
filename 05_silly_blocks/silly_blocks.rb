def reverser
	# yield is the string given in the block
	words = yield.split(' ')
	final = []
	words.each do |word|
		final.push(word.reverse)
	end
	final.join(' ')
end

def adder(toAdd=1)
	yield + toAdd
end

def repeater(times=1)
	i = 0
	while i < times
		yield
		i += 1
	end
end