class Book
	attr_reader :title

	def title=(new_title)
		words = []+(new_title).split(' ')
		capitalized_words = words.map.with_index do |a,i|
			if (a=='and' or a =='in' or a =='of' or a =='the' or a =='a' or a =='an') and i!= 0
				a
			else
				a.capitalize
			end
		end
		final = capitalized_words.join(' ')
		@title = final
	end
end