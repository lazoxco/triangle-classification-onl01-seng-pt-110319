class Triangle
  # write code here
  attr_accessor :side_1, :side_2, :side_3 
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def kind
    
    if @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0 
      raise TriangleError
      # why does it have to be less than or equal?
    elsif @side_1 + @side_2 <= @side_3 || @side_1 + @side_3 <= @side_2 || @side_2 + @side_3 <= @side_1 
      raise TriangleError
    end
    
    if @side_1 == @side_2 && @side_1 == @side_3 
      :equilateral
    elsif @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
      :isosceles 
    else 
      :scalene
    end 
  end
  
  class TriangleError < StandardError
    
  end
end
