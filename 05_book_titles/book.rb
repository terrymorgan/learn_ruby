class Book
	attr_reader :title

	def title=(string)
		little_words = ['and','or','the','over','an','of','a','in']
		@title = string.split.collect {|x| 
			if little_words.include?x
				x
			else
				x.capitalize
			end
		}
		@title[0].capitalize!
		@title = @title.join(" ")
	end
end
