def hours_in_year
	days = 1 * 365
	hours = days * 24
	puts "There are #{hours} hours in one year"
end

def minutes_in_decade
	days = 10 * 365
	hours = days * 24
	minutes = hours * 60
	puts "There are #{minutes} minutes in decade!"
end

def seconds_old
	age = 37
	days = 37 * 365
	hours = days * 60
	seconds = hours * 60
	puts "I'm #{seconds} seconds old."
end

def how_old_is_he
	minutes = 1235000000 / 60
	hours = minutes / 60
	days = hours / 24
	years = days / 365
	puts "He is #{years} years old."
end

hours_in_year
puts "*****"
minutes_in_decade
puts "*****"
seconds_old
puts "*****"
how_old_is_he