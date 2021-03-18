def bubble_sort(arr)
  arr.each_index do |j|
    next if j == arr.length

    arr.each_index do |i|
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if i != arr.length - 1 && (arr[i] > arr[i + 1])
    end
  end
  arr
end

def bubble_sort_by(arr)
  arr.each_index do |j|
    next if j == arr.length

    arr.each_index do |i|
      unless i == arr.length - 1
        result = yield(arr[i], arr[i + 1])
        arr[i], arr[i + 1] = arr[i + 1], arr[i] if result.positive?
      end
    end
  end
  arr
end
