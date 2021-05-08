module Greedy
  class MinimumProduct
    def run(a, n)
      
      max_neg = -4611686018427387903
      min_pos = 4611686018427387903

      count_neg = 0
      count_zero = 0
      prod = 1

      for i in 0..n - 1 do
        if a[i].eql? 0
          count_zero = count_zero + 1
          next
        end

        if a[i] < 0
          count_neg = count_neg + 1
          max_neg = a.max
        end

        if a[i] > 0
          min_pos = a.min
        end

        prod = prod * a[i]
      end

      if count_zero == n || (count_neg == 0 && count_zero > 0)
        return 0
      end

      if count_neg == 0
        return min_pos
      end

      if !(count_neg & 1) && count_neg != 0
        prod = prod / max_neg
      end

      prod
    end
  end
end
