def bubble_sort(arr)
  arr.each_index do |i|    
    arr.each_index do |j|   
      arr[i], arr[j] = arr[j], arr[i] if(arr[i] < arr[j])
     end
  end
  return arr
end

def bubble_sort_by(arr)
  arr.each_index do |i|
    arr.each_index do |j|
      result = yield(arr[i],arr[j])
      arr[i], arr[j] = arr[j], arr[i] if result < 0
    end
  end
  return arr
end

test_arr = [1,2,3,4,7,9,1,3,2,6]
second_arr = ["hi", "hello", "hey"]

p bubble_sort(test_arr)
p bubble_sort_by(second_arr){|left,right|left.length - right.length}
