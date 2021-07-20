# frozen_string_literal: true

require 'set'

class Toy
  attr_reader :teddy_bear, :ball, :cube

  class Teddy_bear
    def initialize(teddy_bear)
      @teddy_bear = teddy_bear
    end
  end

  class Ball
    def initialize(ball)
      @ball = ball
    end
  end

  class Cube
    def initialize(cube)
      @cube = cube
    end
  end
  @@toys = Set.new
  @@toys << self

  def delete
    @@toys.delete(self)
  end

  def self.count
    @@toys.size
  end
end
