module Problems
  module String
    class TowSum
      def run(nums, target)
        hash = {}
        nums.each_with_index do |num, i|
          complement = num - target
          if hash.key?(complement)
            return [hash[complement], i]
          end
          hash[num] = i
        end
      end
    end
  end
end