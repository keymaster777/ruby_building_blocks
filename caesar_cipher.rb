def cipher(input,shift)
	original_input=input.split("")
	input_ord=original_input.map {|i| i.ord}
	input_length=input_ord.length
	output=Array.new
	for i in 0...input_length
		if input_ord[i].between?(65,90)
			if input_ord[i] + shift > 90
				input_ord[i]-=26
			elsif input_ord[i] + shift < 65
				input_ord[i]+=26
			end
			input_ord[i]+=shift
		elsif input_ord[i].between?(97,122)
			if input_ord[i] + shift > 122
				input_ord[i]-=26
			elsif input_ord[i] + shift < 97
				input_ord[i]+=26
			end
			input_ord[i]+=shift
		end
		output << input_ord[i].chr
	end
puts output.join("")
	
end
cipher("Here is a string!", -1)