def bubble_sort array
	i=0
	array.length.times do 
		while i<array.length-1  
			array[i],array[i+1]=array[i+1],array[i] if array[i]>array[i+1]
			i+=1
		end
		i=0
	end
	puts array
end
bubble_sort([4,3,78,2,0,2])