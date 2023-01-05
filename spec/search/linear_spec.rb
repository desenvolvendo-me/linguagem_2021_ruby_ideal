# frozen_string_literal: true

RSpec.describe Search::Linear do

  it "present in array" do
    array = [2, 3, 4, 10, 40]
    x = 10

    result = Search::Linear.new.run(array,  x)

    expect(result).to eq(3)
  end

  it "not present in array" do
    array = [2, 3, 4, 10, 40]
    x = 1

    result = Search::Linear.new.run(array,  x)

    expect(result).to eq(-1)
  end
end
