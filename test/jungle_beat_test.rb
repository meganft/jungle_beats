require 'pry'
require "./lib/jungle_beat"
require "minitest/autorun"
require "minitest/pride"


class JungleBeatTest < Minitest::Test
  def test_new_jb_head_is_nil
    jb = JungleBeat.new
    assert_equal nil, jb.list.head
  end

  def test_jb_append_multiple_words
    jb = JungleBeat.new
    assert_equal "deep doo ditt woo hoo shu", jb.append("deep doo ditt woo hoo shu")
  end

  def test_it_can_count
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    assert_equal 6, jb.count
  end

  def test_it_can_play
    jb = JungleBeat.new
    assert equal `say -r 100 -v Vicki "deep doo ditt woo hoo shu"`, jb.play
  end

end
