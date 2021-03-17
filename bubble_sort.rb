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
  #a method to iterate through the array items.
  #getting each item to compare them (left and right)
    for i in 0..arr.length-1  do        
      for j in 0..arr.length-2 do     
        if( arr[j].length>arr[j+1].length) 
          arr[j], arr[j+1] = arr[j+1], arr[j]
        end    
       end
    end
    return arr
  end
  

test_arr = [1,2,3,4,7,9,1,3,2,6]
second_arr = ["hi", "hello", "hey"]

p bubble_sort(test_arr)
p bubble_sort_by(second_arr) do |left,right|
    left.length - right.length
  end