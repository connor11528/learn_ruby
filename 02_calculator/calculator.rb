def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(arr)
	total = 0
	arr.each do |x|
		total += x
	end
	total
end

def multiply(*args)
	total = 1
	args.each do |num|
		total *= num
	end
	total
end

def power(a, b)
	a ** b
end

def factorial(n)
	total = 1
	(1..n).each do |x|
		total *= x
	end
	total
end