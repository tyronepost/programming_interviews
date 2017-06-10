
require_relative 'linked_list'

class LinkedListStack

  attr_reader :size

  def initialize
    @size = 0
    @list = LinkedList.new
  end

  def push(value)
    @size += 1
    @list.insert_in_front value
  end

  def pop
    unless size == 0
      @size -= 1 unless size == 0
      @list.delete_from_front
    end
  end
end