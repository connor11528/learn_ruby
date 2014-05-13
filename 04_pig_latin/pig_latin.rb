# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.

def translate(word)
	word = word.downcase
	vowels = ['a', 'e', 'i', 'o', 'u']
	wordArr = word.split('')
	translation = ''
	ending = ''

	if vowels.include? wordArr[0]
		# starts with vowel
		wordArr = wordArr.join
		translation = wordArr + 'ay'
	else
		# starts with consonant
		wordArr.each_with_index do |char, i|
			if vowels.include? char
				break
			else
				ending += wordArr[i]
				translation = wordArr[i..wordArr.length]
			end
			translation += ending
		end
	end
	translation
end

puts translate("banana")