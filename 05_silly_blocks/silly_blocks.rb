def reverser
	words = []+yield.split(' ')
	reversed_words = words.map {|a| a.reverse}
	reversed_word = reversed_words.join(' ')
	reversed_word
end

def adder(number=1)
	yield+number
end

def repeater(number=1)
	i=0
	while i<number do
		yield
		i = i + 1
	end
end
