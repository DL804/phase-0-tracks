

def search(arr, num)
	
index = 0 
	while index < arr.length 
		if num == arr[index]
		results = index
		end
	index +=1 	
	end
results
end

#test code
arr = [1,2,5,4]
p search(arr,5)



def fib(num)
array = [0,1]
a = 0 
b = 1 
	while num > array.length  
	sum = a + b
	array << sum 
	temporary_a_for_sum_addition = a #taking the value a and holding it before adding a + b...next line, 'a' will take on value of b and without this temp, the sum will be incorrect
	
	a = b # takes on value of b and next loop, not used during next line for sum
	b = temporary_a_for_sum_addition + b  # adds on the 'a' value before it was changed and gives us the sum. 
	end 
array
end

#test code
fib(100)


def bubble_sort(array)
  n = array.length # setting variable to the length of array
  loop do # start a loop and don't stop until I break it
    swapped = false 

    (n-1).times do |i| # do this up to the last two elements in array
      if array[i] > array[i+1] # if first number is larger, keep swapping positions until condition is not true then loop will break
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

bubble_sort([3,2,3,4,5,6,4,4,5])

