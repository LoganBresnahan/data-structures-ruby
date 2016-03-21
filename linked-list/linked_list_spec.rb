require_relative 'linked_list'

describe LinkedList do

  describe '#initialize' do
    let(:list) { LinkedList.new }
    it 'makes a new linklist' do
      expect(list.front_node).to eq(nil)
    end
  end

  describe '#insert_first' do
    let(:list) { LinkedList.new }
    let(:node) { Node.new(1) }
    let(:next_node) { Node.new(2) }
    it 'inserts and element at the front of the list' do
      list.insert_first(node)
      list.insert_first(next_node)
      expect(next_node.pointer).to eq(node)
    end
  end

  describe '#remove_first' do
    let(:list) { LinkedList.new }
    let(:node) { Node.new(1) }
    let(:next_node) { Node.new(2) }
    it 'removes the first node in the LinkedList' do
      list.insert_first(node)
      list.insert_first(next_node)
      list.remove_first
      expect(list.front_node).to eq(node)
    end
  end

  describe '#insert_last' do
    let(:list) { LinkedList.new }
    let(:node) { Node.new(1) }
    let(:next_node) { Node.new(2) }
    let(:last_node) { Node.new(3) }
    it 'inserts a node object into the last spot of the linked list' do
      list.insert_first(node)
      list.insert_first(next_node)
      list.insert_last(last_node)
      expect(node.pointer).to eq(last_node)
    end
  end

  describe '#remove_last' do
    let(:list) { LinkedList.new }
    let(:node) { Node.new(1) }
    let(:next_node) { Node.new(2) }
    let(:last_node) { Node.new(3) }
    let(:last) { Node.new(4) }
    it 'removes the last node object in this list' do
      list.insert_first(next_node)
      list.insert_first(node)
      list.insert_last(last_node)
      list.insert_last(last)
      list.remove_last
      expect(list.back_node).to eq(last_node)
    end
  end

  describe '#get' do
    let(:list) { LinkedList.new }
    let(:node) { Node.new(1) }
    let(:next_node) { Node.new(2) }
    let(:last_node) { Node.new(3) }
    it 'gets the node at the provided index' do
      list.insert_last(node)
      list.insert_last(next_node)
      list.insert_last(last_node)
      expect(list.get(2)).to eq(last_node)
    end
  end

  describe '#set' do
    let(:list) { LinkedList.new }
    let(:node) { Node.new(1) }
    let(:next_node) { Node.new(2) }
    let(:last_node) { Node.new(3) }
    it 'sets a value on a node at a given index' do
      list.insert_last(node)
      list.insert_last(next_node)
      list.insert_last(last_node)
      list.set(0, 'one')
      expect(list.front_node.value).to eq('one')
    end
  end

  describe '#insert' do
    let(:list) { LinkedList.new }
    let(:node) { Node.new(1) }
    let(:next_node) { Node.new(2) }
    let(:last_node) { Node.new(3) }
    it 'inserts a new node at the given index' do
      list.insert_last(node)
      list.insert_last(last_node)
      list.insert(1, 'two')
      expect(node.pointer.value).to eq('two')
    end
  end

  describe '#size' do
    let(:list) { LinkedList.new }
    let(:node) { Node.new(1) }
    let(:next_node) { Node.new(2) }
    let(:last_node) { Node.new(3) }
    it 'returns the total amount on node objects in the linkedlist' do
      list.insert_last(node)
      list.insert_last(next_node)
      list.insert_last(last_node)
      expect(list.size).to eq(3)
    end
  end

end
