def add(x,y)
	sum = x+y
end

def subtract (x,y)
	sum = x-y
end

def sum(x)
	y = x.length
	sum = 0
	i = 0
	if y==0
		sum
	else
		while i<y do
			sum = sum + x[i]
			i = i+1
		end
	end
	sum
end

def multiply(*x)
  	x.inject() { |sum, number| sum = sum*number }
end

def power(x,y)
	i=1
	sum = x
	while i<y
		sum = sum*x 
		i = i+1
	end
	sum
end





