def translate(word)
	words = word.split(' ')
	i = 0
	final = ""
	while i<words.length do

		if words[i].byteslice(0)==('q') and words[i].byteslice(1)==('u')
			translated = words[i]+""+words[i].byteslice(0,2)+"ay"
			translated = translated.byteslice(2,translated.length)
			i = i+1

		elsif words[i].byteslice(0)==('a')or words[i].byteslice(0)==('e')or words[i].byteslice(0)==('i')or words[i].byteslice(0)==('o')or word.byteslice(0)==('u')
			translated = words[i]+"ay"
			i = i+1

		elsif words[i].byteslice(1)!=('a') and words[i].byteslice(1)!=('e') and words[i].byteslice(1)!=('i') and words[i].byteslice(1)!=('o') and word.byteslice(1)!=('u')
			translated = words[i]+""+words[i].byteslice(0,2)+"ay"
			translated = translated.byteslice(2,translated.length)

			if words[i].byteslice(2)!=('a') and words[i].byteslice(2)!=('e') and words[i].byteslice(2)!=('i') and words[i].byteslice(2)!=('o') and word.byteslice(2)!=('u')
				translated = words[i]+""+words[i].byteslice(0,3)+"ay"
				translated = translated.byteslice(3,translated.length)
			end

			if words[i].byteslice(1)==('q') and words[i].byteslice(2)==('u')
				translated = words[i]+""+words[i].byteslice(0,3)+"ay"
				translated = translated.byteslice(3,translated.length)
			end
			i = i+1

		else
			translated = words[i]+words[i].byteslice(0)+"ay"
			translated = translated.byteslice(1,translated.length)
			i = i+1

		end

		if i ==1 
			final = final + translated
		else
			final = final + " " +translated
		end
	end
	final
end