class Orientation
  attr_reader :name
  attr_reader :x
  attr_reader :y

  def initialize(name)
    @x = 0
    @y = 0
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
  
  def rotate(direction)
    #l,r
    #evtl zustandsautomat %4 (1234)
  end

end
