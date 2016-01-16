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
      @orientation.rotate(rotation)
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
      case command #movements
      when "f","b"
        move(command)
      when "l","r" #rotations
        rotate(command)
      else #illegal commands
        # TODO: Exception
      end
    }
  end
end
