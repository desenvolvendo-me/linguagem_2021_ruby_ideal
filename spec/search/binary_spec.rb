# frozen_string_literal: true

RSpec.describe Search::Binary do

  it "present in array" do
    array = [1, 3, 4, 10, 40, 55, 90]
    x = 90
    n = array.length - 1

    result = Search::Binary.new.run(array, 0, n, x)

    expect(result).to eq(6)
  end

  it "not present in array" do
    array = [1, 3, 4, 10, 40, 55, 90]
    x = 100
    n = array.length - 1

    result = Search::Binary.new.run(array, 0, n, x)

    expect(result).to eq(-1)
  end
end
