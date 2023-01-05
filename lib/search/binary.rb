module Search
  class Binary
    def run(array, left, right, x)
      if right >= left
        mid = left + (right - left) / 2
        mid = mid.floor

        if array[mid] == x
          mid
        elsif array[mid] > x
          right = mid - 1
          Search::Binary.new.run(array, left, right, x)
        else
          left = mid + 1
          Search::Binary.new.run(array, left, right, x)
        end

      else
        -1
      end
    end
  end
end
