class Node

  attr_reader :data
  attr_accessor :next_node

  def initialize(data = nil)
    @data = data
    @next_node = nil
  end

end
