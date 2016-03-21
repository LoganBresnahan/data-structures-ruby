require_relative 'node'

class LinkedList
  attr_reader :front_node, :back_node

  def initialize
    @front_node = nil
    @back_node = nil
  end

  def insert_first(node_object)
    if @front_node != nil
      node_object.pointer = @front_node
    end
    @front_node = node_object
    if @back_node == nil
      @back_node = @front_node
      # @front_node.pointer = @back_node  -->which will make the looping pointing.
    end
  end

  def remove_first
    return nil if @front_node == nil
    if @front_node.pointer != nil
      @front_node = @front_node.pointer
    else
      @front_node = nil
    end
  end

  def insert_last(node_object)
    if @front_node == nil
      @front_node = node_object
      @back_node = @front_node
    else
      #If I end the if statement instead I can do the continual pointing back and forth.
      @back_node.pointer = node_object
      @back_node = node_object
    end
  end

  def remove_last
    if @front_node.pointer == nil
      @front_node = nil
      return
    end
    @back_node = @front_node.recursive_node_pointer(@front_node, @back_node)
    @back_node.pointer = nil
    @back_node
  end

  def get(index)
    @front_node.recursive_node_index(@front_node, index)
  end

  def set(index, element)
    node = @front_node.recursive_node_index(@front_node, index)
    node.value = element
  end

  def insert(index, element)
    behind_node = self.get(index-1)
    infront_node = self.get(index)
    inserted_node = Node.new(element)
    inserted_node.pointer = infront_node
    behind_node.pointer = inserted_node
  end

  def size
    @front_node.recursive_node_size(@front_node)
  end

end
