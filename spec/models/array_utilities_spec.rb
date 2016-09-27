require 'rspec'
require './app/models/array_utilities'

describe ArrayUtilities do

  describe '::flatten' do

    context 'with an empty array' do
      it 'returns an empty array' do
        expect(ArrayUtilities.flatten([])).to eql([])
      end
    end

    context 'with a flat array' do
      it 'returns an equal array' do
        expect(ArrayUtilities.flatten([1, 2, 3])).to eql([1, 2, 3])
      end
    end

    context 'with nested arrays' do
      it 'returns flattened array' do
        expect(ArrayUtilities.flatten([[1,2,[3]],4])).to eql([1, 2, 3, 4])
      end
    end

    context 'with different content types' do
      it 'returns flattened array' do
        expect(ArrayUtilities.flatten([ [1, 2, 'abc' ], {key: :value}, 4])).to eql([1, 2, 'abc', {key: :value}, 4])
      end
    end

    context 'given invalid parameter' do
      it 'raises an error' do
        expect{ArrayUtilities.flatten(nil)}.to raise_error('Parameter must be an Array')
      end
    end

  end

end