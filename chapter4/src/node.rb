
class Node
  attr_accessor :data, :next

  def next=(node)
    raise StandardError unless node.is_a? Node
    @next = node
  end
end