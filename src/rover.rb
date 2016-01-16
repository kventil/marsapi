require_relative "./orientation"

class Rover
  attr_reader :position
  attr_reader :orientation

  def initialize(x,y,o)
    @position = Hash["x", x, "y", y] #evtl. obj
    @orientation = Orientation.new(o)
  end

  #set new orientation
  def rotate(rotation)
    case rotation
    when "N","O","S","W"
      @orientation.rotate(rotation)
    else
      # TODO: Exception
    end
  end

  #set new position based on orientation and direction
  def move(direction)
    d = 0
    if direction == "f"
      d = 1
    elsif direction == "b"
      d = -1
    else
      # TODO: Exception
    end
    @position["x"] += @orientation.x * d
    @position["y"] += @orientation.y * d
  end


  #accepts list of commands and executes them
  def commands(commands)
    direction = 0
    commands.each{
      |command|
      case command
      when "f","b"
        move(command)
      when "l","r"
        rotate(command)
      else
        # TODO: Exception
      end
    }
  end
end