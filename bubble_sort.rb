def bubble_sort(arr)
#a method to iterate through the array items.
#getting each item to compare them (left and right)
  for i in 0..arr.length-1  do       
    puts arr[i]  
    for j in 0..arr.length-2 do     
      if( arr[j]>arr[j+1]) 
        arr[j], arr[j+1] = arr[j+1], arr[j]
      end    
     end
  end
  return arr
end

test_arr = [1,2,3,4,7,9,1,3,2,6]

p bubble_sort(test_arr)