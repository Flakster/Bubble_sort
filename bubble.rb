#!/usr/bin/ruby

def bubble_sort(arr)
    (arr.length - 1).times do |x|
        arr.each_with_index do |val, id|
            if arr[id + 1] != nil && arr[id] > arr[id + 1]
                arr[id], arr[id + 1] = arr[id + 1], arr[id]
            end
        end
    end
    return arr
end

print bubble_sort([2, 5, 1, 7, 4])