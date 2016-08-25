require 'pry'
require "./lib/node"
require "./lib/linked_list"
require "minitest/autorun"
require "minitest/pride"

class NodeTest < Minitest::Test
  def test_node_can_be_created
    node = Node.new("plop")

    assert_equal Node, node.class
    # assert_instance_of Node, node.class
    assert_equal "plop", node.data
  end

  def test_node_can_hold_other_data
    node = Node.new("fizz")

    assert_equal "fizz", node.data
  end

  def test_next_node_is_nil
    node = Node.new("pop")

    assert_equal nil, node.next_node
  end

  def test_node_can_have_next_step
    node = Node.new("bop")
    node2 = Node.new("beep")

    node.next_node = (node2)

    assert_equal "beep", node.next_node.data
  end

end
