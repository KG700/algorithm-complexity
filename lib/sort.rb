class Array

  # selection_sort
  # insertion_sort

  def merge_sort
    return self if self.length < 2

    # split into 2 arrays:
    split_array = self.each_slice((self.size/2.0).round).to_a
    left_array = split_array[0].merge_sort
    right_array = split_array[1].merge_sort

    # merge arrays:
    sorted_array = []

    while !left_array.empty? && !right_array.empty? do
      if left_array.first < right_array.first
        sorted_array.push(left_array.shift)
      else
        sorted_array.push(right_array.shift)
      end
    end

    sorted_array = sorted_array.push(left_array).flatten if !left_array.empty?
    sorted_array = sorted_array.push(right_array).flatten if !right_array.empty?

    return sorted_array

  end

  # quick_sort

end
