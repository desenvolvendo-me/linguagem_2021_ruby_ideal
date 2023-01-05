module Search
  class Linear
    def run(array, x)
      array.each_with_index do |item, index|
        return index if item.eql? x
      end
      -1
    end
  end
end
