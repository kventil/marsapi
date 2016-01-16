require_relative "../src/orientation.rb"
require "minitest/autorun"


class TestRover < MiniTest::Unit::TestCase

  def setup
      @o = Orientation.new("n")
  end

  def test_orientation_n
    @o.set("N")
    assert_equal 0, @o.x
    assert_equal 1, @o.y
    assert_equal "N", @o.name
  end
  def test_orientation_o
    @o.set("O")
    assert_equal 1, @o.x
    assert_equal 0, @o.y
    assert_equal "O", @o.name
  end
  def test_orientation_s
    @o.set("S")
    assert_equal 0, @o.x
    assert_equal -1, @o.y
    assert_equal "S", @o.name
  end
  def test_orientation_w
    @o.set("W")
    assert_equal -1, @o.x
    assert_equal 0, @o.y
    assert_equal "W", @o.name
  end

  def test_orientation_illegal
    ## TODO: illegal input
  end
end
