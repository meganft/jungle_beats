require 'pry'
require './lib/node.rb'

class LinkedList
  attr_reader :head, :next_node
  attr_accessor :list

  def initialize
    @head = nil
  end

  # Adds a new element onto to the last node
  def append(data)
    if @head == nil
      @head = Node.new(data)
    else
      node = @head
      until node.next_node == nil
        node = node.next_node
      end
      node.next_node = Node.new(data)
    end
  end

  # Count the number of nodes
  def count
    count = 1
    node = @head
    until node.next_node == nil
      count += 1
      node = node.next_node
    end
    count
  end

  # Make the data of the nodes into a string
  def to_string
    result = ""
    words = @head
    if words.nil?
      ""
    elsif words.next_node.nil?
      result = words.data
    else
      result += "#{words.data}"
      while words.next_node
        words = words.next_node
        result += " #{words.data}"
      end
    result
    end
  end

  # Add a new element onto the beginning of the linked list
  def prepend(data)
    if @head == nil
      @head = Node.new(data)
    else next_node = @head
      @head = Node.new(data)
      @head.next_node = next_node
    end
  end

  # Add a new node into the linked list at a given point
  def insert (position, data)
    current_node = @head
    count = 1
    if count == position
      node = current_node.next_node
    end
    until count == position
      current_node = current_node.next_node
      count += 1
      node = current_node.next_node
    end
    current_node.next_node = Node.new(data)
    new_created_node = current_node.next_node
    new_created_node.next_node = node
  end

  # Find the first position and the number of elements to return
  def find(position, element)
    find = ""
    current_node = @head
    position.times do
      current_node = current_node.next_node
    end
    element.times do
      find += current_node.data + " "
      current_node = current_node.next_node
    end
    find.chop
  end

  # Pop the last node off of the linked list
  def pop
    current_node = @head
    until current_node.next_node.next_node == nil
      current_node = current_node.next_node
    end
    popped_node = current_node.next_node.data
    current_node.next_node = nil
    popped_node
  end

  # Checks whether the linked list includes a given element
  def includes?(data)
  	current_node = @head
    until current_node.next_node == nil
      if current_node.data == data
        return true
      else
        current_node = current_node.next_node
      end
    end
    return false
  end

end
