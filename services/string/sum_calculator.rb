# frozen_string_literal: true

class SumCalculator
  def self.add(str)
    return 0 if str.empty?

    # Extract custom delimiter(s) if present
    delimiter = ',|\n'
    if str.start_with?('//')
      custom_delimiters = str[2..-1].split("\n").first
      # Escape each custom delimiter and combine them
      escaped_delimiters = custom_delimiters.split('').map { |d| Regexp.escape(d) }.join('|')
      delimiter = "#{escaped_delimiters}|,|\n"
      str = str.split("\n").last
    end

    # Split string by delimiters
    numbers = str.split(Regexp.new(delimiter))
    negative_numbers = []
    sum = 0
    # loop through the numbers only once to convert to integers and consider numbers > 0 and less than 1001
    numbers.each do |number|
      number = number.to_i
      if number <= 1000
        if number < 0
          negative_numbers << number
        else
          sum += number
        end
      end
    end

    # Check for negative numbers and raise exception if any
    if negative_numbers.any?
      raise ArgumentError, "negatives not allowed: #{negative_numbers.join(', ')}"
    end
    sum
  end
end
