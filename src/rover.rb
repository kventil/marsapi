class Rover
  @position
  @orientation

  def initialize(x,y,o)
    @position = [x,y]
    @orientation = o
  end

  def getPosition()
    return @x,@y,@o
  end

  def move(commands)
    
  end
end
