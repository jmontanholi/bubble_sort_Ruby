def bubble_sort(arr)
  arr.each_index do |j|
    next if j == arr.length

    sorted = true
    arr.each_index do |i|
      if i != arr.length - 1 && (arr[i] > arr[i + 1])
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
      next if i == arr.length - 1

      result = yield(arr[i], arr[i + 1])
      if result.positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = false
      end
    end

    break if sorted
  end
  arr
end
