
require_relative '../src/linked_list'
require 'test/unit'

class LinkedListTest < Test::Unit::TestCase

  def setup
    @linked_list = LinkedList.new
  end

  def test_constructor
    assert_not_nil @linked_list
    assert_nil @linked_list.head
  end

  def test_insert_in_front
    @linked_list.insert_in_front 1
    assert_equal 1, @linked_list.head.data
    assert_equal 1, @linked_list.size

    @linked_list.insert_in_front 2
    assert_equal 2, @linked_list.head.data
    assert_equal 2, @linked_list.size
  end

  def test_delete_from_front
    @linked_list.insert_in_front "a"
    @linked_list.insert_in_front "b"
    @linked_list.insert_in_front "c"

    assert_equal 3, @linked_list.size

    @linked_list.delete_from_front

    assert_equal 2, @linked_list.size
    assert_equal "b", @linked_list.head.data
  end

  def test_delete_from_front_on_empty
    assert_equal 0, @linked_list.size
    @linked_list.delete_from_front
    assert_equal 0, @linked_list.size
  end

  def test_find
    @linked_list.insert_in_front "a"
    @linked_list.insert_in_front "b"
    @linked_list.insert_in_front "c"

    node = @linked_list.find "a"
    assert_not_nil node
    assert_equal "a", node.data
    assert_equal nil, node.next
  end
end