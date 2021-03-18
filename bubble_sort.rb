def bubble_sort(arr)
  arr.each_index do |j|
    next if j == arr.length 

    sorted = true
    arr.each_index do |i|
      if i != arr.length - 1 && (arr[i] > arr[i + 1]) then
        arr[i], arr[i + 1] = arr[i + 1], arr[i] 
        sorted = false
      end
      
    end

    break if sorted
  end
  arr
end

def bubble_sort_by(arr)
  arr.each_index do |j|
    next if j == arr.length

    sorted = true
    arr.each_index do |i|
      unless i == arr.length - 1
        result = yield(arr[i], arr[i + 1])
        if result.positive? then
          arr[i], arr[i + 1] = arr[i + 1], arr[i] 
          sorted = false;
        end
      end
    end

    break if sorted
  end
  arr
end

p bubble_sort([3, 1, 2, 5, 6, 8, 7, 10, 9, 4, 11])
p bubble_sort_by(["hiya", "hey", "hi", "h", "hello"]) { |left, right| left.length - right.length }
