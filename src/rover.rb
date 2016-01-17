require_relative "./orientation"

class Rover
  attr_reader :planetSize
  attr_reader :position
  attr_reader :orientation

  def initialize(x,y,orientation,planetSize = 5)
    @position = Hash["x", x, "y", y] #evtl. obj
    @orientation = Orientation.new(orientation)
    @planetSize = planetSize
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
    #using % to create two quotient rings (restklassenringe) x,y as spheric coordinate-system
    @position["x"] = (@position["x"] + @orientation.x * directionModifier) % @planetSize
    @position["y"] = (@position["y"] + @orientation.y * directionModifier) % @planetSize
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
