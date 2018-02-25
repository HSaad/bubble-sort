# Bubble Sort 

## bubble_sort

A method called #bubble_sort that takes an array and returns a sorted arraym using the buble sort methodology.

	bubble_sort([4,3,78,2,0,2])
	=> [0,2,2,3,4,78]

## bubble_sort_by
A method called #bubble_sort_by which sorts an array but accepts a block. The block should take two arguments, which represent the two elements currently being compared (if the result of the block is negative, the element on the left is "smaller" than the element on the right, 0 means they are equal, a positive result means the left element is greater). 

	bubble_sort_by(["hi","hello","hey"]) do |left,right|
		left.length - right.length
 	end
 	=> ["hi", "hey", "hello"]