require_relative 'timer'

class Array

  def my_reverse

    # my_reverse_1
    # reversed_array = []
    # self.each { |element| reversed_array.unshift(element) }
    # reversed_array

    # my_reverse_2
    self.take(self.length/2).each_with_index { |element, index|
      self[index] = self[self.length - index - 1]
      self[self.length - index - 1] = element
    }
    self

  end

end

# Input | Output
# --------------
# [1]   | [1]
# [1, 1] | [1, 1]
# [1, 2] | [2, 1]
