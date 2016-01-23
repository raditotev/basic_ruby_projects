def caeser_cypher string, shift
	alphabet = ('A'..'z').to_a
	cyphered_word = ""

	string.each_char do |l|
		pos = alphabet.index(l)
		case pos
		when 0..25
			cyphered_word += alphabet[(pos + shift) % 26]
		when 32..57
			cyphered_word += alphabet[(pos + shift) % 58].downcase
		else
			cyphered_word += l
		end
	end
	puts cyphered_word
end

print "Enter text: "
string = gets.chomp
print "Enter number for shift: "
shift = gets.chomp.to_i

caeser_cypher string, shift
