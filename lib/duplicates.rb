require_relative 'timer'

class Array

  def my_duplicates
    # go through array and count each element
    # if count > 1 add to new array
      # then check if it's already in new array.
      # If not then add to new array
    duplicates_array = []
    self.each do |element|
      if self.count(element) > 1 && !duplicates_array.include?(element)
        duplicates_array.push(element)
      end
    end
    duplicates_array
  end

  def quad_duplicates
    # go through array and check if elements after each element are
    # included in array. If so, add to array
    duplicates_array = []
    self.each_with_index do |element, index|
      for i in (index + 1)...self.length
        if element == self[i] && !duplicates_array.include?(element)
          duplicates_array.push(element)
        end
      end
    end
    duplicates_array
  end

  def set_duplicates
    # go through array, check 'seen' set,
    # if in seen add to duplicates array,
    # if not in seen add to seen
    seen = Set.new
    duplicates_array = []

    self.each do |element|
      if seen.include?(element)
        duplicates_array.push(element)
      else
        seen.add(element)
      end
    end
    duplicates_array

  end

end
