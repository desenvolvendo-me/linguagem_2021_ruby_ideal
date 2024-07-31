module Problems
  module String
    class Roman
      def run(number)
        roman_dict = { 'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100 }
        total = 0
        prev_value = 0

        number.each_char do |char|
          current_value = roman_dict[char]

          total += if current_value > prev_value
                     current_value - 2 * prev_value
                   else
                     current_value
                   end
          prev_value = current_value
        end

        total

      end
    end
  end
end