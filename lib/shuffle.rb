require_relative 'timer'

class Array

  def my_shuffle

    # my_shuffle_1
    # self.each_with_index do |element, index|
    #   random_index = rand(0..self.length - 1)
    #   self[index] = self[random_index]
    #   self[random_index] = element
    # end

    # my_shuffle_2
    self.each_with_index do |element, index|
      random_index = rand(0..self.length - 1 - index)
      self[index] = self[random_index]
      self[random_index] = element
    end

  end

end
