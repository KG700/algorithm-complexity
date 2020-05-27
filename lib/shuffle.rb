require_relative 'timer'

class Array

  def my_shuffle_1
    self.each_with_index do |element, index|
      random_index = rand(0..self.length - 1)
      self[index] = self[random_index]
      self[random_index] = element
    end
  end

  def my_shuffle_2
    self.each_with_index do |element, index|
      random_index = rand(0..self.length - 1 - index)
      self[index] = self[random_index]
      self[random_index] = element
    end
  end

  def quad_shuffle
      new_array = []
      until self.empty? do
          random_index = rand self.length
          new_array << self[random_index]
          self.delete_at(random_index)
      end
      new_array
  end

  def quad_shuffle_adj
      new_array = []
      until self.empty? do
          random_index = rand self.length
          new_array << self[random_index]
          self[random_index] = self.last
          self.pop
      end
      new_array
  end

end
