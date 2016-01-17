require_relative "../src/rover.rb"
require "minitest/autorun"
require 'minitest/pride'


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
    assert_equal @rover.planetSize - 1, position["y"]
  end

  def test_rover_rotate_l
    @rover = Rover.new(0,0,"N")
    @rover.commands(["l"])
    position = @rover.orientation
    assert_equal "W", @rover.orientation.name
  end

  def test_rover_rotate_r
    @rover = Rover.new(0,0,"N")
    @rover.commands(["r"])
    position = @rover.orientation
    assert_equal "E", @rover.orientation.name
  end


  def test_rover_move_fe
    @rover = Rover.new(0,0,"E")
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
    assert_equal @rover.planetSize - 1, position["y"]
  end

  def test_rover_move_fw
    @rover = Rover.new(0,0,"W")
    @rover.commands(["f"])
    position = @rover.position
    assert_equal @rover.planetSize - 1, position["x"]
    assert_equal 0, position["y"]
  end

  def test_rover_move_multiple_f
    @rover = Rover.new(0,0,"W")
    @rover.commands(["f","b","f","b"])
    position = @rover.position
    assert_equal 0, position["x"]
    assert_equal 0, position["y"]
  end

  def test_rover_move_circle
    @rover = Rover.new(0,0,"W")
    @rover.commands(["r","f","r","f","r","f","r","f"])
    position = @rover.position
    assert_equal 0, position["x"]
    assert_equal 0, position["y"]
    assert_equal "W", @rover.orientation.name
  end

  def test_rover_planet_size
    @rover = Rover.new(0,0,"N",2)
    @rover.commands(["f","f"])
    position = @rover.position
    assert_equal 0, position["x"]
    assert_equal 0, position["y"]
    assert_equal "N", @rover.orientation.name
  end

end
