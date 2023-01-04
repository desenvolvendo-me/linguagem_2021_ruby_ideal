# frozen_string_literal: true

RSpec.describe Search::Jump do

  context "without jump" do
    it "2" do
      array = [-1, 0, 1, 4, 3]
      target = 1

      result = Search::Jump.new.run(array, target)

      expect(result).to eq(2)
    end

    it "-1" do
      array = [-1, 0, 1, 4, 3]
      target = 5

      result = Search::Jump.new.run(array, target)

      expect(result).to eq(-1)
    end
  end

  context "with jump" do
    it "8" do
      array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
      target = 55
      jump = 4

      result = Search::Jump.new.run(array, target, jump)

      expect(result).to eq(10)
    end

    it "-1" do
      array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
      target = 1000
      jump = 4

      result = Search::Jump.new.run(array, target, jump)

      expect(result).to eq(-1)
    end
  end
end
