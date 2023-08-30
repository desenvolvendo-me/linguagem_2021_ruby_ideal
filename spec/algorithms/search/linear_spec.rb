# frozen_string_literal: true

RSpec.describe Algorithms::Search::Linear do
  describe "#run" do
    let(:array) { [2, 3, 4, 10, 40] }
    let(:linear_search) { described_class.new }

    subject { linear_search.run(array, x) }

    context "when element is present in the array" do
      let(:x) { 10 }

      it "returns the index of the element" do
        expect(subject).to eq(3)
      end
    end

    context "when element is not present in the array" do
      let(:x) { 1 }

      it "returns -1" do
        expect(subject).to eq(-1)
      end
    end
  end
end
