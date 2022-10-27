class Triangle
  # write code here
  def initialize(length, width, height)
    @sides = [length, width, height]
end
def kind
  if valid_triangle?
    if @sides.uniq.count == 1
      :equilateral
      elsif @sides.uniq.count == 2
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end
  class TriangleError < StandardError
    def message
      "you must give valid sides of a triangle!"
    end
  end

  private
  def valid_triangle?
    @sides.each {|side| side > 0} && @sides.sort[0] + @sides.sort[1] > @sides.sort[2]
  end
end

