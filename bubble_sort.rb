def bubble_sort(arr)
  arr.each_index do |i|
    arr.each_index do |j|
      arr[i], arr[j] = arr[j], arr[i] if(arr[i] < arr[j])
    end
  end
  arr
end

def bubble_sort_by(arr)
  arr.each_index do |i|
    arr.each_index do |j|
      result = yield(arr[i], arr[j])
      arr[i], arr[j] = arr[j], arr[i] if result < 0
    end
  end
  arr
end