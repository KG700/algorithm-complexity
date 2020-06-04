class Array

  def selection_sort

    sorted_array = []

    while !self.empty? do
      # iterate over array to find a minimum
      min_value = self.first
      min_index = 0
      self.each_with_index do |element, index|
        if element < min_value
          min_value = element
          min_index = index
        end
      end

      # swap minimum with last element in array, and pop
      self[min_index] = self.last
      self[-1] = min_value
      self.pop

      # push minimum to sorted array
      sorted_array.push(min_value)
    end

    return sorted_array

  end

  def insertion_sort

    sorted_array = [self.shift]

    # iterate through sorted array and insert
    # first element of self when element is bigger

    while !self.empty? do
      insert_index = sorted_array.length

      sorted_array.each_with_index do |element, index|
        if self.first < element
          insert_index = index
          break
        end
      end

      sorted_array.insert(insert_index, self.shift)
    end

    return sorted_array

  end

  def merge_sort
    return self if self.length < 2

    # split into 2 arrays:
    split_array = self.each_slice((self.size/2.0).round).to_a
    left_array = split_array[0].merge_sort
    right_array = split_array[1].merge_sort

    # merge arrays using card sort method:
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

  def quick_sort
    return self if self.length < 2

    # split into 2 arrays using a pivot
    pivot = self.shift
    left_array = []
    right_array = []

    self.each do |element|
      if element < pivot
        left_array.push(element)
      else
        right_array.push(element)
      end
    end

    left_array = left_array.quick_sort
    right_array = right_array.quick_sort

    # merge by joining left array + pivot + right array
    sorted_array = left_array.push(pivot).push(right_array).flatten

  end

end
