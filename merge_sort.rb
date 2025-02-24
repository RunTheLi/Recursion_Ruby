def merge_sort(arr)
  return arr if arr.length <= 1

  mid = arr.length / 2
  left = arr[0...mid]
  right = arr[mid..-1]

  sort_left = merge_sort(left)
  sort_right = merge_sort(right)

  merge(sort_left, sort_right)
end

def merge(left, right)
  sorted_array = []
  while !left.empty? && !right.empty?
    sorted_array << if left.first <= right.first
                      left.shift
                    else
                      right.shift
                    end
  end

  sorted_array + left + right
end

arr = [3, 2, 1, 13, 8, 5, 0, 1]
arr_second = [105, 79, 100, 110]

sorted_arr = merge_sort(arr)
sorted_second = merge_sort(arr_second)
puts sorted_arr.inspect
puts sorted_second.inspect
