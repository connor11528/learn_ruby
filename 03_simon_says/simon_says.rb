def echo(word)
	word
end

def shout(str)
	str.upcase
end

def repeat(str, times=2)
	repeat = str.to_s + ' '

	(repeat*times).to_s[0..-2]
end

def start_of_word(word, letters)
	word[0..letters - 1]
end

def first_word(sent)
	final = ''
	sent.each_char do |l|
		if l == ' '
			break
		end
		final += l
	end
	final
end

def titleize(title)
	little_words = ['and', 'over', 'the']

	words = title.split(' ')
	final = ''
	words.each_with_index do |word, index|
		if index == 0 or not little_words.include? word
			word = word[0].upcase + word[1..word.length]
		end
		final += word + ' '
	end	
	final[0..-2]
end