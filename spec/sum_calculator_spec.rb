# frozen_string_literal: true
require_relative '..//services/string/sum_calculator'

RSpec.describe SumCalculator do
  describe "add" do
    context "valid scenarios" do
      it "should return 0 for an empty string input" do
        expect(SumCalculator.add("")).to eq(0)
      end

    end

  end

end
