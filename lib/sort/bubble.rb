module Sort
  class Bubble
    def run(array)
      length = array.length
      return array if length <= 1

      loop do
        swapped = false

        (length - 1).times do |i|
          next unless array[i] > array[i + 1]

          exp = array[i]
          array[i] = array[i + 1]
          array[i + 1] = exp

          swapped = true
        end

        break unless swapped
      end

      array
    end
  end
end
