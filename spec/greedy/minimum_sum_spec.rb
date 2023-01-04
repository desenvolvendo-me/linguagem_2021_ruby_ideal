# frozen_string_literal: true

RSpec.describe Greedy::MinimumSum do

  it "-31" do
    a = [1, 2, -3]
    b = [-2, 3, -5]
    n = 3
    k = 5

    result = Greedy::MinimumSum.new.run(a, b, n, k)

    expect(result).to eq(-31)
  end

  it "25" do
    a = [2, 3, 4, 5, 4 ,0]
    b = [3, 4, 2, 3, 2]
    n = 5
    k = 3

    result = Greedy::MinimumSum.new.run(a, b, n, k)

    expect(result).to eq(25)
  end

end
