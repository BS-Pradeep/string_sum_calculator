# frozen_string_literal: true

class SumCalculator
  def self.add(str)
    return 0 if str.empty?

    delimiters = /[,\n]/
    numbers = str.split(delimiters).map {|number| number.to_i}
    numbers.sum
  end
end
