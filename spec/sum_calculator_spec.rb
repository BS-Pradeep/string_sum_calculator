# frozen_string_literal: true
require_relative '..//services/string/sum_calculator'

RSpec.describe SumCalculator do
  describe "add" do
    context "valid scenarios" do
      it "should return 0 for an empty string input" do
        expect(SumCalculator.add("")).to eq(0)
      end

      it "should return the sum of numbers passed in the input string" do
        expect(SumCalculator.add("1,2")).to eq(3)
      end

      it "should return the sum if new lines between numbers (instead of commas)" do
        expect(SumCalculator.add("1\n2,3")).to eq(6)
      end
    end

  end

end
