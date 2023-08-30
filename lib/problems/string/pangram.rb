module Problems
  module String
    class Pangram

      def initialize; end

      def run(input)
        alphabet = ('a'..'z').to_a
        string_chars = input.downcase.chars.to_a
        missing_letters = alphabet - string_chars
        missing_letters.to_a.sort.join
      end
    end
  end
end