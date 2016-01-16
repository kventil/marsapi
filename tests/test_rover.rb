require_relative "../src/rover.rb"
require "minitest/autorun"


class TestRover < MiniTest::Unit::TestCase
  # TestCases
    # - move f,b
    # - move illegal command
    # - rotate l,r
    # - rotate full (llll) / (rrrr)
    # - move out of bounds
    # - illegal coordinates
    # - illegal commando


  def test_rover_move_f
    @rover = Rover.new(0,0,"N")
    @rover.commands(["f"])
    position = @rover.position
    assert_equal 0, position["x"]
    assert_equal 1, position["y"]
  end

  def test_rover_move_b
    @rover = Rover.new(0,0,"N")
    @rover.commands(["b"])
    position = @rover.position
    assert_equal 0, position["x"]
    assert_equal -1, position["y"]
  end


  def test_rover_move_fo
    @rover = Rover.new(0,0,"O")
    @rover.commands(["f"])
    position = @rover.position
    assert_equal 1, position["x"]
    assert_equal 0, position["y"]
  end

  def test_rover_move_fs
    @rover = Rover.new(0,0,"S")
    @rover.commands(["f"])
    position = @rover.position
    assert_equal 0, position["x"]
    assert_equal -1, position["y"]
  end

  def test_rover_move_fw
    @rover = Rover.new(0,0,"W")
    @rover.commands(["f"])
    position = @rover.position
    assert_equal -1, position["x"]
    assert_equal 0, position["y"]
  end





end