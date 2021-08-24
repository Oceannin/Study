# frozen_string_literal: true

class Cube
  attr_accessor :x, :y, :z, :size

  @@list = {}

  def self.instance(x, y, z, size)
    key = [x, y, z, size]
    instance = @@list[key]
    unless instance
      @@list[key] = new(x, y, z, size)
      instance = @@list[key]
    end
    instance
  end

  def initialize(x, y, z, size)
    @x = x
    @y = y
    @z = z
    @size = size
  end

  def volume
    size**3
  end

  private_class_method :new
end

fst = Cube.instance(1, 1, 1, 3)
snd = Cube.instance(1, 1, 1, 3)
thd = Cube.instance(0, 0, 0, 3)
p fst
p snd
p thd
puts fst.volume
