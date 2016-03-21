class Node
  attr_accessor :pointer, :index, :value

  def initialize(element)
    @value = element
    @pointer = nil
    @index = nil
    @count = 0
  end

  def new(element)
    @pointer = element
    @pointer.pointer = nil
  end

  def insert_after(node_to_insert)
    node_to_insert.pointer = self.pointer
    self.pointer = node_to_insert
  end

  def remove_after
    return if self.pointer == nil
    if self.pointer.pointer
      self.pointer = self.pointer.pointer
    else
      self.pointer = nil
    end
  end

  def recursive_node_pointer(this_node, node_to_find)
    return this_node if this_node.pointer == node_to_find
    this_node = this_node.pointer
    recursive_node_pointer(this_node, node_to_find)
  end

  def recursive_node_index(this_node, index)
    this_node.index = @count
    return this_node if this_node.index == index
    this_node = this_node.pointer
    @count += 1
    recursive_node_index(this_node, index)
  end

  def recursive_node_size(this_node)
    this_node.index = @count
    return this_node.index+1 if this_node.pointer == nil
    this_node = this_node.pointer
    @count += 1
    recursive_node_size(this_node)
  end

end
