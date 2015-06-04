def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, number=2)
	(word+" ")*(number-1) + word
end

def start_of_word(word,number)
	letter = word.byteslice(number-number,number)
end

def first_word(word,number = 0)
	array = word.split(' ')
	first = array[number]
	first
end

def titleize(word)
	word.capitalize!	
	array = word.split(' ')
	i=0
	while i<array.length
		if array[i] == 'and' or array[i]=='the' or array[i]=='over'
			i = i + 1
		else
			array[i].capitalize!
			i = i + 1
		end
	end
	finish = array.join(" ")
	finish
end
