def reverse(array)

  reversed_array = []
  array.each { |element| reversed_array.unshift(element) }
  reversed_array

end


# Input | Output
# --------------
# [1]   | [1]
# [1, 1] | [1, 1]
# [1, 2] | [2, 1]
