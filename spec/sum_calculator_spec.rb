# frozen_string_literal: true
require_relative '..//services/string/sum_calculator'
require 'rspec'

RSpec.describe SumCalculator do
  describe "add" do
    context "valid scenarios" do
      it "should return 0 for an empty string input" do
        expect(SumCalculator.add("")).to eq(0)
      end

      it "should return the sum of numbers passed in the input string" do
        expect(SumCalculator.add("1,2")).to eq(3)
      end

      it "should return the sum if there are new lines between numbers (instead of commas) in the input string" do
        expect(SumCalculator.add("1\n2,3")).to eq(6)
      end

      it "should support to change delimiter by passing // followed by the new additional delimiter and return the respective sum" do
        expect(SumCalculator.add("//;\n1;2")).to eq(3)
      end

      it "should support multiple delimiters" do
        expect(SumCalculator.add("//[*][%]\n1*2%3")).to eq(6)
      end

      it "should ignore numbers greater than 1000" do
        expect(SumCalculator.add("2,1001")).to eq(2)
      end

      it "should handle delimiters of any length" do
        expect(SumCalculator.add("//[***]\n1***2***3")).to eq(6)
      end
    end

    context "invalid scenarios" do
      it "should throw an exception if negative numbers are passed" do
        expect { SumCalculator.add('-3,-2') }.to raise_error(ArgumentError, 'negatives not allowed: -3, -2')
      end

      it "should throw an exception if a single negative number is passed" do
        expect { SumCalculator.add('-3,2') }.to raise_error(ArgumentError, 'negatives not allowed: -3')
      end
    end
  end
end
