# Implement a method #substrings that takes a word as the first argument
# and then an array of valid substrings (your dictionary) as the second
# argument. It should return a hash listing each substring (case
# insensitive) that was found in the original string and how many times
# it was found.


def substrings string, dictionary
	string.downcase!
	input = string.split
	output = Hash.new(0)
	input.each do |word1|
		dictionary.each do |word2|
			if word1.include? word2
				output[word2] += 1
			end
		end
	end
	p output
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i",
				"low","own","part","partner","sit"]

substrings("below", dictionary)
# => {"below"=>1, "low"=>1}

substrings("Howdy partner, sit down! How's it going?", dictionary)
# => {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}