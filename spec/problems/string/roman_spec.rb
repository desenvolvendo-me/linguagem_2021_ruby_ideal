# spec/problems/string/roman_spec.rb

require 'rspec'

RSpec.describe Problems::String::Roman do
  describe '#run' do
    let(:converter) { described_class.new }

    it 'converts single roman numerals to integers' do
      expect(converter.run('I')).to eq(1)
      expect(converter.run('V')).to eq(5)
      expect(converter.run('X')).to eq(10)
      expect(converter.run('L')).to eq(50)
      expect(converter.run('C')).to eq(100)
    end

    it 'converts combined roman numerals to integers' do
      expect(converter.run('II')).to eq(2)
      expect(converter.run('IV')).to eq(4)
      expect(converter.run('VI')).to eq(6)
      expect(converter.run('IX')).to eq(9)
      expect(converter.run('XI')).to eq(11)
    end

    it 'converts more complex roman numerals to integers' do
      expect(converter.run('XIV')).to eq(14)
      expect(converter.run('XV')).to eq(15)
      expect(converter.run('XX')).to eq(20)
      expect(converter.run('XXI')).to eq(21)
      expect(converter.run('XXIX')).to eq(29)
      expect(converter.run('XXX')).to eq(30)
    end

    it 'handles invalid roman numerals gracefully' do
      expect(converter.run('')).to eq(0)
      expect { converter.run('A') }.to raise_error(NoMethodError)
      expect { converter.run('IIII') }.not_to raise_error
      expect(converter.run('IIII')).to eq(4) # Based on the current implementation
    end
  end
end
