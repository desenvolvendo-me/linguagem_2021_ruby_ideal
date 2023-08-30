# frozen_string_literal: true

RSpec.describe Algorithms::Greedy::MaximumSum do
  describe "#run" do
    let(:array) { [-2, 0, 5, -1, 2] }
    let(:maximum_sum) { described_class.new }

    subject { maximum_sum.run(array) }

    it "returns the maximum sum of subarray" do
      expect(subject).to eq(10)
    end
  end
end

