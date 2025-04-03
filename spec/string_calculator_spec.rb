# spec/string_calculator_spec.rb
require 'rspec'
require_relative '../lib/string_calculator'

describe StringCalculator do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add('')).to eq(0)
    end

    it 'returns the number itself for a single number' do
      expect(StringCalculator.add('1')).to eq(1)
    end

    it 'returns the sum of two numbers' do
      expect(StringCalculator.add('1,5')).to eq(6)
    end

    it 'handles any amount of numbers' do
      expect(StringCalculator.add('1,2,3,4')).to eq(10)
    end

    it 'handles new lines as delimiters' do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it 'supports custom delimiters' do
      expect(StringCalculator.add("//&\n1&2\n3&5")).to eq(11)
    end

    it 'raises an exception for negative numbers' do
      expect { StringCalculator.add('1,-2,3,-4') }.to raise_error('negative numbers not allowed -2,-4')
    end

    it "returns 0 if spaces are used as delimiters" do
        expect(StringCalculator.add("10 20 30")).to eq(0)
    end
      
  end
end
