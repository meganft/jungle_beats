require 'pry'
require './lib/linked_list.rb'

class JungleBeat
  attr_reader :list

  def initialize
     @list = LinkedList.new
   end

   def append(data)
    data.split.each do |data|
      list.append(data)
    end
    data
   end

   def to_string
     list.to_string
   end

   def count
     list.count
   end

   def play
     `say -r 100 -v Vicki #{list.to_string}`
   end

end

#  def rate
#    rate = 4
#  end
 #
#  def reset_rate
#    rate = 500
#  end
#  #
#  def voice
#    voice = "Alice"
#  end
 #
#  def reset_voice
#    voice = "Boing"
#  end
