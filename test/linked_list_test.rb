require 'pry'
require "./lib/node"
require "./lib/linked_list"
require "minitest/autorun"
require "minitest/pride"

class LinkedListTest < Minitest::Test

  def test_new_linked_list
    list = LinkedList.new

    assert_equal LinkedList, list.class
  end

  def test_linked_list_head_is_nil
    list = LinkedList.new

    assert_equal nil, list.head
  end

  def test_append_linked_list
    list = LinkedList.new
    list.append("doop")

    assert_equal "doop", list.head.data
  end

  def test_next_node_is_nil_in_list
    list = LinkedList.new
    list.append("bop")

    assert_equal nil, list.next_node
  end

  def test_list_can_count
    list = LinkedList.new

    list.append("bop")

    assert_equal 1, list.count

    list.append("deep")

    assert_equal 2, list.count
  end

  def test_list_to_string
    list = LinkedList.new

    assert_equal "", list.to_string

    list.append("doop")

    assert_equal "doop", list.to_string
  end

  def test_append_linked_list_again
    list = LinkedList.new
    list.append("deep")

    assert_equal "deep", list.head.data
  end

  def test_linked_list_can_prepend
    list = LinkedList.new
    list.prepend("bop")

    assert_equal "bop", list.head.data
  end

  def test_linked_list_can_insert
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.insert(1, "woo")

    assert_equal "doop woo deep", list.to_string
  end

  def test_list_can_find
    list = LinkedList.new
    list.append("first")
    list.append("second")
    list.append("third")
    list.append("fourth")
    list.append("fifth")

    assert_equal "third", list.find(2, 1)
    assert_equal "second third fourth", list.find(1,3)
  end

  def test_list_includes_element
    list = LinkedList.new
    list.append("first")
    list.append("second")
    list.append("third")
    list.append("fourth")
    list.append("fifth")
    assert list.includes?("first")
    assert list.includes?("second")
    refute list.includes?("sixth")
  end

  def test_list_can_pop_element
    list = LinkedList.new
    list.append("first")
    list.append("second")
    list.append("third")
    list.append("fourth")
    list.append("fifth")
    assert_equal "fifth", list.pop
    assert_equal "fourth", list.pop
    assert_equal "third", list.pop
  end

end
