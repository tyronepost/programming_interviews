
require_relative '../src/node'
require 'test/unit'

class NodeTest < Test::Unit::TestCase
  def setup
    @node = Node.new
  end

  def test_constructor
    assert_not_nil @node
    assert_equal nil, @node.data
    assert_equal nil, @node.next
  end

  def test_data
    @node.data = 1
    assert_equal 1, @node.data
  end

  def test_next
    next_node = Node.new
    @node.next = next_node
    assert_equal next_node, @node.next
  end

  def test_error
    assert_raise StandardError do
      @node.next = 2
    end
  end
end