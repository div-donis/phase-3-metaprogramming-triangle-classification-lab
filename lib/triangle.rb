class Triangle
  attr_accessor :x, :y, :z
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end
  def kind
    if x > 0 && y > 0 && z > 00 && (x + y > z  || x + z > y || y + z > x)
      if x == y && y == z
      :equilateral
      elsif x == y && y != z || x == z && z !=y || y == z && z != x
        :isosceles
      else
        :scalene
      end  
    else
      begin
        raise TriangleError
      end
    end
  end
  class TriangleError < StandardError
    def message
      "error"
    end
  end
end
