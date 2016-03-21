require_relative 'fixed_array'

describe FixedArray do

  describe '#initialize' do
    let(:array) { FixedArray.new }
    it 'makes a new array with space for size elements' do
      expect(array.size).to eq(4)
    end
  end

  describe 'get' do
    let(:array) {  FixedArray.new }
    it 'will return the element at a given index' do
      expect(array.get(0)).to eq(nil)
    end
  end

  describe 'set' do
    let(:array) { FixedArray.new }
    it 'will set a given element in the array' do
      expect(array.set(0, "hyes")).to eq("hyes")
    end
  end
end
