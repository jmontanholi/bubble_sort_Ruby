def bubble_sort(arr)
  arr.each_index do |i|
    arr[i], arr[i + 1] = arr[i + 1], arr[i] if i != arr.length - 1 && (arr[i] > arr[i + 1])
  end
  arr
end

def bubble_sort_by(arr)
  arr.each_index do |i|
    unless i == arr.length - 1
      result = yield(arr[i], arr[i + 1])
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if result.positive?
    end
  end
  arr
end

test1 = [3, 1, 2, 5, 6, 8, 7, 10, 9, 4]

p bubble_sort(test1)

p bubble_sort_by(%w[hiya hey hi h hello]) { |left, right| left.length - right.length }
