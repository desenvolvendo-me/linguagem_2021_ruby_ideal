# frozen_string_literal: true

RSpec.describe Algorithms::Search::Binary do
  describe "#run" do
    let(:array) { [1, 3, 4, 10, 40, 55, 90] }
    let(:n) { array.length - 1 }
    let(:binary_search) { described_class.new }

    subject { binary_search.run(array, 0, n, x) }

    context "when element is present in the array" do
      let(:x) { 90 }

      it "returns the index of the element" do
        expect(subject).to eq(6)
      end
    end

    context "when element is not present in the array" do
      let(:x) { 100 }

      it "returns -1" do
        expect(subject).to eq(-1)
      end
    end
  end
end
