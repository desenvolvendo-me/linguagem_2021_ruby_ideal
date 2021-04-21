module Greedy
  class MinimumSum
    def run(a, b, n, k)

      diff = 0
      res = 0

      for i in 0..n - 1 do

        pro = a[i] * b[i]
        res = res + pro

        if pro < 0 and b[i] < 0
          temp = b[i] * (a[i] + 2 * k)
        elsif pro < 0 and a[i] < 0
          temp = b[i] * (a[i] - 2 * k)
        elsif pro > 0 and a[i] < 0
          temp = b[i] * (a[i] + 2 * k)
        elsif pro > 0 and a[i] > 0
          temp = b[i] * (a[i] - 2 * k)
        end
        d = (pro - temp).abs

        if d > diff
          diff = d
        end
      end
      return res - diff
    end
  end
end
