#Now lets sort words 
def bubble_sort_by(array)
  (array.length).times do
    (array.length -1).times do |i|
      if yield(array[i], array[i + 1]) > 0
        array[i], array[i + 1] = array[i + 1], array[i]
      end
    end
  end
  array
end
sorted_array = bubble_sort_by(%w[norway, hi, hello, hey]) do |left, right|
  left.length - right.length
end
puts sorted_array
