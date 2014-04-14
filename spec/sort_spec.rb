require 'rubygems'
require 'rspec'
require_relative '../sort.rb'

describe 'Sort' do
  describe '.selection_sort' do

    it 'returns an empty array if an empty array is passed to it' do
      array = []
      result = Sort.selection_sort(array)
      expect(result).to eq([])
    end

    it 'sorts negative numbers properly' do
      array = [8, -3, 7, 9, 2, 6, -8]

      result = Sort.selection_sort(array)
      expect(result).to eq(array.sort)

    end

    it 'sorts duplicates properly' do
      array = [5, 7, 8, 1, 9, 5, 5, 3, 1]

      result = Sort.selection_sort(array)
      expect(result).to eq(array.sort)

    end

    it 'sorts very large arrays' do
      array = []
      for i in (0..1000)
        array.push(rand(1000))
      end

      result = Sort.selection_sort(array)
      expect(result).to eq(array.sort)

    end

    it 'sorts floats properly' do
      array = [-1, 5, 8, -2, 3.4, 10, 50, 23]

      result = Sort.selection_sort(array)
      expect(result).to eq(array.sort)
    end

  end
end

describe 'merge' do
  it 'combines two sorted arrays into 1 sorted array' do
    left = [1,2,6,7]
    right = [3,4,8,9]
    result = Sort.merge(left,right)
    expect(result).to eq([1,2,3,4,6,7,8,9])
  end
end

describe 'merge_sort' do
  it 'returns an empty array if an empty array is passed to it' do
      array = []
      result = Sort.merge_sort(array)
      expect(result).to eq([])
    end

    it 'sorts negative numbers properly' do
      array = [8, -3, 7, 9, 2, 6, -8]

      result = Sort.merge_sort(array)
      expect(result).to eq(array.sort)

    end

    it 'sorts duplicates properly' do
      array = [5, 7, 8, 1, 9, 5, 5, 3, 1]

      result = Sort.merge_sort(array)
      expect(result).to eq(array.sort)

    end

    it 'sorts very large arrays' do
      array = []
      for i in (0..1000)
        array.push(rand(1000))
      end

      result = Sort.merge_sort(array)
      expect(result).to eq(array.sort)

    end

    it 'sorts floats properly' do
      array = [-1, 5, 8, -2, 3.4, 10, 50, 23]

      result = Sort.merge_sort(array)
      expect(result).to eq(array.sort)
    end
end
