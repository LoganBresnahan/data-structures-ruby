require_relative 'array_list'

describe ArrayList do

  # describe '#initialize' do
  #   let(:array) { ArrayList.new(FixedArray.new) }
  #   it 'creates a new ArrayList' do
  #     expect(array.array).to be_a(FixedArray)
  #   end
  # end

  describe '#add' do
    let(:array) { ArrayList.new(FixedArray.new) }
    it 'will add an element to the fixed array' do
      expect(array.add('yes')).to eq('yes')
    end
  end

  describe '#get' do
    let(:array) { ArrayList.new(FixedArray.new) }
    it 'will retrieve an element from a given index' do
      expect(array.get(0)).to eq(nil)
    end
  end

  describe '#set' do
    let(:array) { ArrayList.new(FixedArray.new) }
    it 'will set and element at a given index' do
      expect(array.set(0, 'no')).to eq('no')
    end
  end

  describe '#size' do
    let(:array) { ArrayList.new(FixedArray.new) }
    it 'will show the length of the array' do
      expect(array.size).to eq(4)
    end
  end

end
