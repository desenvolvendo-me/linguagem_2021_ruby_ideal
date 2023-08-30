# frozen_string_literal: true

RSpec.describe Algorithms::Sort::Bubble do

  describe "#run" do
    let(:unsorted_array) { [64, 34, 25, 12, 22, 11, 90] }
    let(:sorted_array) { [11, 12, 22, 25, 34, 64, 90] }

    subject { described_class.new.run(unsorted_array) }

    it "returns the sorted array" do
      expect(subject).to eq(sorted_array)
    end
  end
end
