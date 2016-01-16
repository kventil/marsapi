class Orientation
  attr_reader :name
  attr_reader :x
  attr_reader :y

  def initialize(name)
    set(name)
  end

  def set(name)
    case name
    when "N"
      @x = 0
      @y = 1
    when "O"
      @x = 1
      @y = 0
    when "S"
      @x = 0
      @y = -1
    when "W"
      @x = -1
      @y = 0
    else
      #raise "Unknown Orientation"
    end
    @name = name
  end

  #sets the new direction an array and % as a simple state-enumerator
  def rotate(direction)
    #possible states
    orientations = ["N","O","S","W"]
    currentOrientation = orientations.index(@name)
    case direction
    when "l"
      newOrientation = (currentOrientation - 1)%4
      set(orientations[newOrientation])
    when "r"
      newOrientation = (currentOrientation + 1)%4
      set(orientations[newOrientation])
    else
      # TODO: Exception
    end

  end


end
