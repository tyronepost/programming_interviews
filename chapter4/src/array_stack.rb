class ArrayStack
  def initialize
    @arr = []
  end

  def push(value)
    @arr.push value
  end

  def pop
      @arr.pop
  end

  def size
    @arr.size
  end
end