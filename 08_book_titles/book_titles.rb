class Book
	attr_reader :title

	def title(new_title)
		@title = (new_title).capitalize
	end
end