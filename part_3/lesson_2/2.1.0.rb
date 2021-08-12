# frozen_string_literal: true

class Vector
  attr_accessor :x1, :y1, :x2, :y2

  def initialize(x1, y1, x2, y2)
    @x1 = x1
    @y1 = y1
    @x2 = x2
    @y2 = y2
  end

  def distance
    Math.sqrt((x2 - x1)**2 + (y2 - y1)**2)
  end
end

class Vector
  class Point
    attr_accessor :x, :y

    def initialize(x:, y:)
      @x = x
      @y = y
    end
  end
end

vector = Vector.new(4, 2, -1, -2)
puts vector.distance
