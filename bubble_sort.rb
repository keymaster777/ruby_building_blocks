#Regular bubble sort
def bubble_sort array
	i=0
	array.length.times do 
		while i<array.length-1  
			array[i],array[i+1]=array[i+1],array[i] if array[i]>array[i+1]
			i+=1
		end
		i=0
	end
	array
end

#Bubble sort that accepts a block and sorts by string length
def bubble_sort_by array
	i=0
	array.length.times do
		while i<array.length-1		
			array[i],array[i+1]=array[i+1],array[i] if yield(array[i],array[i+1])>0
			i+=1
		end
		i=0
	end
	array
end

#Method used to create and populate a random array
def array_gen(size)
	array=[]
	size.times do
		array.push(rand(1..20))
	end
	puts array.join(", ")
	return array
end

#Testing bubble_sort
puts bubble_sort(array_gen(12)).join(", ")

#Testing bubble_sort_by
sorted_words = bubble_sort_by(["hi","hello","hey"]) do |left,right|
	left.length-right.length
end
puts sorted_words.join(", ")