module Greedy
  class MaximumSum
    def run(array)
      array.each_with_index do |item, index|
        array[index] = item.abs if item.negative?
      end

      sum = 0
      array.each do |item|
        sum += item
      end

      sum
    end
  end
end