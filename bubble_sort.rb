def bubble_sort(array)
	array.each do |item|
		(1..(array.size - 1)).each do |i|
			if array[i-1] > array[i]
				array[i-1], array[i] = array[i], array[i-1]
			end
		end
	end
	return array
end

def bubble_sort_by(array)
	array.each do |item|
		(1..(array.size - 1)).each do |i|
			result = yield(array[i-1], array[i])
			if result > 0 
				array[i-1], array[i] = array[i], array[i-1]
			end
		end
	end
	return array
end


puts bubble_sort([4,3,78,2,0,2]).inspect

string_array = bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end

puts string_array.inspect