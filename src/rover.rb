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
    directionModifier = 0
    if direction == "f"
      directionModifier = 1
    elsif direction == "b"
      directionModifier = -1
    else
      # TODO: Exception
    end
    @position["x"] += @orientation.x * directionModifier
    @position["y"] += @orientation.y * directionModifier
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
