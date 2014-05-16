class Timer
	attr_accessor :seconds, :time_string
	def initialize
		@seconds = 0
		@time_string = "00:00:00"
	end
	def padded(toPad)
		if toPad.to_s.length >=2
			return toPad.to_s
		else
			return '0' + toPad.to_s
		end
	end
	def seconds=(secs)
		@seconds = secs
		ts = @time_string

		hours = secs/3600
		secs = secs - hours*3600
		minutes = secs/60
		secs = secs - minutes*60
		@time_string = padded(hours) + ":" + padded(minutes) + ":" + padded(secs)
	end
end


