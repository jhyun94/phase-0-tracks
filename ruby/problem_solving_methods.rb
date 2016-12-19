def search_array(list,number)
	index=0
	while index<list.length
		if list[index]==number
			break
			return index
		else
			index+=1
		end
	end
	if index>=list.length
		index="nil"
	end

	return index
end

arr = [42,89,23,1]

#puts search_array(arr,24)

def fib(arr,max)
	
	index=1
	while index<max-1
		arr.push(arr[index]+arr[index-1])
		index+=1
	end
	return arr
end

fib_array=[0,1]
fib(fib_array,100)

puts fib_array[99]




def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  return array
end
bubble_sort(arr)
puts arr