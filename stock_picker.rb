def stock_picker array
	buy=0
	sell=0
	profit=0
	for i in 0...array.length
		for x in 0...array.length
			proposed_buy=array[i]
			proposed_sell=array[x]
			comparison = proposed_buy-proposed_sell
			if  comparison>profit && x>i
				buy=i
				sell=x
				profit=comparison
			end
		end
	end
	puts "Buy on day #{buy} and sell on day #{sell} to make $#{profit}"
	puts ""
end

=begin
The following method was copied from the user beachfern
you can see more of their work at https://github.com/beachfern
=end

def array_gen(size)
	array=[]
	size.times do
		array.push(rand(1..20))
	end
	puts array.join(", ")
	return array
end

stock_picker(array_gen(10))
stock_picker(array_gen(10))
stock_picker(array_gen(10))