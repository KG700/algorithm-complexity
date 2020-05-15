require_relative 'timer'

class Array

  def my_reverse

    # reversed_array = []
    # self.each { |element| reversed_array.unshift(element) }
    # reversed_array
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

#  1, 2, 3, 4, 5, 6 [0,5], [1,4], [2,3] (index) & (length - index - 1)
#  6, 5, 4, 3, 2, 1
