# frozen_string_literal: true

RSpec.describe Algorithms::Greedy::MinimumSum do
  describe "#run" do
    let(:minimum_sum) { described_class.new }

    subject { minimum_sum.run(a, b, n, k) }

    context "with specific array values" do
      let(:a) { [1, 2, -3] }
      let(:b) { [-2, 3, -5] }
      let(:n) { 3 }
      let(:k) { 5 }

      it "returns the expected minimum sum" do
        expect(subject).to eq(-31)
      end
    end

    context "with another set of array values" do
      let(:a) { [2, 3, 4, 5, 4, 0] }
      let(:b) { [3, 4, 2, 3, 2] }
      let(:n) { 5 }
      let(:k) { 3 }

      it "returns a different expected minimum sum" do
        expect(subject).to eq(25)
      end
    end
  end
end