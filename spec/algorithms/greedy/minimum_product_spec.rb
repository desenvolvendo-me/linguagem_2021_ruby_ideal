# frozen_string_literal: true

RSpec.describe Algorithms::Greedy::MinimumProduct do
  describe "#run" do
    let(:minimum_product) { described_class.new }

    subject { minimum_product.run(array, array.length) }

    context "when array contains multiple positive and negative values" do
      let(:array) { [-1, -1, -2, 4, 3] }

      it "returns the minimum product value" do
        expect(subject).to eq(-24)
      end
    end

    context "when array contains a negative and zero" do
      let(:array) { [-1, 0] }

      it "returns the negative value as minimum product" do
        expect(subject).to eq(-1)
      end
    end

    context "when array contains a single value" do
      let(:array) { [1] }

      it "returns the single value as minimum product" do
        expect(subject).to eq(1)
      end
    end

    context "when array contains only zeros" do
      let(:array) { [0, 0, 0] }

      it "returns zero as minimum product" do
        expect(subject).to eq(0)
      end
    end
  end
end

