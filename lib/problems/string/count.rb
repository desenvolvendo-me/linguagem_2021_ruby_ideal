module Problems
  module String
    class Count

      def initialize; end

      def run(str)
        uppercases = str.count("A-Z")
        lowercases = str.count("a-z")
        numbers = str.count("0-9")
        specials = str.length - (uppercases + lowercases + numbers)

        {
          uppercases: uppercases,
          lowercases: lowercases,
          numbers: numbers,
          specials: specials
        }
      end
    end
  end
end
