require_relative 'fixed_array'

class ArrayList

  def initialize(fixed_array)
    @array = fixed_array
  end

  def add(element)
    new_array = FixedArray.new(@array.size)
    new_array.set(@array.size, element)
    @array = new_array
  end

  def get(index)
    @array.get(index)
  end

  def set(index, element)
    @array.set(index, element)
  end

end

array = ArrayList.new(FixedArray.new)
p array.add("yes")
p array.get(4)
p array.set(0, "no")
p array
