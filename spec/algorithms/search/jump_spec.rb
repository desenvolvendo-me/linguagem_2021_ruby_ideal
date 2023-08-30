# frozen_string_literal: true

RSpec.describe Algorithms::Search::Jump do
  describe "#run" do
    let(:jump_search) { described_class.new }

    subject { jump_search.run(array, target, jump) }

    context "without jump" do
      let(:array) { [-1, 0, 1, 4, 3] }

      context "when element is present in the array" do
        let(:target) { 1 }
        let(:jump) { nil }

        it "returns the index of the element" do
          expect(subject).to eq(2)
        end
      end

      context "when element is not present in the array" do
        let(:target) { 5 }
        let(:jump) { nil }

        it "returns -1" do
          expect(subject).to eq(-1)
        end
      end
    end

    context "with jump" do
      let(:array) { [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610] }
      let(:jump) { 4 }

      context "when element is present in the array" do
        let(:target) { 55 }

        it "returns the index of the element" do
          expect(subject).to eq(10)
        end
      end

      context "when element is not present in the array" do
        let(:target) { 1000 }

        it "returns -1" do
          expect(subject).to eq(-1)
        end
      end
    end
  end
end
