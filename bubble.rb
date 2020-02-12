#!/usr/bin/ruby

def bubble_sort(arr)
  swapped=true
  while swapped
    swapped=false
        arr.each_with_index do |val, id|
            if arr[id + 1] != nil && arr[id] > arr[id + 1]
                arr[id], arr[id + 1] = arr[id + 1], arr[id]
                swapped=true
            end
        end
    end
    return arr
end

def bubble_sort_by(arr)
  swapped=false
  arr.each_with_index do |val, id|
    if arr[id + 1] != nil
      yield(arr[id], arr[id + 1])
    end
  end
  return arr
end

#print bubble_sort([2, 5, 1, 7, 0])

bubble_sort_by([3, 2, 1]) do |a, b|
  if a > b
    
  else
    
  end
end