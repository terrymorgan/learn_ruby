#write your code here
def echo string
	string
end

def shout string
	string.upcase
end

def repeat string, num=2
	string + (" " + string)*(num-1)
end

def start_of_word string, num=1
	string[0..num-1]
end

def first_word string
	string.split[0]
end

def titleize string
	little_words = ['and','or','the','over']
	title = string.split.collect {|x| 
		if little_words.include?x
			x
		else
			x.capitalize
		end
	}
	title[0].capitalize!
	title.join(" ")
end

puts titleize 'the bridge over the river kwai'
