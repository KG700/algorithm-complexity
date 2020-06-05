# Given an array containing only 0s and 1s, sort it.
class Array

  def my_sort_01s
    sorted_array = []

    self.each do |element|
      if element === 0
        sorted_array.unshift(element)
      else
        sorted_array.push(element)
      end
    end

    return sorted_array
  end

end
