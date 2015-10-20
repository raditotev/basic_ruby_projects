def caeser_cypher
	print "Enter text: "
	string = gets.chomp
	string.downcase!
	print "Enter number for shift: "
	shift = gets.chomp.to_i
	alphabet = ('a'..'z').to_a
	cyphered_word = ""

	string.each_char do |l|
		if !alphabet.include?(l)
			cyphered_word += l
		else
			pos = alphabet.index(l)
			cyphered_word += alphabet[(pos + shift) % 26]
		end
	end

	puts cyphered_word[0].upcase + cyphered_word[1..-1]
end

caeser_cypher