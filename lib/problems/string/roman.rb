module Problems
  module String
    class Roman
      def run(number)
        roman_dict = {'I' => 1, 'V' => 5, 'X' => 10}
        total = 0
        prev_value = 0

        number.each_char do |char|
          current_value = roman_dict[char]

          if current_value > prev_value
            total += current_value - 2 * prev_value
          else
            total += current_value
          end
          prev_value = current_value
        end

        total

      end
    end
  end
end