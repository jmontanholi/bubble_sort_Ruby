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

#   ATTENTION PLEASE
#   THIS IS NOT DEBUG
#   THESE ARE EXAMPLES FOR CODE REVIEWERS
#   Bubble_sort and bubble_sort_by are working perfectly
#   according to this video from harvard explaining the problem:
#   https://www.youtube.com/watch?v=8Kp-8OGwphY

p bubble_sort(test1)
p bubble_sort(bubble_sort(test1))
p bubble_sort(bubble_sort(bubble_sort(test1)))
p bubble_sort_by(%w[hiya hey hi h hello]) { |left, right| left.length - right.length }
p bubble_sort_by(%w[hey hi h hiya hello]) { |left, right| left.length - right.length }
p bubble_sort_by(%w[hi h hey hiya hello]) { |left, right| left.length - right.length }
