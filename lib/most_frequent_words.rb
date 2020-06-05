class Array

# Given a list of words, find which are the two most common words.

  def my_common_words

    common_words = Hash.new(0)
    unique_words = Set.new
    most_common = []

    self.each do |element|
      common_words[element] += 1
      if !unique_words.include? element
        unique_words.add(element)
      end
    end

    # sort unique_words based on Frequency
    unique_words.each do |element|

      if most_common.length == 0
        most_common.push(element)
      elsif most_common.length > 0 && common_words[element] > common_words[most_common[0]]
        most_common.unshift(element)
        most_common.pop if most_common.length > 2
      elsif most_common.length > 1 && common_words[element] > common_words[most_common[1]]
        most_common.pop if most_common.length > 1
        most_common.push(element)
      end

    end

    return most_common

  end

end
