# frozen_string_literal: true

# frozen_string_literal: true

RSpec.describe Problems::String::Count do
  describe '.count_characters' do
    let(:counter) { described_class.new }

    subject { counter.run(input) }

    context 'when given the input "#GeeKs01fOr@gEEks07"' do
      let(:input) { "#GeeKs01fOr@gEEks07" }

      it 'counts the characters correctly' do
        expect(subject[:uppercases]).to eq(5)
        expect(subject[:lowercases]).to eq(8)
        expect(subject[:numbers]).to eq(4)
        expect(subject[:specials]).to eq(2)
      end
    end

    context 'when given the input "*GeEkS4GeEkS*"' do
      let(:input) { "*GeEkS4GeEkS*" }

      it 'counts the characters correctly' do
        expect(subject[:uppercases]).to eq(6)
        expect(subject[:lowercases]).to eq(4)
        expect(subject[:numbers]).to eq(1)
        expect(subject[:specials]).to eq(2)
      end
    end
  end
end


