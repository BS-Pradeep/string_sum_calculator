# SumCalculator

SumCalculator is a simple yet powerful Ruby class designed to perform arithmetic operations on a series of numbers, with support for custom delimiters and constraints on the range of numbers processed.

## Features

- **Custom Delimiters**: Allows specifying custom delimiters for separating numbers in the input string.
- **Number Constraints**: Automatically ignores numbers greater than 1000 and raises an exception for negative numbers.
- **Efficient Parsing**: Optimized for performance, parsing and summing numbers in a single pass.

## Installation

- Clone the repository to your local directory.
- Install Ruby 3.0
- Run```bundle install``` from your local directory.

## Running test cases

- To execute all test cases Run```bundle exec rspec```
- To execute specific test case Run ```bundle exec rspec .\spec\sum_calculator_spec.rb:8```


