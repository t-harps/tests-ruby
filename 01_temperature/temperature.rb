def ftoc(fahrenheit)
	celcius = fahrenheit - 32
	celcius = celcius*(5.0/9.0)
	celcius
end

def ctof(celcius)
	fahrenheit = celcius*(9.0/5.0)
	fahrenheit = fahrenheit + 32
	fahrenheit
end