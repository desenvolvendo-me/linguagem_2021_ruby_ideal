# frozen_string_literal: true

RSpec.describe Greedy::MaximumSum do

  it "10" do
    a = [-2, 0, 5, -1, 2]

    result = Greedy::MaximumSum.new.run(a)

    expect(result).to eq(10)
  end

end
