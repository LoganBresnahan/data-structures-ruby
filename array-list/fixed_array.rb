class FixedArray

  def initialize(capacity = 4)
    @array = Array.new(capacity, nil)
  end

  def get(index)
    raise OutOfBoundsException if index > @array.size || index < 0
    @array[index]
  end

  def set(index, element)
    raise OutOfBoundsException if index > @array.size || index < 0
    @array[index] = element
  end

  def size
    @array.length
  end

end

class OutOfBoundsException < StandardError; end
