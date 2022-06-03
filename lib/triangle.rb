class Triangle
  # write code here

  def initialize(side1, side2, side3)
    @s1 = side1
    @s2 = side2
    @s3 = side3
  end

  def kind
    if is_valid?
      if @s1 == @s2 && @s2 == @s3
        return :equilateral
      elsif @s1 == @s2 || @s2 == @s3 || @s1 == @s3
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end

  def is_valid?
    @s1 > 0 && @s2 > 0 && @s3 > 0 && (@s1 + @s2 > @s3) && (@s1 + @s3 > @s2) && (@s2 + @s3 > @s1)
  end

  class TriangleError < StandardError
    # triangle error code
    def message
      "This is not a valid triangle."
    end
  end
end
