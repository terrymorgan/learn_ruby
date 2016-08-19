#write your code here
def garble word	
	position = word.index(/[aeiouAEIOU]/)
	return word if position == nil
	if word[position] == 'u' && word[position-1] == 'q'
		word.split(//).rotate(position+1).push('ay').join("")
	else
		word.split(//).rotate(position).push('ay').join("")
	end
end

def translate words
	phrase = words.split(/ /).collect {|word|
		if word =~ /[[:punct:]]$/
			position = word.index(/[[:punct:]]+$/)
			symbol = word[position..(word.length-1)]
			word = word[0..position-1]
		else
			symbol = ''
		end

		if word.capitalize == word
			word = garble(word).capitalize
		else
			word = garble(word)
		end

		word = word + symbol
	}
	phrase.join(" ")
end