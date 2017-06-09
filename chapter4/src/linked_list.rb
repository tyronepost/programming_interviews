
require_relative 'node'

class LinkedList
  attr_reader :size, :head

  def initialize
    @size = 0
  end

  def insert_in_front(value)
    if @head.nil?
      @head = Node.new
      @head.data = value
    else
      node = Node.new
      node.data = value
      node.next = @head
      @head = node
    end
    @size += 1
  end
end