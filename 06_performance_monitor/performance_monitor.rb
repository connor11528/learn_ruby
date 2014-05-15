def measure(times=1)
	start = Time.now
	count = 0

	while count < times
		yield
		count += 1
	end
	puts count

	finished = Time.now
	elapsed_time = (finished - start)/count		# return average time
end