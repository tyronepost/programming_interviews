
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

  def delete_from_front
    unless @size == 0
      node = @head
      @head = node.next
      node.next = nil
      @size -= 1
      node.data
    end
  end

  def find(value)
    node = @head
    while not node.nil? and node.data != value
      node = node.next
    end
    node
  end
end