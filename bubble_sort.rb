def bubble_sort(arr)
#a method to iterate through the array items.
#getting each item to compare them (left and right)
  for i in 0..arr.length-1  do       
    for j in 0..arr.length-2 do     
      if( arr[j]>arr[j+1]) 
        arr[j], arr[j+1] = arr[j+1], arr[j]
      end    
     end
  end
  return arr
end

def bubble_sort_by(arr)
  for i in 0..arr.length-1  do
    for j in 0..arr.length-2 do
      result = yield(arr[j], arr[j+1])
      if result > 0
        arr[j], arr[j+1] = arr[j+1], arr[j]
      end
    end
  end
  return arr
end
