dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings(input,check_source)
	output=Hash.new(0)
	input_array=input.downcase.split(" ")
	for i in 0...input_array.length
		for x in 0...check_source.length
			if input_array[i].include? check_source[x]
				output[check_source[x]]+=1
			end
		end
	end
	puts output
end
substrings("Howdy partner, sit down! How's it going?", dictionary)