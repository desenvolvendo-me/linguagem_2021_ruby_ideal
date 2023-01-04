module Search
  class Jump
    def run(array, target, jump_size = nil)
      # Set the current index to the first element
      current_index = 0

      jump_size = Math.sqrt(array.length).floor if jump_size.nil?

      # While the current index is less than the length of the array
      while current_index < array.length
        # If the element at the current index is equal to the target, return the index
        return current_index if array[current_index] == target

        # If the element at the current index is greater than the target, perform a linear search
        # starting at the previous jump and ending at the current index
        if array[current_index] > target
          (current_index - jump_size).upto(current_index) do |i|
            return i if array[i] == target
          end

          # If the element is not found in the linear search, return -1
          return -1
        end

        # Otherwise, set the current index to the next jump
        current_index += jump_size
      end

      # If the element is not found, return -1
      -1
    end
  end
end
