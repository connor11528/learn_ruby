class Temperature
	# INSTANCE METHODS
	def initialize(hash)
		hash.each do |k, v|
			if k == :f
				@fahrenheit = v
			elsif k == :c
				@celsius = v
			end
		end
	end

	def in_fahrenheit
		if @celsius
			@fahrenheit = (@celsius * (9/5.0)) + 32
		end
		@fahrenheit
	end

	def in_celsius
		if @fahrenheit
			f = @fahrenheit
			@celsius = (f - 32)* 5/9.0
		end
		@celsius
	end

	# CLASS METHODS
	def self.from_celsius(cel)
		@celsius = cel
		@fahrenheit = cel*(9/5.0) + 32
		self
	end

	def self.from_fahrenheit(far)
		@fahrenheit = far
		@celsius = (far - 32)* 5/9.0
		self
	end

	def self.in_celsius
		if @fahrenheit
			f = @fahrenheit
			@celsius = (f - 32)* 5/9.0
		end
		@celsius
	end

	def self.in_fahrenheit
		if @celsius
			c = @celsius
			@fahrenheit = c*(9/5.0) + 32
		end
		@fahrenheit
	end

end


class Celsius < Temperature
	def initialize(cel)
		self.from_celsius(cel)
	end
end

puts Celsius.new(50)