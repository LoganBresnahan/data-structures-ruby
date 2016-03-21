require_relative 'node'

describe Node do

  describe '#initialize' do
    let(:node) { Node.new(1) }
    it 'creates a new node object with a value and pointer' do
      expect(node.value).to eq(1)
      expect(node.pointer).to eq(nil)
    end
  end

  describe '#new' do
    let(:node) { Node.new(2) }
    let(:new_node) { Node.new(3) }
    it 'sets a pointer equal to the next node' do
      node.new(new_node)
      expect(node.pointer).to be_a(Node)
    end
  end

  describe '#insert_after' do
    let(:node) { Node.new(1) }
    let(:new_node) { Node.new(3) }
    let(:inserted_node) { Node.new(2) }
    it 'inserts a new node after a given node' do
      node.new(new_node)
      node.insert_after(inserted_node)
      expect(node.pointer).to eq(inserted_node)
      expect(inserted_node.pointer).to eq(new_node)
    end
  end

  describe '#remove_after' do
    let(:node) { Node.new(1) }
    let(:next_node) { Node.new(2) }
    let(:last_node) { Node.new(3) }
    it "removes the node after 'self' node" do
      node.new(next_node)
      next_node.new(last_node)
      node.remove_after
      expect(node.pointer).to eq(last_node)
    end
  end

end
