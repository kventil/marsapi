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



  def test_rotation_full_l
    @o.set("N")
    @o.rotate("l")
    assert_equal "W", @o.name
    @o.rotate("l")
    assert_equal "S", @o.name
    @o.rotate("l")
    assert_equal "O", @o.name
    @o.rotate("l")
    assert_equal "N", @o.name
  end

  def test_rotation_full_r
    @o.set("N")
    @o.rotate("r")
    assert_equal "O", @o.name
    @o.rotate("r")
    assert_equal "S", @o.name
    @o.rotate("r")
    assert_equal "W", @o.name
    @o.rotate("r")
    assert_equal "N", @o.name
  end


  def test_rotation_illegal
      # TODO: illegal input
  end



end
