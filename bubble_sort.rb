def bubble_sort(arr)
  for i in 0..arr.length-1  do       
    for j in 0..arr.length-2 do     
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if(arr[j] > arr[j + 1])
     end
  end
  return arr
end

def bubble_sort_by(arr)
  for i in 0..arr.length-1  do
    for j in 0..arr.length-2 do
      result = yield(arr[j],arr[j + 1])
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if result > 0
    end
  end
  return arr
end

