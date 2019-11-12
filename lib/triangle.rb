class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  class TriangleError < StandardError; end
  
  def kind 
    #if side1 + side2 <= side3 || side2 + side3 <= side1 || side3 + side1 <= side2
     #raise TriangleError
    if side1 == side2 && side3 == side2 && side1 == side3
     :equilateral
    elsif side1 == side2 || side1 == side3 || side2 == side3
     :isosceles
    elsif
     :scalene
    else
     raise TriangleError
    end
  end
end