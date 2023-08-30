module Algorithms
  module Greedy
    class MaximumSum

      def initialize
        @sum = 0
      end

      def run(array)
        array.each_with_index do |item, index|
          array[index] = item.abs if item.negative?
        end

        array.each do |item|
          @sum += item
        end

        @sum
      end
    end
  end
end