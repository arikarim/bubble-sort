# Now lets sort words
def bubble_sort_by(array)
  array.length.times do
    (array.length - 1).times do |i|
      break unless yield(array[i], array[i + 1]).positive?

      array[i], array[i + 1] = array[i + 1], array[i]
    end
  end
  array
end
bubble_sort_by(%w[norway hi hello hey]) do |left, right|
  left.length - right.length
end
