
class Book
	attr_accessor :title
	def title=(new_title)
		result = []
		words = new_title.split(' ')
		excludes = ['the', 'a', 'an', 'and', 'in', 'of']

		# capitalize first letter if first word 
		# and not in the excludes array
		words.each_with_index do |word, index|
			if index == 0 or not excludes.include? word
				toAdd = word[0].upcase + word[1..word.length].downcase
			else
				toAdd = word
			end
			result.push(toAdd)
		end
		
		@title = result.join(' ')
	end
end

