#!/usr/bin/ruby

def bubble_sort(arr)
  swapped = true
  while swapped
    swapped = false
    arr.each_with_index do |_val, id|
      if !arr[id + 1].nil? && arr[id] > arr[id + 1]
        arr[id], arr[id + 1] = arr[id + 1], arr[id]
        swapped = true
      end
    end
  end
  arr
end

def bubble_sort_by(arr)
  swapped = true
  while swapped
    swapped = false
    arr.each_with_index do |_val, id|
      next if arr[id + 1].nil?

      result = yield(arr[id], arr[id + 1])
      if result.positive?
        arr[id], arr[id + 1] = arr[id + 1], arr[id]
        swapped = true
      end
    end
  end
  arr
end

print bubble_sort_by(%w[hi hello hey]) { |left, right|
  left.length - right.length
}
