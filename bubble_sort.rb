# Build a method #bubble_sort that takes an array and returns a sorted array.
# It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).


array = [11,10,12,1,100,14,0,99,2]

def bubble_sort (array)
  array.length().times do 
    array.each_with_index do |v,i|
      if array[i+1]
        if v > array[i+1]
          array[i] , array[i+1] = array[i+1] , array[i]
        end
      end
    end
  end
  return array
end

puts bubble_sort(array).to_a
